//
//  ANKWebView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/23.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKWebView.h"
#import "DynamicColorUtil.h"

@interface ANKWebView ()<WKNavigationDelegate>

@end


@implementation ANKWebView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.navigationDelegate = self;
        self.scrollView.scrollEnabled = NO;

        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dynamicColorDidChange:) name:DynamicColorDidChangeNotification object:nil];
    }
    
    
    return self;
}

- (void)loadHTMLString:(NSString *)html{
    
    NSString *fullHtml = [NSString stringWithFormat:@"\
                          <html>\
                          <head>\
                          <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'>\
                          </head>\
                          <body style='-webkit-text-size-adjust: 110%%;'>\
                          <script type='text/javascript'>\
                          window.onload = function(){\
                          var $img = document.getElementsByTagName('img');\
                          for(var p in  $img){\
                          $img[p].style.width = '100%%';\
                          $img[p].style.height = 'auto' \
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
            [self.delegate webViewDidFinishLoadWithSelfHeight:[result doubleValue]];
        }
    }];
    
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"");
}


- (void)dynamicColorDidChange:(NSNotification *)sender{
    NSString *model = (NSString *)sender.object;
    
    if ([model isEqualToString:DynamicDarkNotificationInfo]) {
        [self evaluateJavaScript:@"document.body.style.backgroundColor=\"#2B2C2D\";document.getElementsByTagName('body')[0].style.webkitTextFillColor= '#6F7070'" completionHandler:nil];
        self.scrollView.backgroundColor = [UIColor colorWithHexString:@"2B2C2D"];
    }else{
        self.scrollView.backgroundColor = [UIColor whiteColor];
        [self evaluateJavaScript:@"document.body.style.backgroundColor=\"#ffffff\";document.getElementsByTagName('body')[0].style.webkitTextFillColor= '#2B2C2D'" completionHandler:nil];
    }
}

@end
