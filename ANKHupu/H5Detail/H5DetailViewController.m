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
#import "NewsDetailModel.h"
#import "UILabel+AutoFit.h"
#import "UIView+frame.h"
#import <WebKit/WebKit.h>
#import "SDWebImage.h"
#import "ANKWebView.h"

static NSString *kDetailTitleCellID = @"DetailTitleCellID";
static NSString *kDetailWebCellID = @"DetailWebCellID";
#define kNewsTitleToCellTop  5
#define kNewsTitleToCellLeft 15
#define kNewsTitleWidth (SCREEN_WIDTH - kNewsTitleToCellLeft*2)
#define kAddTimeToTile       10
#define kAddTimeHeight       10
#define kAddTimeToButtom 10

@interface H5DetailViewController ()<UITableViewDelegate,UITableViewDataSource,ANKWebViewDelegate>

@property(nonatomic, strong) NewsDetailModel *dataModel;
@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UILabel *newsTitleLab;
@property(nonatomic, strong) UILabel *addTimeLab;
@property(nonatomic, strong) ANKWebView *contentWebView;
@property(nonatomic, strong) UIImageView *newsImageView;
@property(nonatomic, assign) CGFloat webViewHeight;
@end

@implementation H5DetailViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;//半透明属性设置为no,  fix:返回的控制器导航栏是红色，消除视图切换影响
    self.webViewHeight = 0;
    [self initViews];
    [self laySubView];
    [self requestData];
    
    NSLog(@"test11分支");
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}


#pragma mark - Init（initVars initViews）
- (void)initViews{

  
    if (@available(iOS 11.0, *)) {
        self.tableView.estimatedRowHeight           = 0;
        self.tableView.estimatedSectionFooterHeight = 0;
        self.tableView.estimatedSectionHeaderHeight = 0;
        self.tableView.contentInsetAdjustmentBehavior= UIScrollViewContentInsetAdjustmentNever;
        
        
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.modalPresentationCapturesStatusBarAppearance = NO;
        self.automaticallyAdjustsScrollViewInsets=NO;
        
       
      
    }
    
    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(pullUpLoadMoreData)];
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
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kDetailTitleCellID];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kDetailWebCellID];
    }
    
    return _tableView;
}

- (UILabel *)newsTitleLab{
    if (!_newsTitleLab) {
        _newsTitleLab = [UILabel new];
        [_newsTitleLab setFont:[UIFont fontWithName:@"Helvetica-Bold" size:19]];
        _newsTitleLab.numberOfLines = 0;
    }
    return _newsTitleLab;
}

- (UILabel *)addTimeLab{
    if (!_addTimeLab) {
        _addTimeLab = [UILabel new];
        _addTimeLab.font = [UIFont systemFontOfSize:13];
        _addTimeLab.textColor = [UIColor grayColor];
    }
    return _addTimeLab;
}

