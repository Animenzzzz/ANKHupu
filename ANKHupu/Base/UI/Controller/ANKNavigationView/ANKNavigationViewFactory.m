//
//  ANKNavigationViewFactory.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKNavigationViewFactory.h"

@implementation ANKNavigationViewFactory

+ (ANKNavigationView *)navigationViewFactory:(NavigationViewType)type{
    
    ANKNavigationView *view = nil;
    switch (type) {
        case NavigationViewSearch:
            view = [[[UINib nibWithNibName:@"ANKNavigationViewSearch" bundle:nil] instantiateWithOwner:nil options:nil] firstObject];
            break;
        case NavigationViewTitle:
            view = [[ANKNavigationView alloc] init];
            break;
        case NavigationViewCrystal:
            view = [[ANKNavigationView alloc] init];
            break;
        default:
            break;
    }
    
    return view;
}

@end
