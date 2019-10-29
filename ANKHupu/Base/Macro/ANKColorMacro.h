//
//  ANKColorMacro.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/24.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#ifndef ANKColorMacro_h
#define ANKColorMacro_h
#import "UIColor+Category.h"
//分割线颜色
#define kSeperatLineColor           [UIColor colorWithHexString:@"eaeaea"]
//tableview灰色背景y颜色
#define kGrayBackGroundColor        [UIColor colorWithHexString:@"eaeaea"]
//cell新闻选中灰色
#define kCellSelGrayColor           [UIColor colorWithHexString:@"BFBFBF"]

// 评论 引用的蓝色 姓名 颜色
#define kBlueLinkColor              [UIColor colorWithHexString:@"2B6EE9"]

//随机颜色
#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))


#define NAV_TITLE_DEFAUL       @"Animenzzz"
#define NAV_TITLE_COLOR_DEFAUL [UIColor whiteColor]

#endif /* ANKColorMacro_h */
