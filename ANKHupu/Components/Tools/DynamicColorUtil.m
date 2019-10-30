//
//  DynamicColorUtil.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

// 背景颜色
#define kBackGroundLightColor [UIColor whiteColor]
#define kBackGroundDarkColor  [UIColor colorWithHexString:@"1E1F20"]

// cell背景颜色
#define kCellBackGroundLightColor [UIColor whiteColor]
#define kCellBackGroundDarkColor  [UIColor colorWithHexString:@"2B2C2D"]

// 标题的背景颜色
#define kTitleBackGroundLightColor [UIColor colorWithHexString:@"2B2C2D"]
#define kTitleBackGroundDarkColor  [UIColor colorWithHexString:@"6F7070"]

// 标题_选中_背景颜色
#define kTitleSelectBackGroundLightColor [UIColor colorWithHexString:@"BFBFBF"]
#define kTitleSelectBackGroundDarkColor  [UIColor colorWithHexString:@"44494C"]

// 导航栏红色背景
#define kRedBackGroundLightColor   [UIColor colorWithHexString:@"C01E2F"]
#define kRedBackGroundDarkColor    [UIColor colorWithHexString:@"96242C"]

// 间隔线颜色
#define kSeperatLineLightColor           [UIColor colorWithHexString:@"eaeaea"]
#define kSeperatLineDarkColor            [UIColor colorWithHexString:@"262728"]

// 这些评论亮了  sectionhead的背景
#define kSectionBackGroundLightColor   [UIColor colorWithHexString:@"FBFAFB"]
#define kSectionBackGroundDarkColor    [UIColor colorWithHexString:@"1E1F20"]

// 引用评论的背景
#define kCommeLinkBackGroundLightColor   [UIColor colorWithHexString:@"F2F2F7"]
#define kCommeLinkBackGroundDarkColor    [UIColor colorWithHexString:@"303132"]

#import "DynamicColorUtil.h"

@implementation DynamicColorUtil

+ (void)backGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.1, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kBackGroundDarkColor;
            }
            return kBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kBackGroundLightColor);
    }
    
}

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

+ (void)titleBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kTitleBackGroundDarkColor;
            }
            return kTitleBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kTitleBackGroundLightColor);
    }
    
}

+ (void)titleSelectBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kTitleSelectBackGroundDarkColor;
            }
            return kTitleSelectBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kTitleSelectBackGroundLightColor);
    }
    
}

+ (void)seperatLineColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kSeperatLineDarkColor;
            }
            return kSeperatLineLightColor;
        }]);
    }else{
        dynamicColor(kSeperatLineLightColor);
    }
}

+ (void)redBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                [[NSNotificationCenter defaultCenter] postNotificationName:DynamicColorDidChangeNotification object:DynamicDarkNotificationInfo];
                return kRedBackGroundDarkColor;
            }
            [[NSNotificationCenter defaultCenter] postNotificationName:DynamicColorDidChangeNotification object:DynamicLightNotificationInfo];
            return kRedBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kRedBackGroundLightColor);
    }
}

+ (void)sectionBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kSectionBackGroundDarkColor;
            }
            return kSectionBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kSectionBackGroundLightColor);
    }
}

+ (void)commentLinkBackGroundColor: (DynamicColor) dynamicColor{
    if (@available(iOS 13.0, *)){
        dynamicColor([UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return kCommeLinkBackGroundDarkColor;
            }
            return kCommeLinkBackGroundLightColor;
        }]);
    }else{
        dynamicColor(kCommeLinkBackGroundLightColor);
    }
}

@end
