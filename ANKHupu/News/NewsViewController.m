//
//  NewsViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsViewController.h"
#import "ANKNavigationViewSearch.h"
#import "ANKTagScroll.h"
#import "Masonry.h"

@interface NewsViewController ()<ANKNavigationViewSearchDelegate>

@property (nonatomic, strong) ANKTagScroll *scrollView;

@end

@implementation NewsViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationView.searchDelegate = self;
    
//    _scrollView = [[[UINib nibWithNibName:@"ANKTagScroll" bundle:[NSBundle mainBundle]] instantiateWithOwner:self options:nil]firstObject];
//    _scrollView.moreListEnable = YES;
//    _scrollView.selectDataArray = @[@"fas",@"fasdfdsafasdf",@"flasiu",@"a"];
//    [self.view addSubview:_scrollView];
//    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(kNavigationBarHeight);
//        make.left.equalTo(self.view);
//        make.right.equalTo(self.view);
//        make.height.mas_equalTo(34);
//    }];

}


#pragma mark - Init（initVars initViews）

- (void)loadView{
    
    [super loadView];
    _scrollView = [[[UINib nibWithNibName:@"ANKTagScroll" bundle:[NSBundle mainBundle]] instantiateWithOwner:self options:nil]firstObject];
    _scrollView.moreListEnable = YES;
    _scrollView.selectDataArray = @[@"fas",@"fasdfdsafasdf",@"flasiu",@"a"];
    [self.view addSubview:_scrollView];
    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kNavigationBarHeight);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.mas_equalTo(34);
    }];
}
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
