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

+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont*)font lineSpacing:(CGFloat)lineSpace;

+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font;

/**
 设置文本,并指定行间距
 
 @param text 文本内容
 @param lineSpacing 行间距
 */
-(void)setText:(NSString*)text lineSpacing:(CGFloat)lineSpacing;

@end

NS_ASSUME_NONNULL_END
