//
//  UIView+Skeleton.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "UIView+Skeleton.h"
#import "SkeletonMacro.h"
#import "SkeletonView.h"
#import "SkeletonLayoutProtocol.h"
#import <objc/runtime.h>

static void * kSkeletonContainerKey = &kSkeletonContainerKey;

@implementation UIView (Skeleton)

- (void)setSkeletonContainer:(UIView *)skeletonContainer {
    skeletonContainer.frame = self.bounds;
    
//    UIColor *color = SkeletonColorFromRGBV(248.0); //这是原来的颜色。。。
    UIColor *color = [UIColor clearColor];
    
    if ([self respondsToSelector:@selector(skeletonBackgroundColor)]) {
        
        color = [(UIView<SkeletonLayoutProtocol> *)self skeletonBackgroundColor];
        
    }
    
    skeletonContainer.backgroundColor = color;
    
    [self addSubview:skeletonContainer];
    
    objc_setAssociatedObject(self, kSkeletonContainerKey, skeletonContainer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

- (UIView *)skeletonContainer {
    return objc_getAssociatedObject(self, kSkeletonContainerKey);
}

- (void)beginSkeleton {
    if ([self conformsToProtocol:@protocol(SkeletonLayoutProtocol)] == NO) {
        return;
    }
    
    if ([self respondsToSelector:@selector(skeletonLayout)] == NO) {
        return;
    }
    
    self.userInteractionEnabled = NO;
    
    [self buildContainer];
    
    [self bringSubviewToFront:self.skeletonContainer];
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    NSArray<SkeletonView *> *somoViews = [(UIView<SkeletonLayoutProtocol> *)self skeletonLayout];
    
    [self buildSkeletonSubViews:somoViews];
}

- (void)buildContainer {
    [self clear];
    self.skeletonContainer = [UIView new];
}

- (void)buildSkeletonSubViews:(NSArray<SkeletonView *> *)views {
    for (SkeletonView *view in views) {
        [self.skeletonContainer addSubview:view];
    }
}

- (void)endSkeleton {
    if (!self.skeletonContainer) {
        return;
    }
    self.userInteractionEnabled = YES;
    [self clear];
}

- (void)clear {
    [self.skeletonContainer removeFromSuperview];
    self.skeletonContainer = nil;
}


@end
