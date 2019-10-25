//
//  SkeletonLayoutProtocol.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class SkeletonView;

@protocol SkeletonLayoutProtocol <NSObject>

@required

- (NSArray<SkeletonView *> *)skeletonLayout;

@optional

- (UIColor *)skeletonBackgroundColor;

@end

NS_ASSUME_NONNULL_END
