//
//  ANKNavigationView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKNavigationView.h"

@implementation ANKNavigationView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        if (self.naviType == NavigationViewSearch) {
            [self laySearchType];
        }else if (self.naviType == NavigationViewTitle){
            [self layTitleType];
        }else if (self.naviType == NavigationViewCrystal){
            [self layCrystalType];
        }
        
        self.backgroundColor = [UIColor redColor];
    }
    
    return self;
}

- (void)laySearchType{
    
}

- (void)layTitleType{
    
}

- (void)layCrystalType{
    
}


@end
