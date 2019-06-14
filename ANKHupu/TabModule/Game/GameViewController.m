//
//  GameViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "GameViewController.h"
#import "ANKHttpServer.h"
#import "MatchesRootModel.h"
#import "GameCell.h"

#define TableViewSectionHeaderHeight 30
#define TableViewSectionFooterHeight 25

@interface GameViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong) NSMutableArray *seletTagArray;

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataList;

@end

@implementation GameViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initViews];
    [self laySubView];
    [self requestData];
}


#pragma mark - Init（initVars initViews）
- (void)initViews{
    
    if (@available(iOS 11.0, *)) {
        self.tableView.contentInsetAdjustmentBehavior= UIScrollViewContentInsetAdjustmentNever;
    }
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(dropDownRequesData)];
    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(pullUpLoadMoreData)];
    
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.backgroundColor = kGrayBackGroundColor;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = kSeperatLineColor;//间隔线
    }
    
    return _tableView;
}
#pragma mark - Layout Subviews（layoutSubview）
- (void)laySubView{
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kNavigationBarHeight+44);
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
    }];
}

- (NSMutableArray *)seletTagArray{
    if (!_seletTagArray) {
        _seletTagArray = [[NSMutableArray alloc] initWithObjects:@"推荐",@"NBA",nil];
    }
    return _seletTagArray;
}
#pragma mark - Network request

- (void)requestData {
    
    [SVProgressHUD showWithStatus:@"加载中..."];
    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
        [SVProgressHUD dismissWithDelay:2.0f];
        return;
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        @weakify(self)
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        [params setValue:@(0) forKey:@"preload"];
        
        NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"URLInfo" ofType:@"plist"];
        NSDictionary *dataDic = [NSDictionary dictionaryWithContentsOfFile:plistPath];
        NSDictionary *tagDic = [dataDic objectForKey:@"NBA"];
        NSString *url = [tagDic objectForKey:@"urlMatchs"];
        
        if ([url length]) {
            [ANKHttpServer getGameListWithURL:url params:params succesBlock:^(NSDictionary * _Nonnull data) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [SVProgressHUD dismiss];
                    @strongify(self)
                    NSDictionary *dic =data[@"error"];
                    if (dic) {//请求报错
                        NSString *errorInfo = [dic objectForKey:@"text"];
                        [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                        [SVProgressHUD dismissWithDelay:2.0f];
                    }else{
                        MatchesRootModel *normalModel = [[MatchesRootModel alloc] initWithDictionary:data];
                        self.dataList = [[[normalModel.result.games reverseObjectEnumerator] allObjects] mutableCopy];
                        [self.tableView reloadData];
                        NSLog(@"");
                    }
                });
            } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
                NSLog(@"");
            }];
        }else{
            [SVProgressHUD showInfoWithStatus:@"暂无URL"];
        }
        
        
    });
}

//下拉刷新
- (void)dropDownRequesData{
    
//    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
//        [self.tableView.mj_header endRefreshing];
//        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
//        [SVProgressHUD dismissWithDelay:2.0f];
//        return;
//    }
//
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
//        @weakify(self)
//
//        NSMutableDictionary *params = [NSMutableDictionary dictionary];
//        [params setValue:@"0" forKey:@"lastTid"];
//
//
//        [ANKHttpServer getBBSListWithParams:params succesBlock:^(NSDictionary * _Nonnull data) {
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [self.tableView.mj_header endRefreshing];
//                [SVProgressHUD dismiss];
//                @strongify(self)
//                NSDictionary *dic =data[@"error"];
//                if (dic) {//请求报错
//                    NSString *errorInfo = [dic objectForKey:@"text"];
//                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
//                    [SVProgressHUD dismissWithDelay:2.0f];
//                }else if([data allKeys].count == 0){
//                    [SVProgressHUD showInfoWithStatus:@"请求不到数据"];
//                }else{
//
//                    if ([data objectForKey:@"text"]) {
//                        [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",[data objectForKey:@"text"]]];
//                        [SVProgressHUD dismissWithDelay:2.0f];
//                        return ;
//                    }
//
//                    BBSRootModel *mode = [[BBSRootModel alloc] initWithDictionary:data];
//                    self.dataList = [mode.result.data mutableCopy];
//                    [self.tableView reloadData];
//                }
//            });
//        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
//            NSLog(@"");
//        }];
//
//    });
}

