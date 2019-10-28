//
//  DynamicColorUtil.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

// 新闻tableview cell 列表的背景颜色
#define kCellBackGroundLightColor [UIColor whiteColor]
#define kCellBackGroundDarkColor  [UIColor colorWithHexString:@"2B2C2D"]

// 新闻tableview cell 标题的背景颜色
#define kCellTitleBackGroundLightColor [UIColor colorWithHexString:@"2B2C2D"]
#define kCellTitleBackGroundDarkColor  [UIColor colorWithHexString:@"6F7070"]

// 新闻tableview cell 标题_选中_背景颜色
#define kCellTitleSelBackGroundLightColor [UIColor colorWithHexString:@"BFBFBF"]
#define kCellTitleSelBackGroundDarkColor  [UIColor colorWithHexString:@"44494C"]

#import "DynamicColorUtil.h"

@implementation DynamicColorUtil

+ (void)cellBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.1, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kCellBackGroundDarkColor;
            }
            return kCellBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kCellBackGroundLightColor);
    }
    
}

+ (void)cellTitleBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kCellTitleBackGroundDarkColor;
            }
            return kCellTitleBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kCellTitleBackGroundLightColor);
    }
    
}

+ (void)cellTitleSelBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kCellTitleSelBackGroundDarkColor;
            }
            return kCellTitleSelBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kCellTitleSelBackGroundLightColor);
    }
    
}

+ (void)cellSeperatLineColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kCellTitleBackGroundDarkColor;
            }
            return kSeperatLineColor;
        }]);
    }else{
        dynamicColor(kSeperatLineColor);
    }
}

@end
