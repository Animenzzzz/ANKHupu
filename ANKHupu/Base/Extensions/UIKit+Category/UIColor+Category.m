//
//  UIColor+Category.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/15.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "UIColor+Category.h"

@implementation UIColor (Category)

+ (CGFloat)colorComponentFrom: (NSString *)string start: (NSUInteger)start length: (NSUInteger)length {
    NSString *substring = [string substringWithRange: NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

+ (UIColor *)colorWithHexString:(NSString *)hexString {
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 1];
            green = [self colorComponentFrom: colorString start: 1 length: 1];
            blue  = [self colorComponentFrom: colorString start: 2 length: 1];
            break;
        case 4: // #ARGB
            alpha = [self colorComponentFrom: colorString start: 0 length: 1];
            red   = [self colorComponentFrom: colorString start: 1 length: 1];
            green = [self colorComponentFrom: colorString start: 2 length: 1];
            blue  = [self colorComponentFrom: colorString start: 3 length: 1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 2];
            green = [self colorComponentFrom: colorString start: 2 length: 2];
            blue  = [self colorComponentFrom: colorString start: 4 length: 2];
            break;
        case 8: // #AARRGGBB
            alpha = [self colorComponentFrom: colorString start: 0 length: 2];
            red   = [self colorComponentFrom: colorString start: 2 length: 2];
            green = [self colorComponentFrom: colorString start: 4 length: 2];
            blue  = [self colorComponentFrom: colorString start: 6 length: 2];
            break;
        default:
            return nil;
    }
    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

+ (UIColor *)ank_ARGB:(UInt32)argb
{
    CGFloat alpha = (argb & 0xFF000000) == 0 ? 1.0 : (argb >> 24) / 255.0;
    CGFloat red = ((argb & 0x00FF0000) >> 16) / 255.0;
    CGFloat green = ((argb & 0x0000FF00) >> 8) / 255.0;
    CGFloat blue = (argb & 0x000000FF) / 255.0;;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)colorWithRGB:(NSUInteger)rgb {
    
    return [UIColor colorWithRGB:rgb alpha:1.0];
}

+ (UIColor *)colorWithARGB:(NSUInteger)argb {
    
    // == 0是特殊处理兼容没有填最高两位的情况？
    CGFloat alpha = (argb & 0xFF000000) == 0 ? 1.0 : (CGFloat)(argb >> 24) / 255.0;
    
    return [UIColor colorWithRGB:argb alpha:alpha];
}

+ (UIColor *)colorWithRGB:(NSUInteger)rgb alpha:(CGFloat)alpha {
    
    CGFloat red = (CGFloat)((rgb & 0x00FF0000) >> 16) / 255.0;
    CGFloat green = (CGFloat)((rgb & 0x0000FF00) >> 8) / 255.0;
    CGFloat blue = (CGFloat)(rgb & 0x000000FF) / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

- (UIColor *)blendWithColor:(UIColor*)color alpha:(CGFloat)alpha {
    alpha = MIN( 1.0, MAX( 0.0, alpha ) );
    CGFloat beta = 1.0 - alpha;
    CGFloat r1, g1, b1, a1, r2, g2, b2, a2;
    [self getRed:&r1 green:&g1 blue:&b1 alpha:&a1];
    [color getRed:&r2 green:&g2 blue:&b2 alpha:&a2];
    CGFloat red     = r1 * beta + r2 * alpha;
    CGFloat green   = g1 * beta + g2 * alpha;
    CGFloat blue    = b1 * beta + b2 * alpha;
    CGFloat alpha2   = a1 * beta + a2 * alpha;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha2];
}

- (NSString *)toARGBHexString {
    CGColorSpaceModel colorSpace = CGColorSpaceGetModel(CGColorGetColorSpace(self.CGColor));
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    
    CGFloat r = 0, g = 0, b = 0, a = 0;
    
    if (colorSpace == kCGColorSpaceModelMonochrome) {
        r = components[0];
        g = components[0];
        b = components[0];
        a = components[1];
    }
    else if (colorSpace == kCGColorSpaceModelRGB) {
        r = components[0];
        g = components[1];
        b = components[2];
        a = components[3];
    }
    
    return [NSString stringWithFormat:@"#%02lX%02lX%02lX%02lX",
            lroundf(a * 255),
            lroundf(r * 255),
            lroundf(g * 255),
            lroundf(b * 255)
            ];
}

@end
