//
//  ANKWebView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/23.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKWebView.h"


@interface ANKWebView ()<WKNavigationDelegate>

@end


@implementation ANKWebView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.navigationDelegate = self;
        self.scrollView.scrollEnabled = NO;
    }
    
    
    return self;
}


- (void)loadHTMLString:(NSString *)html{
    
    NSString *fullHtml = [NSString stringWithFormat:@"\
                          <html>\
                          <head>\
                          <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'>\
                          </head>\
                          <body style='-webkit-text-size-adjust: 130%%;'>\
                          <script type='text/javascript'>\
                          window.onload = function(){\
                          var $img = document.getElementsByTagName('img');\
                          for(var p in  $img){\
                          $img[p].style.width = '100%%';\
                          $img[p].style.height ='50%%'\
                          }\
                          }\
                          </script>\
                          %@\
                          </body>\
                          </html>\
                          ",html];
    
    [self loadHTMLString:fullHtml baseURL:nil];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    
    
    [self evaluateJavaScript:@"document.body.offsetHeight" completionHandler:^(id _Nullable result, NSError * _Nullable error) {
        
        if ([self.delegate respondsToSelector:@selector(webViewDidFinishLoadWithSelfHeight:)]) {
            [self.delegate webViewDidFinishLoadWithSelfHeight:700];
        }
    }];
    
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"");
}

@end
