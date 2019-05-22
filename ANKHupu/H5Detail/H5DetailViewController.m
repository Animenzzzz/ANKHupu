//
//  H5DetailViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/22.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailViewController.h"
#import "Masonry.h"
#import "MJRefresh.h"
#import "SVProgressHUD.h"
#import "ANKReachabilityManager.h"
#import "ANKHttpServer.h"
@interface H5DetailViewController ()

@end

@implementation H5DetailViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController setNavigationBarHidden:NO];
    
    [self initViews];
    [self laySubView];
    [self requestData];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}


#pragma mark - Init（initVars initViews）
- (void)initViews{

}
#pragma mark - Layout Subviews（layoutSubview）

- (void)laySubView{

}

#pragma mark - Network request

- (void)requestData {

//    [SVProgressHUD showWithStatus:@"加载中..."];
    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
        [SVProgressHUD dismissWithDelay:2.0f];
        return;
    }
    
}

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
#pragma mark UITableViewDelegate

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
