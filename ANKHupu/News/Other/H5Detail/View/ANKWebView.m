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
//        [DynamicColorUtil cellBackGroundColor:^(UIColor * _Nullable color) {
//            self.scrollView.backgroundColor = color;
//        }];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dynamicColorDidChange:) name:DynamicColorDidChangeNotification object:nil];
    }
    
    
    return self;
}

- (void)dynamicColorDidChange:(NSNotification *)sender{
    NSString *model = (NSString *)sender.object;
    if ([model isEqualToString:@"Dark"]) {
        [self evaluateJavaScript:@"document.body.style.backgroundColor=\"#2B2C2D\"" completionHandler:nil];
        self.scrollView.backgroundColor = [UIColor colorWithHexString:@"2B2C2D"];
    }else{
        self.scrollView.backgroundColor = [UIColor whiteColor];
        [self evaluateJavaScript:@"document.body.style.backgroundColor=\"#ffffff\"" completionHandler:nil];
    }
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
    
//    [DynamicColorUtil cellBackGroundColor:^(UIColor * _Nullable color) {
//        CGFloat r, g, b, a;
//        [color getRed:&r green:&g blue:&b alpha:&a];
//        int rgb = (int)(r * 255.0f)<<16 | (int)(g * 255.0f)<<8 | (int)(b * 255.0f)<<0;
//        NSString *hexString =  [NSString stringWithFormat:@"%06x", rgb];
//        [self evaluateJavaScript:[NSString stringWithFormat:@"document.body.style.backgroundColor=\"#%@\"",hexString] completionHandler:nil];
//    }];
    
    [self evaluateJavaScript:@"document.body.offsetHeight" completionHandler:^(id _Nullable result, NSError * _Nullable error) {
        
        if ([self.delegate respondsToSelector:@selector(webViewDidFinishLoadWithSelfHeight:)]) {
            [self.delegate webViewDidFinishLoadWithSelfHeight:[result doubleValue]];
        }
    }];
    
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"");
}

@end
