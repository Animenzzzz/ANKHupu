//
//  HotListViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewController.h"
#import "ANKHttpServer.h"
#import "HotListModel.h"
#import "Masonry.h"
#import "MJRefresh.h"
#import "SVProgressHUD.h"
#import "ANKReachabilityManager.h"
#import "HotListViewCell.h"
@interface HotListViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation HotListViewController{
    NSMutableArray *_hotListDataArray;
}


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initViews];
    [self laySubView];
    [self requesData];
}


#pragma mark - Init（initVars initViews）

- (void)initViews{
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(dropDownRequesData)];
    
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.backgroundColor = kGrayBackGroundColor;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = [UIColor whiteColor];//消除间隔线
        UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 5)];
        _tableView.tableHeaderView = headView;//为了消除cell顶部的空间
    }
    
    return _tableView;
}
#pragma mark - Layout Subviews（layoutSubview）

- (void)laySubView{
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kScrollTagHeight);
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
    }];
    
}
#pragma mark - Network request

- (void)requesData{
    
    [SVProgressHUD showWithStatus:@"加载中..."];
    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
        [SVProgressHUD dismissWithDelay:2.0f];
        return;
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        @weakify(self)
        [ANKHttpServer getHotListWithSuccesBlock:^(NSDictionary * _Nonnull data) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [SVProgressHUD dismiss];
                @strongify(self)
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    HotListResponeModel *model = [HotListResponeModel yy_modelWithDictionary:data];
                    self->_hotListDataArray = [model.result.hotList mutableCopy];
                    [self.tableView reloadData];
                }
            });

        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
            NSLog(@"");
        }];
    });
    
    
}

//下拉刷新
- (void)dropDownRequesData{
    
    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
        [self.tableView.mj_header endRefreshing];
        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
        [SVProgressHUD dismissWithDelay:2.0f];
        return;
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        @weakify(self)
        [ANKHttpServer getHotListWithSuccesBlock:^(NSDictionary * _Nonnull data) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView.mj_header endRefreshing];
                @strongify(self)
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    HotListResponeModel *model = [HotListResponeModel yy_modelWithDictionary:data];
                    self->_hotListDataArray = [model.result.hotList mutableCopy];
                    [self.tableView reloadData];
                }
            });
            
        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
            NSLog(@"");
        }];
    });
}

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _hotListDataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HotListModel *model = [_hotListDataArray objectAtIndex:indexPath.row];
    
    HotListViewCell *cell = [[HotListViewCell alloc] init];
    [cell bindWithHotListModel:model];
    return cell;
}
#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (!_hotListDataArray.count) {
        return 10;
    }
    return [HotListModel caculateHeightWithHotInfoModel:[_hotListDataArray objectAtIndex:indexPath.row]];
    
}

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
