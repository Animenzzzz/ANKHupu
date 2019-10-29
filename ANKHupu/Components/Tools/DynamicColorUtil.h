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
#define DynamicDarkNotificationInfo  @"Dark"
#define DynamicLightNotificationInfo @"Light"
NS_ASSUME_NONNULL_BEGIN

@interface DynamicColorUtil : NSObject

// 背景颜色
+ (void)backGroundColor: (DynamicColor) dynamicColor;

// 标题的背景颜色
+ (void)titleBackGroundColor: (DynamicColor) dynamicColor;

// 标题_选中_背景颜色
+ (void)titleSelectBackGroundColor: (DynamicColor) dynamicColor;

// 间隔线颜色
+ (void)seperatLineColor: (DynamicColor) dynamicColor;

// 导航栏红色背景
+ (void)redBackGroundColor: (DynamicColor) dynamicColor;

// 这些评论亮了  sectionhead的背景
+ (void)sectionBackGroundColor: (DynamicColor) dynamicColor;

@end

NS_ASSUME_NONNULL_END
