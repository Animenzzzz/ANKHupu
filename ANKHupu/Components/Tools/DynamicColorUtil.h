//
//  DynamicColorUtil.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^DynamicColor)(UIColor * _Nullable color);

NS_ASSUME_NONNULL_BEGIN

@interface DynamicColorUtil : NSObject

// 新闻tableview cell 列表的背景颜色
+ (void)cellBackGroundColor: (DynamicColor) dynamicColor;

// 新闻tableview cell 标题的背景颜色
+ (void)cellTitleBackGroundColor: (DynamicColor) dynamicColor;

// 新闻tableview cell 标题_选中_背景颜色
+ (void)cellTitleSelBackGroundColor: (DynamicColor) dynamicColor;

// 新闻tableview cell 间隔线颜色
+ (void)cellSeperatLineColor: (DynamicColor) dynamicColor;

@end

NS_ASSUME_NONNULL_END
