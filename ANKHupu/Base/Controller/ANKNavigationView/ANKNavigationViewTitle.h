//
//  ANKNavigationViewTitle.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//


#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN


@protocol ANKNavigationViewTitleDelegate <NSObject>

- (void)backClick;
- (void)shareClick;

@end

@interface ANKNavigationViewTitle : UIView

@property (nonatomic, weak) id<ANKNavigationViewTitleDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