//上拉加载更多
- (void)pullUpLoadMoreData{
    
//    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
//        [self.tableView.mj_footer endRefreshing];
//        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
//        [SVProgressHUD dismissWithDelay:2.0f];
//        return;
//    }
//
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
//        @weakify(self)
//
//
//
//        BBSData *bbsData = [self.dataList objectAtIndex:self.dataList.count - 1];
//
//        NSMutableDictionary *params = [NSMutableDictionary dictionary];
//        [params setValue:bbsData.tid forKey:@"lastTid"];
//
//        [ANKHttpServer getBBSListWithParams:params succesBlock:^(NSDictionary * _Nonnull data) {
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [self.tableView.mj_footer endRefreshing];
//                @strongify(self)
//                NSDictionary *dic =data[@"error"];
//                if (dic) {//请求报错
//                    NSString *errorInfo = [dic objectForKey:@"text"];
//                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
//                    [SVProgressHUD dismissWithDelay:2.0f];
//                }else if([data allKeys].count == 0){
//                    [SVProgressHUD showInfoWithStatus:@"请求不到数据"];
//                }else{
//
//                    if ([data objectForKey:@"text"]) {
//                        [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",[data objectForKey:@"text"]]];
//                        [SVProgressHUD dismissWithDelay:2.0f];
//                        return ;
//                    }
//
//                    BBSRootModel *mode = [[BBSRootModel alloc] initWithDictionary:data];
//                    self.dataList = [[self.dataList arrayByAddingObjectsFromArray:[mode.result.data mutableCopy]] mutableCopy];
//                    [self.tableView reloadData];
//                }
//            });
//        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
//            NSLog(@"");
//        }];
//    });
}


#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (!self.dataList.count) {
        return 0;
    }
    MatchesGame *game = [self.dataList objectAtIndex:section];
    return game.data.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.dataList.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GameCell *cell = (GameCell *)[[[UINib nibWithNibName:@"GameCell" bundle:nil] instantiateWithOwner:self options:nil] firstObject];

    MatchesGame *game = [self.dataList objectAtIndex:indexPath.section];
    [cell cellBindWithModel:[game.data objectAtIndex:indexPath.row]];
    
    return cell;
}
#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GameCell *cell = (GameCell *)[[[UINib nibWithNibName:@"GameCell" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    
    return cell.height;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return TableViewSectionHeaderHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return TableViewSectionFooterHeight;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (!self.dataList.count) {
        return nil;
    }
    MatchesGame *game = [self.dataList objectAtIndex:section];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, TableViewSectionHeaderHeight)];
    view.backgroundColor = [UIColor colorWithHexString:@"F6F6F6"];
    
    UILabel *la = [UILabel new];
    la.text = game.dateBlock;
    la.font = [UIFont systemFontOfSize:15];
    [view addSubview:la];
    [la mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(20);
        make.centerY.mas_equalTo(view.mas_centerY);
    }];
    
    UIView *topLine = [UIView new];
    topLine.backgroundColor = [UIColor colorWithHexString:@"DADADA"];
    [view addSubview:topLine];
    [topLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.width.mas_equalTo(view.mas_width);
        make.height.mas_equalTo(1);
        make.top.mas_equalTo(0);
    }];
    
    UIView *btmLine = [UIView new];
    btmLine.backgroundColor = [UIColor colorWithHexString:@"DADADA"];
    [view addSubview:btmLine];
    [btmLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.width.mas_equalTo(view.mas_width);
        make.height.mas_equalTo(1);
        make.bottom.mas_equalTo(0);
    }];
    
    
    return view;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, TableViewSectionFooterHeight)];
    view.backgroundColor = kSeperatLineColor;
    
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //    [self.navigationController pushViewController:detail animated:YES];
    
    
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    
    return self.seletTagArray.count;
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
    
    return [self.seletTagArray objectAtIndex:index];
}



- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    
    return [[UIViewController alloc] init];
}

- (CGFloat)menuView:(WMMenuView *)menu widthForItemAtIndex:(NSInteger)index {
    CGFloat width = [super menuView:menu widthForItemAtIndex:index];
    return width + 20;
}


- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
    CGFloat leftMargin = self.showOnNavigationBar ? 50 : 0;
    CGFloat originY = 64;
    CGRect rec = CGRectMake(leftMargin, originY, self.view.frame.size.width - 2*leftMargin, 44);
    return rec;
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
    
    CGFloat originY = 64;
    
    CGRect rec = CGRectMake(0, originY, self.view.frame.size.width, self.view.frame.size.height - originY);
    
    return rec;
}
@end
