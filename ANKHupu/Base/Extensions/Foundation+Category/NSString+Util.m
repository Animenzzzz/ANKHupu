//
//  NSString+Util.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/27.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NSString+Util.h"

@implementation NSString (Util)

+ (NSString *)filterH5:(NSString *)h5Stri{
    NSString *tagString = h5Stri;
    NSScanner * scanner = [NSScanner scannerWithString:tagString];
    NSString * text = nil;
    while([scanner isAtEnd]==NO)
    {
        //找到标签的起始位置
        [scanner scanUpToString:@"<" intoString:nil];
        //找到标签的结束位置
        [scanner scanUpToString:@">" intoString:&text];
        //替换字符
        tagString = [tagString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>",text] withString:@""];
    }
    
    return tagString;
 
}

@end
