//
//  UILabel+AutoFit.h
//  TZGame
//
//  Created by Animenzzz on 2018/9/29.
//  Copyright © 2018 TZGame. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (AutoFit)

+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont*)font;

+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
