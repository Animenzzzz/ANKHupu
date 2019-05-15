//
//  UIColor+Category.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/15.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Category)

+ (UIColor *)colorWithHexString:(NSString *)hexString;

+ (UIColor *)ank_ARGB:(UInt32)argb;

+ (UIColor *)colorWithRGB:(NSUInteger)rgb;

+ (UIColor *)colorWithRGB:(NSUInteger)rgb alpha:(CGFloat)alpha;

+ (UIColor *)colorWithARGB:(NSUInteger)argb;

- (UIColor *)blendWithColor:(UIColor*)color alpha:(CGFloat)alpha;

- (NSString *)toARGBHexString;

@end

NS_ASSUME_NONNULL_END
