//
//  ANKViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKViewController.h"
#import "Masonry.h"


@interface ANKViewController ()



@end

@implementation ANKViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:_navigationView];
    
    [_navigationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view);
        make.top.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.mas_equalTo(kNavigationBarHeight);
    }];

}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

#pragma mark - Init（initVars initViews）

- (instancetype)initWithNavigationViewType:(NavigationViewType)naviType{
    self = [super init];
    if (self) {
        _navigationView = [ANKNavigationViewFactory navigationViewFactory:naviType];
    }
    return self;
}

#pragma mark - Layout Subviews（layoutSubview）
- (void)loadView{
    [super loadView];
    
}
#pragma mark - Network request

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
#pragma mark UITableViewDelegate

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
