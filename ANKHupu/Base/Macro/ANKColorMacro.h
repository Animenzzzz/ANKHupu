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
#define kSeperatLineColor [UIColor                                            colorWithHexString:@"eaeaea"]
//tableview灰色背景y颜色
#define kGrayBackGroundColor [UIColor                                         colorWithHexString:@"eaeaea"]

//随机颜色
#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#define kSearchRedBackGroundColor [UIColor                                         colorWithHexString:@"C01E2F"]
#endif /* ANKColorMacro_h */
