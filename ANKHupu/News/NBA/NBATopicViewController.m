//
//  NBATopicViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/24.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NBATopicViewController.h"
#import "ANKHttpServer.h"
#import "NBATopicModel.h"
#import "NBANewsCell.h"
static NSString *kNBATopicCellID = @"NBATopicCellID";

#define kBackImageHeight 175
#define kOtherHeaderHeight 40

@interface NBATopicViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong) NBATopicModel *dataModel;
@property (nonatomic, strong) UIView *tableHeaderView;
@property(nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIImageView *headerImageView;

@end

@implementation NBATopicViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.navigationController.navigationBar.translucent = NO;//半透明属性设置为no,  fix:返回的控制器导航栏是红色，消除视图切换影响
    
    [self initViews];
    [self laySubView];
    [self requestData];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:NO];
}


#pragma mark - Init（initVars initViews）
- (void)initViews{
    
    if (@available(iOS 11.0, *)) {
        self.tableView.estimatedRowHeight           = 0;
        self.tableView.estimatedSectionFooterHeight = 0;
        self.tableView.estimatedSectionHeaderHeight = 0;
        self.tableView.contentInsetAdjustmentBehavior= UIScrollViewContentInsetAdjustmentNever;
        
//        self.edgesForExtendedLayout = UIRectEdgeNone;
//        self.extendedLayoutIncludesOpaqueBars = NO;
//        self.modalPresentationCapturesStatusBarAppearance = NO;
//        self.automaticallyAdjustsScrollViewInsets=NO;
    }
//    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(pullUpLoadMoreData)];
    

    self.headerImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.tableHeaderView addSubview:self.headerImageView];
//    self.tableView.tableHeaderView = self.tableHeaderView;


}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = kSeperatLineColor;//间隔线
        //        UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
        //        _tableView.tableHeaderView = headView;//为了消除cell顶部的空间
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kNBATopicCellID];
        
        
        _tableView.showsVerticalScrollIndicator=NO;
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
    }
    
    return _tableView;
}

-(UIImageView *)headerImageView{
    if (!_headerImageView) {
        _headerImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, kBackImageHeight)];
        _headerImageView.autoresizingMask=UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        _headerImageView.clipsToBounds=YES;
        _headerImageView.contentMode=UIViewContentModeScaleAspectFill;
    }
    return _headerImageView;
}

-(UIView *)tableHeaderView{
    if (!_tableHeaderView) {
        _tableHeaderView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,SCREEN_WIDTH, kBackImageHeight)];
    }
    return _tableHeaderView;
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
        @weakify(self)
        
        [ANKHttpServer getNewsDetailWithParams:nil url:self.requestURL succesBlock:^(NSDictionary * _Nonnull data) {
            [SVProgressHUD dismiss];
            @strongify(self)
            dispatch_async(dispatch_get_main_queue(),^{
                
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    
                    self.dataModel = [[NBATopicModel alloc] initWithDictionary:data];
                    
                    NSArray *arr = [self.dataModel.result.imgM componentsSeparatedByString:@"?"];
                    [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:arr[0]] placeholderImage:[ResUtil imageNamed:kPlaceHoldImg] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                        self.headerImageView.image = image;
                    }];
                    
                    UILabel *tlt = [UILabel new];
                    tlt.text = self.dataModel.result.title;
                    tlt.textAlignment = NSTextAlignmentCenter;
                    tlt.font = [UIFont systemFontOfSize:16];
                    tlt.textColor = [UIColor whiteColor];
                    [self.headerImageView addSubview:tlt];
                    [tlt mas_makeConstraints:^(MASConstraintMaker *make) {
                        make.width.mas_equalTo(SCREEN_WIDTH - 10);
                        make.height.mas_equalTo(30);
                        make.centerX.mas_equalTo(self.headerImageView.mas_centerX);
                        make.bottom.mas_equalTo(-30);
                    }];
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
    }
    
    NBATopicGroup *item = [self.dataModel.result.groups objectAtIndex:section-1];
    return item.news.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if (!self.dataModel) {
        return 0;
    }
    
    return self.dataModel.result.groups.count+1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kNBATopicCellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kNBATopicCellID];
    }
    NBATopicGroup *item = [self.dataModel.result.groups objectAtIndex:indexPath.section-1];
    NBATopicNew *newsItem = [item.news objectAtIndex:indexPath.row];
    
    
//    NBANewsCell *cell = [[[UINib nibWithNibName:@"NBANewsCell" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
//    CGFloat heigh = [UILabel getHeightByWidth:cell.titleWidth.constant title:model.title font:cell.titleLab.font];
//    cell.titleHeight.constant = heigh;
//    cell.newsTitle = model.title;
//    NSArray *arr = [model.img componentsSeparatedByString:@"?"];
//    [cell.newsImg sd_setImageWithURL:[NSURL URLWithString:arr[0]] placeholderImage:[ResUtil imageNamed:kPlaceHoldImg] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//        cell.newsImg.image = image;
//    }];
//
//    cell.readLab.text = model.replies;
//    CGFloat width = [UILabel getWidthWithTitle:cell.readLab.text font:cell.readLab.font];
//    cell.readLabWidth.constant = width;
//
//    if ([model.lights isEqualToString:@"0"]) {
//        cell.lightImg.hidden = YES;
//        cell.lightLab.hidden = YES;
//    }else{
//        cell.lightLab.text = model.lights;
//        CGFloat width = [UILabel getWidthWithTitle:cell.lightLab.text font:cell.lightLab.font];
//        cell.lightWidth.constant = width;
//    }
    
    return cell;
}
#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return kBackImageHeight;
    }else{
        return kOtherHeaderHeight;
    }
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    if (section == 0) {
        return self.tableHeaderView;
    }else{

        UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, kOtherHeaderHeight)];
        headerView.backgroundColor = kGrayBackGroundColor;
        
        
        NBATopicGroup *item = [self.dataModel.result.groups objectAtIndex:section-1];
    
        UILabel *titLab = [[UILabel alloc] initWithFrame:CGRectMake(3, 0, SCREEN_WIDTH, kOtherHeaderHeight)];
     
        NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:item.title];
        [str addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0,1)];
        
        UIFont *font1 = [UIFont systemFontOfSize:15];
        UIFont *font2 = [UIFont systemFontOfSize:17];
        [str addAttribute:NSFontAttributeName value:font1 range:NSMakeRange(1,item.title.length-1)];
        [str addAttribute:NSFontAttributeName value:font2 range:NSMakeRange(0,1)];
        
        titLab.attributedText = str;
        
        [headerView addSubview:titLab];
        
        return headerView;
    }
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGPoint offset = scrollView.contentOffset;
    if (offset.y < 0) {
        CGRect rect =self.tableHeaderView.frame;
        rect.origin.y = offset.y;
        rect.size.height =CGRectGetHeight(rect)-offset.y;
        self.headerImageView.frame = rect;
        self.tableHeaderView.clipsToBounds=NO;
    }
}

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
