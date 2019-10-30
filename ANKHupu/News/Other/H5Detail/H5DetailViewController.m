//
//  H5DetailViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/22.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailViewController.h"
#import "ANKHttpServer.h"
#import "H5DetailCommentCell.h"
#import <WebKit/WebKit.h>
#import "ANKWebView.h"
#import "H5DetailTitleCell.h"

#import "NewsDetailAdapter.h"
#import "NewsCommentAdapter.h"

#import "H5DetailSkeletonCell.h"
#import "DynamicColorUtil.h"
static NSString *kDetailTitleCellID = @"DetailTitleCellID";
static NSString *kDetailWebCellID = @"DetailWebCellID";
static NSString *k_title = @"H5DetailTitleCell";
static NSString *kCommentCellID = @"H5DetailCommentCell";


#define kNewBigImageHeight 300

#define kCommentSectionHeaderHeight 40


@interface H5DetailViewController ()<UITableViewDelegate,UITableViewDataSource,ANKWebViewDelegate>

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) ANKWebView *contentWebView;
@property(nonatomic, strong) UIImageView *newsImageView;
@property(nonatomic, assign) CGFloat webViewHeight;

@property(nonatomic, strong) NewsDetailAdapter *detailBaseModel;
@property(nonatomic, strong) NewsCommentAdapter *commentBaseModel;
@property(nonatomic, strong) NewsCommentAdapter *lightCommentBaseModel;

@property (nonatomic, assign) NSInteger loadNums;

@end

@implementation H5DetailViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.translucent = NO;//半透明属性设置为no,  fix:返回的控制器导航栏是红色，消除视图切换影响
    self.showShare = NO;
    self.webViewHeight = 0;
    self.loadNums = 0;
    [self initViews];
    [self laySubView];
    [self requestData];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.webViewHeight = 0;
    self.loadNums = 0;
    self.detailBaseModel = nil;
    self.commentBaseModel = nil;
    self.lightCommentBaseModel = nil;
    self.contentWebView = nil;
}


#pragma mark - Init（initVars initViews）
- (void)initViews{

  
    if (@available(iOS 11.0, *)) {
        self.tableView.estimatedRowHeight           = 0;
        self.tableView.estimatedSectionFooterHeight = 0;
//        self.tableView.estimatedSectionHeaderHeight = 0;
        self.tableView.contentInsetAdjustmentBehavior= UIScrollViewContentInsetAdjustmentNever;
        
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.modalPresentationCapturesStatusBarAppearance = NO;
        self.automaticallyAdjustsScrollViewInsets=NO;
    }
//    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(pullUpLoadMoreData)];
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];

        __weak typeof(self)weakSelf = self;
        [DynamicColorUtil backGroundColor:^(UIColor * _Nullable color) {
            weakSelf.tableView.backgroundColor = color;
        }];
        _tableView.delegate = self;
        _tableView.dataSource = self;
//        _tableView.separatorColor = [UIColor clearColor];
        [DynamicColorUtil seperatLineColor:^(UIColor * _Nullable color) {
            weakSelf.tableView.separatorColor = color;
        }];
