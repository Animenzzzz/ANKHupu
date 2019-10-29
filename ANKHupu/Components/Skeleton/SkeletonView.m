//
//  SkeletonView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "SkeletonView.h"
#import "SkeletonMacro.h"

static const CGFloat kShadowWidth = 60.0f;


@interface SkeletonView ()

@property (nonatomic, strong) CAGradientLayer *skeletonLayer;

@end

@implementation SkeletonView

- (instancetype)initWithFrame:(CGRect)frame skeletonColor:(UIColor *)color {
    return [[[self class] alloc] initWithFrame:frame
                                 skeletonColor:color style:SkeletonAnimationStyleSolid];
}

- (instancetype)initWithFrame:(CGRect)frame skeletonColor:(UIColor *)color style:(SkeletonAnimationStyle)style {
    if (self = [super initWithFrame:frame]) {
        [self _setupWithColor:color animationStyle:style];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        BOOL isDark = NO;
        if (@available(iOS 13.0, *)) {
            isDark = [UITraitCollection currentTraitCollection].userInterfaceStyle == UIUserInterfaceStyleDark? YES: NO;
        }
        UIColor *color = isDark ? [UIColor colorWithHexString:@"4C4F4F"] : SkeletonColorFromRGBV(234);
        [self _setupWithColor:color animationStyle:SkeletonAnimationStyleGradientHorizontal];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

- (void)setAnimationStyle:(SkeletonAnimationStyle)animationStyle {
    if (_animationStyle != animationStyle) {
        _animationStyle = animationStyle;
        [self.skeletonLayer removeFromSuperlayer];
        [self _animate];
    }
}

- (void)_setupWithColor:(UIColor *)color animationStyle:(SkeletonAnimationStyle)style {
    _skeletonColor = color;
    _animationStyle = style;
    self.backgroundColor = self.skeletonColor;
    self.layer.masksToBounds = YES;
    [self _animate];
}

- (void)_animate {
    CGSize size = self.bounds.size;
    switch (self.animationStyle) {
        case SkeletonAnimationStyleSolid:{
            CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"opacity"];
            basic.fromValue = @1.;
            basic.toValue = @0.5;
            basic.duration = 2.;
            basic.repeatCount = INFINITY;
            basic.autoreverses = YES;
            basic.removedOnCompletion = NO;
            [self.layer addAnimation:basic forKey:basic.keyPath];
            break;
        }
        case SkeletonAnimationStyleGradientHorizontal:{
            CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"position"];
            basic.fromValue = [NSValue valueWithCGPoint:CGPointMake(-kShadowWidth/2., size.height/2.)];
            basic.toValue = [NSValue valueWithCGPoint:CGPointMake(size.width+kShadowWidth/2., size.height/2.)];
            basic.duration = 1.5;
            basic.repeatCount = INFINITY;
            basic.removedOnCompletion = NO;
            self.skeletonLayer.frame = CGRectMake(0, 0, kShadowWidth, size.height);
            self.skeletonLayer.startPoint = CGPointMake(0, 0.5);
            self.skeletonLayer.endPoint = CGPointMake(1, 0.5);
            [self.skeletonLayer addAnimation:basic forKey:basic.keyPath];
            [self.layer addSublayer:self.skeletonLayer];
            break;
        }
        case SkeletonAnimationStyleGradientVertical:{
            CGFloat height = size.height/2. > 40. ? : 40.;
            CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"position"];
            basic.fromValue = [NSValue valueWithCGPoint:CGPointMake(size.width/2., -height)];
            basic.toValue = [NSValue valueWithCGPoint:CGPointMake(size.width/2., size.height+height)];
            basic.duration = 1.5;
            basic.repeatCount = INFINITY;
            basic.removedOnCompletion = NO;
            self.skeletonLayer.frame = CGRectMake(0,0,size.width,height);
            self.skeletonLayer.startPoint = CGPointMake(0.5, 0);
            self.skeletonLayer.endPoint = CGPointMake(0.5, 1);
            [self.skeletonLayer addAnimation:basic forKey:basic.keyPath];
            [self.layer addSublayer:self.skeletonLayer];
            break;
        }
        case SkeletonAnimationStyleOblique:{
            CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"position"];
            basic.fromValue = [NSValue valueWithCGPoint:CGPointMake(-kShadowWidth, size.height/2.)];
            basic.toValue = [NSValue valueWithCGPoint:CGPointMake(size.width+kShadowWidth, size.height/2.)];
            basic.duration = 1.5;
            basic.repeatCount = INFINITY;
            basic.removedOnCompletion = NO;
            self.skeletonLayer.affineTransform = CGAffineTransformMakeRotation(0.4);
            self.skeletonLayer.frame = CGRectMake(0, 0, kShadowWidth, size.height+200);
            self.skeletonLayer.startPoint = CGPointMake(0, 0.5);
            self.skeletonLayer.endPoint = CGPointMake(1, 0.5);
            [self.skeletonLayer addAnimation:basic forKey:basic.keyPath];
            [self.layer addSublayer:self.skeletonLayer];
            break;
        }
        default:
            break;
    }
}

- (CAGradientLayer *)skeletonLayer {
    if (!_skeletonLayer) {
        _skeletonLayer = [CAGradientLayer layer];
        UIColor *color = [UIColor whiteColor];
        _skeletonLayer.colors = @[(id)[color colorWithAlphaComponent:0.03].CGColor,
                              (id)[color colorWithAlphaComponent:0.09].CGColor,
                              (id)[color colorWithAlphaComponent:0.15].CGColor,
                              (id)[color colorWithAlphaComponent:0.21].CGColor,
                              (id)[color colorWithAlphaComponent:0.27].CGColor,
                              (id)[color colorWithAlphaComponent:0.30].CGColor,
                              (id)[color colorWithAlphaComponent:0.27].CGColor,
                              (id)[color colorWithAlphaComponent:0.21].CGColor,
                              (id)[color colorWithAlphaComponent:0.15].CGColor,
                              (id)[color colorWithAlphaComponent:0.09].CGColor,
                              (id)[color colorWithAlphaComponent:0.03].CGColor];
    }
    return _skeletonLayer;
}

@end
