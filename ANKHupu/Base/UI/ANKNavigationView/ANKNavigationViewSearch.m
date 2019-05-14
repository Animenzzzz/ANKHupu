//
//  ANKNavigationViewSearch.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKNavigationViewSearch.h"

@interface ANKNavigationViewSearch()

@property (weak, nonatomic) IBOutlet UIView *searchView;

@end

@implementation ANKNavigationViewSearch

- (void)awakeFromNib{
    [super awakeFromNib];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(searchViewTap)];
    self.searchView.userInteractionEnabled = YES;
    [self.searchView addGestureRecognizer:tap];

}


- (void)searchViewTap{
    [self super_searchStatuBarClick];
}

- (IBAction)commentClick:(id)sender {
    [self super_issueClick];
}

@end