//        UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
//        _tableView.tableHeaderView = headView;//为了消除cell顶部的空间
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kDetailTitleCellID];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kDetailWebCellID];
        [_tableView registerClass:[H5DetailTitleCell class] forCellReuseIdentifier:k_title];
        [_tableView registerNib:[UINib nibWithNibName:NSStringFromClass([H5DetailSkeletonCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([H5DetailSkeletonCell class])];
        [_tableView registerNib:[UINib nibWithNibName:@"H5DetailCommentCell" bundle:nil] forCellReuseIdentifier:kCommentCellID];
    }
    
    return _tableView;
}

- (UIImageView *)newsImageView{
    
    if (!_newsImageView) {
        _newsImageView = [UIImageView new];
        _newsImageView.contentMode = UIViewContentModeScaleAspectFill;
        _newsImageView.clipsToBounds = true;//用了UIViewContentModeScaleAspectFill的模式，图片太大会溢出cell
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

    if ([[ANKReachabilityManager sharedInstance] getNetworkStatus] == NotReachable) {
        [SVProgressHUD showErrorWithStatus:@"当前网络不可用，请检查网络设置"];
        [SVProgressHUD dismissWithDelay:2.0f];
        return;
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        @weakify(self)
        
        //请求新闻的信息
        [ANKHttpServer getNewsDetailWithParams:nil url:self.requestURL succesBlock:^(NSDictionary * _Nonnull data) {
            @strongify(self)
            dispatch_async(dispatch_get_main_queue(),^{
                
                self.loadNums++;
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                    
                    self.detailBaseModel = (NewsDetailAdapter *)[[NewsDetailAdapter alloc] initWithDictionary:data type:self.type];
                    
                    if (self.type == NewsTypeNormal) {
                        [self.newsImageView sd_setImageWithURL:[NSURL URLWithString:self.detailBaseModel.newsImage] placeholderImage:[ResUtil imageNamed:kPlaceHoldImg] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                                self.newsImageView.image = image;
                        }];
                    }
                    
                    [self.contentWebView loadHTMLString:[[self.detailBaseModel.h5Content stringByReplacingOccurrencesOfString:@"data-origin" withString:@"src"]stringByReplacingOccurrencesOfString:@"data_url" withString:@"src"]];
                    if(self.loadNums == 3) [self.tableView reloadData];
                }
                
            });
            
        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
            NSLog(@"");
        }];
        
        
        if (self.lightCommentURL.length) {
            //请求新闻的评论信息
            [ANKHttpServer getNewsDetailWithParams:nil url:self.lightCommentURL succesBlock:^(NSDictionary * _Nonnull data) {
                self.loadNums++;
                @strongify(self)
                dispatch_async(dispatch_get_main_queue(),^{
                    
                    NSDictionary *dic =data[@"error"];
                    if (dic) {//请求报错
                        NSString *errorInfo = [dic objectForKey:@"text"];
                        [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                        [SVProgressHUD dismissWithDelay:2.0f];
                    }else{
                        
                        self.lightCommentBaseModel = [(NewsCommentAdapter *)[NewsCommentAdapter alloc] initWithDictionary:data newsType:self.type commentType:CommentTypeLight];
                        if(self.loadNums == 3) [self.tableView reloadData];
                    }
                    
                });
                
            } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
                NSLog(@"");
            }];
        }
        
        if (self.commentURL.length) {
            self.loadNums++;
            //请求新闻的评论信息
            [ANKHttpServer getNewsDetailWithParams:nil url:self.commentURL succesBlock:^(NSDictionary * _Nonnull data) {
                @strongify(self)
                dispatch_async(dispatch_get_main_queue(),^{
                    
                    NSDictionary *dic =data[@"error"];
                    if (dic) {//请求报错
                        NSString *errorInfo = [dic objectForKey:@"text"];
                        [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                        [SVProgressHUD dismissWithDelay:2.0f];
                    }else{
                        
                        self.commentBaseModel = [(NewsCommentAdapter *)[NewsCommentAdapter alloc] initWithDictionary:data newsType:self.type commentType:CommentTypeNormal];
                        if(self.loadNums == 3) [self.tableView reloadData];
                    }
                    
                });
                
            } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
                NSLog(@"");
            }];
        }
        
    });
}

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    // 骨架屏
    if (!self.detailBaseModel || self.loadNums < 3) {
        return 1;
    }
    
    // section 0:新闻标题和内容   1:亮评  2：普通评论
    if (section == 0) {
        return 2;
    }else if(section == 1){
        if (self.lightCommentBaseModel.count) {
            return self.lightCommentBaseModel.count;
        }
    }else if(section == 2){
        if (self.commentBaseModel.count) {
            return self.commentBaseModel.count;
        }
    }
    
    
    return 0;

    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    // 骨架屏
    if (self.loadNums < 3) {
        return 1;
    }
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // 骨架屏
    if (self.loadNums < 3) {
        H5DetailSkeletonCell *cell = (H5DetailSkeletonCell *)[tableView dequeueReusableCellWithIdentifier:@"H5DetailSkeletonCell" forIndexPath:indexPath];
        return cell;
    }
    
    if (indexPath.section == 0) {
        
        if (indexPath.row == 0) {//新闻头部
            H5DetailTitleCell *cell = [tableView dequeueReusableCellWithIdentifier:k_title];
            if (!cell) {
                cell = [[H5DetailTitleCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:k_title];
            }

            [cell setStyleWithModel:self.detailBaseModel newsType:self.type];
            [DynamicColorUtil cellBackGroundColor:^(UIColor * _Nullable color) {
                cell.backgroundColor = color;
            }];
            return cell;
            
        }else{//新闻正文(webView)
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDetailWebCellID];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            if (!cell) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kDetailWebCellID];
            }
            
            //有图才添加这个imageView
            if (self.detailBaseModel.newsImage) {
                [cell addSubview:self.newsImageView];
                [self.newsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.top.left.mas_equalTo(5);
                    make.right.mas_equalTo(-5);
                    make.height.mas_equalTo(kNewBigImageHeight);
                }];
            }
            
        
            [cell addSubview:self.contentWebView];
            [self.contentWebView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(5);
                make.right.mas_equalTo(-5);
                make.height.mas_equalTo(self.webViewHeight);
                if (self.detailBaseModel.newsImage){
                    make.top.equalTo(self.newsImageView.mas_bottom).offset(5);
                }else{
                    make.top.mas_equalTo(5);
                }
                
            }];
            [DynamicColorUtil cellBackGroundColor:^(UIColor * _Nullable color) {
                cell.backgroundColor = color;
            }];
            return cell;
        }
    }else{//评论
        
        H5DetailCommentCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//        解决xib复用数据混乱问题
        if (nil == cell) {

            cell= (H5DetailCommentCell *)[[[NSBundle  mainBundle]  loadNibNamed:@"H5DetailCommentCell" owner:self options:nil]  lastObject];

        }
        CommentDetailData *dataM = nil;
        
        if (self.commentBaseModel.commentArray.count && indexPath.section == 2) {
            dataM = [self.commentBaseModel.commentArray objectAtIndex:indexPath.row];
        }else if (self.lightCommentBaseModel.commentArray.count && indexPath.section == 1){
            dataM = [self.lightCommentBaseModel.commentArray objectAtIndex:indexPath.row];
        }else{
            return cell;
        }
        
        [cell loadDataWithModel:dataM];
    
        return cell;
    }
}


