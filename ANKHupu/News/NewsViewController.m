//
//  NewsViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsViewController.h"
#import "ANKNavigationViewSearch.h"

@interface NewsViewController ()<ANKNavigationViewSearchDelegate>

@end

@implementation NewsViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationView.searchDelegate = self;
}


#pragma mark - Init（initVars initViews）
#pragma mark - Layout Subviews（layoutSubview）
#pragma mark - Network request

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
#pragma mark UITableViewDelegate

#pragma mark - Custom protocol   ANKNavigationViewSearchDelegate

- (void)searchStatuBarClick{
    NSLog(@"");
}
- (void)issueClick{
    NSLog(@"");
    
}
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
