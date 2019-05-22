//
//  NBAViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NBAViewController.h"
#import "Masonry.h"
#import "MJRefresh.h"
#import "SVProgressHUD.h"
#import "ANKReachabilityManager.h"
#import "ANKHttpServer.h"
#import "NBAModel.h"
#import "NBANewsCell.h"
#import "UILabel+AutoFit.h"
#import "SDWebImage.h"
#import "H5DetailViewController.h"
@interface NBAViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *NBADataArray;

@end

@implementation NBAViewController

static int pageNum = 0;
#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initViews];
    [self laySubView];
    [self requestData];
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
        _tableView.backgroundColor = kGrayBackGroundColor;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = kSeperatLineColor;//间隔线
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
        [params setValue:@(0) forKey:@"pre_count"];
        [params setValue:@"0" forKey:@"nid"];
        [ANKHttpServer getNBANewsWithParams:params succesBlock:^(NSDictionary * _Nonnull data) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [SVProgressHUD dismiss];
                @strongify(self)
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    NBAModel *nbaModel = [[NBAModel alloc] initWithDictionary:data];
                    self.NBADataArray = [nbaModel.result.data mutableCopy];
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
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        [params setValue:@(0) forKey:@"pre_count"];
        [params setValue:@"0" forKey:@"nid"];
        [ANKHttpServer getNBANewsWithParams:params succesBlock:^(NSDictionary * _Nonnull data) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView.mj_header endRefreshing];
                @strongify(self)
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    NBAModel *nbaModel = [[NBAModel alloc] initWithDictionary:data];
                    self.NBADataArray = [nbaModel.result.data mutableCopy];
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
        NBAData *model = [self.NBADataArray objectAtIndex:self.NBADataArray.count-1];
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        [params setValue:@(pageNum) forKey:@"pre_count"];
        [params setValue:model.nid forKey:@"nid"];
        [ANKHttpServer getNBANewsWithParams:params succesBlock:^(NSDictionary * _Nonnull data) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView.mj_footer endRefreshing];
                @strongify(self)
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    pageNum++;
                    NBAModel *nbaModel = [[NBAModel alloc] initWithDictionary:data];
                    self.NBADataArray = [[self.NBADataArray arrayByAddingObjectsFromArray:[nbaModel.result.data mutableCopy]] mutableCopy];
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
    
    return self.NBADataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NBAData *model = [self.NBADataArray objectAtIndex:indexPath.row];

    NBANewsCell *cell = [[[UINib nibWithNibName:@"NBANewsCell" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    CGFloat heigh = [UILabel getHeightByWidth:cell.titleWidth.constant title:model.title font:cell.titleLab.font];
    cell.titleHeight.constant = heigh;
    cell.newsTitle = model.title;
    NSArray *arr = [model.img componentsSeparatedByString:@"?"];
    [cell.newsImg sd_setImageWithURL:[NSURL URLWithString:arr[0]] placeholderImage:[ResUtil imageNamed:@"placehold_big"] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        cell.newsImg.image = image;
    }];
    
    cell.readLab.text = model.replies;
    CGFloat width = [UILabel getWidthWithTitle:cell.readLab.text font:cell.readLab.font];
    cell.readLabWidth.constant = width;
    
    if ([model.lights isEqualToString:@"0"]) {
        cell.lightImg.hidden = YES;
        cell.lightLab.hidden = YES;
    }else{
        cell.lightLab.text = model.lights;
        CGFloat width = [UILabel getWidthWithTitle:cell.lightLab.text font:cell.lightLab.font];
        cell.lightWidth.constant = width;
    }
    
    if (model.type != 2) {//专题
        cell.zhuntiLab.hidden = YES;
    }else{
        cell.zhuntiLab.textColor = [UIColor orangeColor];
        cell.zhuntiLab.layer.borderColor = [UIColor orangeColor].CGColor;
        cell.zhuntiLab.layer.borderWidth = 1.0;
    }
    
    if ([model.isTop isEqualToString:@"1"]) {//置顶
        cell.zhidingLab.layer.borderColor = [UIColor redColor].CGColor;
        cell.zhidingLab.layer.borderWidth = 1.0;
        if (model.type != 2){
            cell.zhidingTrailing.constant = 11;
        }
        
    }else{
        cell.zhidingLab.hidden = YES;
    }
    
    return cell;
}
#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (!self.hotListDataArray.count) {
//        return 10;
//    }
//    return [HotListModel caculateHeightWithHotInfoModel:[self.hotListDataArray objectAtIndex:indexPath.row]];
    return 92;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NBAData *model = [self.NBADataArray objectAtIndex:indexPath.row];
    H5DetailViewController *detail = [H5DetailViewController new];
    detail.nid = model.nid;
    detail.controllerTitle = @"Detail";
    [self.navigationController pushViewController:detail animated:YES];
    
   
}

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
