//
//  UIView+Skeleton.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Skeleton)

@property (nonatomic, readonly, strong) UIView *skeletonContainer;

- (void)beginSkeleton;

- (void)endSkeleton;


@end

NS_ASSUME_NONNULL_END
