//
//  NBAViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NBAViewController.h"
#import "ANKHttpServer.h"
#import "NBAModel.h"
#import "NBANewsCell.h"
#import "NBATopicViewController.h"
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
    CGFloat heigh = [UILabel getHeightByWidth:cell.titleWidth.constant title:model.title font:cell.titleLab.font lineSpacing:5.0];
    cell.titleHeight.constant = heigh;
    cell.newsTitle = model.title;
    NSArray *arr = [model.img componentsSeparatedByString:@"?"];
    [cell.newsImg sd_setImageWithURL:[NSURL URLWithString:arr[0]] placeholderImage:[ResUtil imageNamed:kPlaceHoldImg] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
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
    return 92;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NBAData *model = [self.NBADataArray objectAtIndex:indexPath.row];
    H5DetailViewController *detail = [H5DetailViewController new];
    detail.controllerTitle = @"Detail";
    
    //详情页属性参数
    // 1.网络请求参数  params
    // 2.请求         URL
    // 3.新闻类型     type
    
    detail.type = model.type;
    
    NSString *url = @"";
    
    if (model.type == NewsTypeNormal) {//1
        
        url = [NSString stringWithFormat:@"%@&nid=%@&leaguesEn=nba",kNews_Type1_FullPath,[NSString stringWithFormat:@"%@",model.nid]];
        detail.commentURL = [NSString stringWithFormat:@"http://games.mobileapi.hupu.com/3/7.3.12/news/getCommentH5?offline=json&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&webp=0&nid=%@",model.nid];
        
    }else if(model.type == NewsTypeSpecial){//2
        
        url = [NSString stringWithFormat:@"%@&nid=%@",kNBA_DetailH5_Type2,[NSString stringWithFormat:@"%@",model.nid]];
        NBATopicViewController *viewC = [NBATopicViewController new];
        viewC.controllerTitle = @"fasdfasdf";
        viewC.requestURL = url;
        [self.navigationController pushViewController:viewC animated:YES];
        return;
        
        
    }else if (model.type == NewsTypePic){//3
        
    }else if (model.type == NewsTypeTopic){//5
        
        NSArray *array = [model.link componentsSeparatedByString:@"/"];
        NSString *tmp = [array objectAtIndex:array.count - 1];
        NSArray *arraytmp = [tmp componentsSeparatedByString:@"?"];
        NSString *linkID = arraytmp[0];
        
        url = [NSString stringWithFormat:@"%@%@%@",kNBA_DetailH5_Type5_1,linkID,kNAB_DetailH5_Type5_2];
        detail.commentURL = [NSString stringWithFormat:@"https://bbs.mobileapi.hupu.com/3/7.3.12/threads/getsThreadPostList?offline=json&page=1&fid=1048&nopic=0&night=0&order=asc&entrance=6&show_type=default&sort=&postAuthorPuid=&maxpid=&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&webp=0&tid=%@",linkID];
    }

    detail.requestURL = url;
    
    [self.navigationController pushViewController:detail animated:YES];
    
   
}

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
