//
//  DynamicColorUtil.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^DynamicColor)(UIColor * _Nullable color);

#define DynamicColorDidChangeNotification @"DynamicColorDidChangeNotification"

NS_ASSUME_NONNULL_BEGIN

@interface DynamicColorUtil : NSObject

// 新闻tableview cell 列表的背景颜色
+ (void)backGroundColor: (DynamicColor) dynamicColor;

// 新闻tableview cell 标题的背景颜色
+ (void)titleBackGroundColor: (DynamicColor) dynamicColor;

// 新闻tableview cell 标题_选中_背景颜色
+ (void)titleSelectBackGroundColor: (DynamicColor) dynamicColor;

// 新闻tableview cell 间隔线颜色
+ (void)cellSeperatLineColor: (DynamicColor) dynamicColor;

// 导航栏红色背景
+ (void)redBackGroundColor: (DynamicColor) dynamicColor;

@end

NS_ASSUME_NONNULL_END
