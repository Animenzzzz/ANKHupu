//
//  ResUtil.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ResUtil.h"

@implementation ResUtil

static NSString* const kClarity2x = @"@2x";
static NSString* const kClarity3x = @"@3x";

+ (UIImage *)imageNamed:(NSString *)name
{
    static dispatch_once_t onceToken;
    static NSString* clarity;
    dispatch_once(&onceToken, ^{
        clarity = kClarity2x;
        CGFloat scale = [UIScreen mainScreen].scale;
        if (scale > 2.0) {
            clarity = kClarity3x;
        }
        ANKLog(@"图片比例 : %@", clarity);
    });
    NSBundle *bundle = [NSBundle mainBundle];
    if (bundle && name)
    {
        NSString* dir = [bundle resourcePath];
        NSString* fileName = [NSString stringWithFormat:@"%@%@.png", name, clarity];
        NSString* path = [dir stringByAppendingPathComponent:fileName];
        return [UIImage imageWithContentsOfFile: path];
    }
    return nil;
}

@end
