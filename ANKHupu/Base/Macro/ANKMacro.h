//
//  ANKMacro.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#ifndef ANKMacro_h
#define ANKMacro_h


#define SCREEN_WIDTH (MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))
#define SCREEN_HEIGHT (MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))

#define k_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define k_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

//分割线颜色
#define kSeperatLineColor [UIColor colorWithHexString:@"eaeaea"]

//导航栏高度
#define kNavigationBarHeight 64.0

//导航栏下方 滚动条的字体大小
#define kScrollTitleSize_NO_Select 15.0
#define kScrollTitleSize_Select 15.0 //TODO...选中大小就改变
//导航栏下方 滚动条的高度
#define kScrollTagHeight 44.0

#endif /* ANKMacro_h */
