//
//  ANKNavigationView.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//带返回和分享按钮的navigationView的相应代理
@protocol ANKNavigationViewTitleDelegate <NSObject>

- (void)backClick;
- (void)shareClick;

@end

//带搜索框的navigationView的相应代理
@protocol ANKNavigationViewSearchDelegate <NSObject>

- (void)searchStatuBarClick;
- (void)issueClick;

@end

@interface ANKNavigationView : UIView

@property (nonatomic, weak) id<ANKNavigationViewSearchDelegate>searchDelegate;
@property (nonatomic, weak) id<ANKNavigationViewTitleDelegate>titleDelegate;

- (void)super_searchStatuBarClick;
- (void)super_issueClick;

- (void)super_backClick;
- (void)super_shareClick;

@end

NS_ASSUME_NONNULL_END