#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // 骨架屏
    if (self.loadNums < 3) {
        return 169;
    }

    if (indexPath.section == 0) {
        if (indexPath.row == 1) {//webView那个cell
            CGFloat resultHeith = [self.detailBaseModel.newsImage length] ? (self.webViewHeight+kNewBigImageHeight):self.webViewHeight;
            if (self.webViewHeight != 0) {
                [self.contentWebView mas_remakeConstraints:^(MASConstraintMaker *make) {
                    make.left.mas_equalTo(5);
                    make.right.mas_equalTo(-5);
                    make.height.mas_equalTo(self.webViewHeight);
                    if (self.detailBaseModel.newsImage){
                        make.top.equalTo(self.newsImageView.mas_bottom).offset(5);
                    }else{
                        make.top.mas_equalTo(5);
                    }
                }];
            }else{
                resultHeith = 800;
            }
            return resultHeith+10;
        }else{//title

            return [H5DetailTitleCell calcuHeightWithType:self.type model:self.detailBaseModel];
            
        }
    }else{//评论
        
        CommentDetailData *dataM = nil;
        
        if (self.commentBaseModel.commentArray.count && indexPath.section == 2) {
            dataM = [self.commentBaseModel.commentArray objectAtIndex:indexPath.row];
        }else if (self.lightCommentBaseModel.commentArray.count && indexPath.section == 1){
            dataM = [self.lightCommentBaseModel.commentArray objectAtIndex:indexPath.row];
        }

        return [H5DetailCommentCell calculatHeightWithModel:dataM];
    }
    
    return 0;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0 || self.loadNums < 3) {
        return 0.1;
    }
    
    return kCommentSectionHeaderHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return  0.1;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    if(section == 0 || self.loadNums < 3) {
        return [UIView new];
    }else{
        
        // section head view
        UIView *se1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, kCommentSectionHeaderHeight)];
        [DynamicColorUtil sectionBackGroundColor:^(UIColor * _Nullable color) {
            se1.backgroundColor = color;
        }];
        
        // 标题
        UILabel *lab = [UILabel new];
        [DynamicColorUtil titleBackGroundColor:^(UIColor * _Nullable color) {
            lab.textColor = color;
        }];
        lab.backgroundColor = [UIColor clearColor];
        lab.text = @"最新评论";
        if(section == 1) lab.text = @"这些评论亮了";
        [lab setFont:[UIFont systemFontOfSize:15]];
        [se1 addSubview:lab];
        
        // 竖的红条
        UIView *lineV = [UIView new];
        [DynamicColorUtil redBackGroundColor:^(UIColor * _Nullable color) {
            lineV.backgroundColor = color;
        }];
        [se1 addSubview:lineV];
        
        [lineV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(se1.mas_centerY);
            make.left.mas_equalTo(4);
            make.height.mas_equalTo(kCommentSectionHeaderHeight - 28);
            make.width.mas_equalTo(2);
        }];
        
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(lineV.mas_right).mas_offset(5);
            make.centerY.equalTo(se1.mas_centerY);
            make.width.mas_equalTo(SCREEN_WIDTH);
            make.height.mas_equalTo(kCommentSectionHeaderHeight);
        }];

        return se1;
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(H5DetailSkeletonCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([cell isKindOfClass:[H5DetailSkeletonCell class]]) {
        cell.shouldLoading = self.loadNums < 3 ? YES:NO;
    }
}

#pragma mark ANKNavigationDelegate

- (void)webViewDidFinishLoadWithSelfHeight:(CGFloat)height{
    [SVProgressHUD dismiss];
    self.webViewHeight = height+10;//有些许偏移TODO...待确定，js的计算高度精度不够高
    // 刷新tableView
    [self.tableView reloadData];
}



#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO


@end