- (UIImageView *)newsImageView{
    
    if (!_newsImageView) {
        _newsImageView = [UIImageView new];
        _newsImageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    
    return _newsImageView;
}

- (WKWebView *)contentWebView{
    if (!_contentWebView) {
        _contentWebView = [[ANKWebView alloc] initWithFrame:CGRectZero];
        _contentWebView.delegate = self;
    }
    return _contentWebView;
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
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        [params setValue:self.nid forKey:@"nid"];
        [ANKHttpServer getNBANewsDetailWithParams:params succesBlock:^(NSDictionary * _Nonnull data) {
            dispatch_async(dispatch_get_main_queue(), ^{
                @strongify(self)
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    
                    self.dataModel = [[NewsDetailModel alloc] initWithDictionary:data];
                    
                    [self.newsImageView sd_setImageWithURL:[NSURL URLWithString:self.dataModel.data.news.img] placeholderImage:[ResUtil imageNamed:@"placehold_big"] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                        self.newsImageView.image = image;
                    }];
            
                    [self.contentWebView loadHTMLString:self.dataModel.data.news.content];
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
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
//        @weakify(self)
//        NBAData *model = [self.NBADataArray objectAtIndex:self.NBADataArray.count-1];
//        NSMutableDictionary *params = [NSMutableDictionary dictionary];
//        [params setValue:@(pageNum) forKey:@"pre_count"];
//        [params setValue:model.nid forKey:@"nid"];
//        [ANKHttpServer getNBANewsWithParams:params succesBlock:^(NSDictionary * _Nonnull data) {
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [self.tableView.mj_footer endRefreshing];
//                @strongify(self)
//                NSDictionary *dic =data[@"error"];
//                if (dic) {//请求报错
//                    NSString *errorInfo = [dic objectForKey:@"text"];
//                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
//                    [SVProgressHUD dismissWithDelay:2.0f];
//                }else{
//                    pageNum++;
//                    NBAModel *nbaModel = [[NBAModel alloc] initWithDictionary:data];
//                    self.NBADataArray = [[self.NBADataArray arrayByAddingObjectsFromArray:[nbaModel.result.data mutableCopy]] mutableCopy];
//                    [self.tableView reloadData];
//                }
//            });
//        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
//            NSLog(@"");
//        }];
//    });
}

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (!self.dataModel) {
        return 0;
    }
    
    if (section == 0) {
        return 2;
    }
    return 20;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        
        if (indexPath.row == 0) {//新闻头部
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDetailTitleCellID];
            if (!cell) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kDetailTitleCellID];
            }
            self.newsTitleLab.text = self.dataModel.data.news.title;
            [cell addSubview:self.newsTitleLab];
            CGFloat height = [UILabel getHeightByWidth:kNewsTitleWidth title:self.dataModel.data.news.title font:self.newsTitleLab.font];
            [self.newsTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(kNewsTitleToCellTop);
                make.left.mas_equalTo(kNewsTitleToCellLeft);
                make.width.mas_equalTo(kNewsTitleWidth);
                make.height.mas_equalTo(height);
            }];
            
            self.addTimeLab.text = [NSString stringWithFormat:@"%@ %@",self.dataModel.data.news.addtime,self.dataModel.data.news.origin];
            [cell addSubview:self.addTimeLab];
            [self.addTimeLab mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.newsTitleLab.mas_bottom).offset(kAddTimeToTile);
                make.left.mas_equalTo(kNewsTitleToCellLeft);
                make.width.mas_equalTo(160);
                make.height.mas_equalTo(kAddTimeHeight);
            }];
         
            return cell;
            
        }else{//新闻正文
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDetailWebCellID];
            if (!cell) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kDetailWebCellID];
            }
            [cell addSubview:self.newsImageView];
            [self.newsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.left.mas_equalTo(5);
                make.right.mas_equalTo(-5);
                make.height.mas_equalTo(200);
            }];
            
            [cell addSubview:self.contentWebView];
            CGFloat webHeight = self.webViewHeight == 0?400:self.webViewHeight;
            [self.contentWebView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(5);
                make.right.mas_equalTo(-5);
                make.height.mas_equalTo(webHeight);
                make.top.equalTo(self.newsImageView.mas_bottom).offset(5);
            }];
          
            return cell;
        }
    }else{
        return [UITableViewCell new];
    }
}


#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.section == 0) {
        if (indexPath.row == 1) {//webView那个cell
            CGFloat resultHeith = self.webViewHeight == 0 ? 800:(self.webViewHeight+200);
            if (self.webViewHeight != 0) {
                [self.contentWebView mas_remakeConstraints:^(MASConstraintMaker *make) {
                    make.left.mas_equalTo(5);
                    make.right.mas_equalTo(-5);
                    make.height.mas_equalTo(self.webViewHeight);
                    make.top.equalTo(self.newsImageView.mas_bottom).offset(5);
                }];
            }
            return resultHeith;
        }else{
            CGFloat height = [UILabel getHeightByWidth:kNewsTitleWidth title:self.dataModel.data.news.title font:self.newsTitleLab.font];
            return height+kNewsTitleToCellTop+kAddTimeToTile+kAddTimeHeight+kAddTimeToButtom;
        }
    }
    return 32;
}

#pragma mark ANKNavigationDelegate

- (void)webViewDidFinishLoadWithSelfHeight:(CGFloat)height{
    [SVProgressHUD dismiss];
    self.webViewHeight = height;
    // 刷新tableView
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:1 inSection:0];
    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}



#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO


@end
