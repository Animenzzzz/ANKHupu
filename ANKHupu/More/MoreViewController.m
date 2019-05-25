//
//  MoreViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "MoreViewController.h"
#import "Masonry.h"
#import "MJRefresh.h"
#import "SVProgressHUD.h"
#import "ANKReachabilityManager.h"
#import "ANKHttpServer.h"
#import "MoreControllCell.h"
#import "MoreTapHeaderView.h"
#import "MoreModel.h"
static NSString *kMoreCellID = @"MoreCellID";

@interface MoreViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) MoreTapHeaderView *headView;
@property(nonatomic, strong) MoreModel *dataModel;

@end

@implementation MoreViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initViews];
    [self laySubView];
    [self requestData];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}


#pragma mark - Init（initVars initViews）
- (void)initViews{

}


- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
//        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = [UIColor whiteColor];//间隔线
        [_tableView registerNib:[UINib nibWithNibName:@"MoreControllCell" bundle:nil] forCellReuseIdentifier:kMoreCellID];
        
        _tableView.tableHeaderView = self.headView;
        _tableView.sectionHeaderHeight = 10;

    }
    
    return _tableView;
}

- (MoreTapHeaderView *)headView{
    if (!_headView) {
        
        _headView = [[[UINib nibWithNibName:@"MoreTapHeaderView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    }
    
    return _headView;
}
#pragma mark - Layout Subviews（layoutSubview）

- (void)laySubView{

    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
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
        [SVProgressHUD dismiss];
        @weakify(self)
        [ANKHttpServer getMoreListWithSuccesBlock:^(NSDictionary * _Nonnull data) {
            @strongify(self)
            dispatch_async(dispatch_get_main_queue(),^{
                
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    self.dataModel = [[MoreModel alloc] initWithDictionary:data];
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
    if (!self.dataModel) {
        return 0;
    }
    if (section == 0) {
        return 0;
    }else if (section == 1){
        return self.dataModel.result.discovery.count;
    }else{
        return 3;
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MoreControllCell *cell = [tableView dequeueReusableCellWithIdentifier:kMoreCellID];
    if (!cell) {
        cell = [[MoreControllCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kMoreCellID];
    }
    
    if (indexPath.section!=2) {
        
        MoreDiscovery *disc = [self.dataModel.result.discovery objectAtIndex:indexPath.row];
        cell.cellTitle = disc.name;
        [cell.cellIcon sd_setImageWithURL:[NSURL URLWithString:disc.logo] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
            cell.cellIcon.image = image;
        }];
    }
    
    
    if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            cell.cellTitle = @"意见反馈";
            cell.cellIcon.image = [ResUtil imageNamed:@"left_set_ic"];
        }else if (indexPath.row == 1){
            cell.cellTitle = @"设置";
            cell.cellIcon.image = [ResUtil imageNamed:@"left_set_ic"];
        }else{
            cell.cellTitle = @"夜间模式";
            cell.cellIcon.image = [ResUtil imageNamed:@"left_set_ic"];
        }
    }
    
    
    return cell;
}
#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 54;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section!=0) {
        return 10;
    }
    
    return 0;
}

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
