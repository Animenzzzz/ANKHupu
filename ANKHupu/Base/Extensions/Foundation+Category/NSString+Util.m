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

    if (h5Stri.length) {
        
        NSRegularExpression *regularExpretion=[NSRegularExpression regularExpressionWithPattern:@"<[^>]*>|\n" options:0 error:nil];
        tagString = [regularExpretion stringByReplacingMatchesInString:tagString options:NSMatchingReportProgress range:NSMakeRange(0, tagString.length) withTemplate:@""];
        tagString = [tagString stringByReplacingOccurrencesOfString:@" " withString:@""];
    }
    
    return tagString;
 
}

@end
