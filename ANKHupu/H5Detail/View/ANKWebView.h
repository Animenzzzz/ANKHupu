//
//  ANKWebView.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/23.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ANKWebViewDelegate <NSObject>

- (void)webViewDidFinishLoadWithSelfHeight:(CGFloat)height;

@end

@interface ANKWebView : WKWebView

- (instancetype)initWithFrame:(CGRect)frame;

- (void)loadHTMLString:(NSString *)html;

@property(nonatomic, weak) id<ANKWebViewDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
