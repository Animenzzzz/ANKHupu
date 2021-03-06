//
//  HotListViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsPhotosListController.h"
#import "ANKHttpServer.h"
#import "HotListModel.h"
#import "HotListViewModel.h"
#import "NewsPhotosCell.h"
#import "H5DetailViewController.h"
#import "DynamicColorUtil.h"
@interface NewsPhotosListController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *hotListDataArray;

@end

@implementation NewsPhotosListController{
//    NSMutableArray *_hotListDataArray;
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
    
    
    if (@available(iOS 11.0, *)) {
        self.tableView.estimatedRowHeight           = 0;
        self.tableView.estimatedSectionFooterHeight = 0;
        self.tableView.estimatedSectionHeaderHeight = 0;
        self.tableView.contentInsetAdjustmentBehavior= UIScrollViewContentInsetAdjustmentNever;
    }
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(dropDownRequesData)];
    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(pullUpLoadMoreData)];
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
//        _tableView.backgroundColor = kGrayBackGroundColor;
        __weak typeof(self)weakSelf = self;
        [DynamicColorUtil backGroundColor:^(UIColor * _Nullable color) {
            weakSelf.tableView.backgroundColor = color;
        }];
        _tableView.delegate = self;
        _tableView.dataSource = self;
//        _tableView.separatorColor = [UIColor whiteColor];//消除间隔线
        [DynamicColorUtil seperatLineColor:^(UIColor * _Nullable color) {
            weakSelf.tableView.separatorColor = color;
        }];
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
                    self.hotListDataArray = [model.result.hotList mutableCopy];
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
                    self.hotListDataArray = [NSMutableArray arrayWithArray:[model.result.hotList mutableCopy]];
                    [self.tableView reloadData];
                }
            });
            
        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
            NSLog(@"");
        }];
    });
}

//上拉加载更多
- (void)pullUpLoadMoreData{
    
    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
        [self.tableView.mj_footer endRefreshing];
        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
        [SVProgressHUD dismissWithDelay:2.0f];
        return;
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        @weakify(self)
        [ANKHttpServer getHotListWithSuccesBlock:^(NSDictionary * _Nonnull data) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView.mj_footer endRefreshing];
                @strongify(self)
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    HotListResponeModel *model = [HotListResponeModel yy_modelWithDictionary:data];
                    self.hotListDataArray = [[self.hotListDataArray arrayByAddingObjectsFromArray:[model.result.hotList mutableCopy]] mutableCopy];
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
    return self.hotListDataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HotListModel *model = [self.hotListDataArray objectAtIndex:indexPath.row];
    
    NewsPhotosCell *cell = [[[UINib nibWithNibName:@"NewsPhotosCell" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    [cell cellBindWithDataModel:model];
    return cell;
}
#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (!self.hotListDataArray.count) {
        return 10;
    }
    return [HotListViewModel calutaCellHeightWithModel:[self.hotListDataArray objectAtIndex:indexPath.row]];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    HotListModel *model = [self.hotListDataArray objectAtIndex:indexPath.row];
    NSArray *arr = [model.xid componentsSeparatedByString:@"t"];
    
    //TODO...还要加上亮点评论
    H5DetailViewController *deta = [H5DetailViewController new];
    deta.type = NewsTypePhotoReply;
    deta.requestURL = [NSString stringWithFormat:@"http://bbs.mobileapi.hupu.com/3/7.3.12/threads/%@?client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&time_zone=Asia%%2FShanghai&entrance=16&night=0&crt=1559289217&advId=E12875A5-1076-4C57-9488-B5311B604032&isScheme=1&clientId=30980511&sign=f75e1a13127af806c00810e2de271450&ft=18",arr[1]];
    deta.commentURL = [NSString stringWithFormat:@"https://bbs.mobileapi.hupu.com/3/7.3.12/threads/getsThreadPostList?offline=json&page=1&tid=%@&fid=34&nopic=0&night=0&order=asc&entrance=16&show_type=default&sort=&postAuthorPuid=&maxpid=&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&webp=0",arr[1]];
    
    [self.navigationController pushViewController:deta animated:YES];
    
}

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
