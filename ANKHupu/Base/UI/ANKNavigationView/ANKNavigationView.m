//
//  ANKNavigationView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKNavigationView.h"
#import "Masonry.h"

@implementation ANKNavigationView


- (void)super_searchStatuBarClick{
   
    if ([self.searchDelegate respondsToSelector:@selector(searchStatuBarClick)]) {
        [self.searchDelegate searchStatuBarClick];
    }
}

- (void)super_issueClick{
    if ([self.searchDelegate respondsToSelector:@selector(issueClick)]) {
        [self.searchDelegate issueClick];
    }
}

- (void)super_backClick{
    if ([self.titleDelegate respondsToSelector:@selector(backClick)]) {
        [self.titleDelegate backClick];
    }
}
- (void)super_shareClick{
    if ([self.titleDelegate respondsToSelector:@selector(shareClick)]) {
        [self.titleDelegate shareClick];
    }
}


@end
