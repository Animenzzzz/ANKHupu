//
//  SkeletonView.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SkeletonAnimationStyle) {
    SkeletonAnimationStyleSolid,
    SkeletonAnimationStyleGradientHorizontal,
    SkeletonAnimationStyleGradientVertical,
    SkeletonAnimationStyleOblique
};


NS_ASSUME_NONNULL_BEGIN

@interface SkeletonView : UIView

@property (nonatomic, strong) UIColor *skeletonColor;

@property (nonatomic, assign) SkeletonAnimationStyle animationStyle;

- (instancetype)initWithFrame:(CGRect)frame skeletonColor:(UIColor *)color;

- (instancetype)initWithFrame:(CGRect)frame skeletonColor:(UIColor *)color style:(SkeletonAnimationStyle)style;

@end

NS_ASSUME_NONNULL_END
