//
//  H5DetailViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/22.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailViewController.h"
#import "ANKHttpServer.h"
#import "NewsDetailModel.h"
#import <WebKit/WebKit.h>
#import "ANKWebView.h"
#import "H5DetailTitleCell.h"
#import "NBANewsType5Model.h"
#import "CommentModel.h"
#import "H5DetailCommentCell.h"
#import "CommentType5Model.h"

static NSString *kDetailTitleCellID = @"DetailTitleCellID";
static NSString *kDetailWebCellID = @"DetailWebCellID";
static NSString *k_title = @"H5DetailTitleCell";
static NSString *kCommentCellID = @"H5DetailCommentCell";

#define kNewsTitleToCellTop  5
#define kNewsTitleToCellLeft 15
#define kNewsTitleWidth (SCREEN_WIDTH - kNewsTitleToCellLeft*2)
#define kAddTimeToTile       10
#define kAddTimeHeight       10
#define kAddTimeToButtom 10
#define kNewBigImageHeight 300

#define kCommentSectionHeaderHeight 30

#define kCommentXibHeight 182
#define kCommentGrayHeight 60
#define kCommentQuoteWidth 292

@interface H5DetailViewController ()<UITableViewDelegate,UITableViewDataSource,ANKWebViewDelegate>

@property(nonatomic, strong) NewsDetailModel *dataModel;
@property(nonatomic, strong) CommentModel *commentModel;
@property(nonatomic, strong) NBANewsType5Model *type5Model;
@property(nonatomic, strong) CommentType5Model *commentType5Model;
@property(nonatomic, strong) UITableView *tableView;
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
//        self.tableView.estimatedSectionHeaderHeight = 0;
        self.tableView.contentInsetAdjustmentBehavior= UIScrollViewContentInsetAdjustmentNever;
        
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.modalPresentationCapturesStatusBarAppearance = NO;
        self.automaticallyAdjustsScrollViewInsets=NO;
    }
//    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(pullUpLoadMoreData)];
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
        [_tableView registerClass:[H5DetailTitleCell class] forCellReuseIdentifier:k_title];
        [_tableView registerNib:[UINib nibWithNibName:@"H5DetailCommentCell" bundle:nil] forCellReuseIdentifier:kCommentCellID];
        if (self.type == NewsTypeTopic) {
            _tableView.separatorColor = [UIColor whiteColor];
        }
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

    [SVProgressHUD showWithStatus:@"加载中..."];
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
                
                NSDictionary *dic =data[@"error"];
                if (dic) {//请求报错
                    NSString *errorInfo = [dic objectForKey:@"text"];
                    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",errorInfo]];
                    [SVProgressHUD dismissWithDelay:2.0f];
                }else{
                 
                    if (self.type == NewsTypeNormal) {
                        self.dataModel = [[NewsDetailModel alloc] initWithDictionary:data];
                        [self.newsImageView sd_setImageWithURL:[NSURL URLWithString:self.dataModel.data.news.img] placeholderImage:[ResUtil imageNamed:kPlaceHoldImg] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                            self.newsImageView.image = image;
                        }];
                        
                        [self.contentWebView loadHTMLString:self.dataModel.data.news.content];
                        [self.tableView reloadData];
                        
//                        NSLog(@"加载的html:%@",self.dataModel.data.news.content);
                        
                    }else if(self.type == NewsTypeTopic){
                        self.type5Model = [[NBANewsType5Model alloc] initWithDictionary:data];
                        [self.contentWebView loadHTMLString:self.type5Model.nBAType5offlineData.nBAType5data.content];
                        [self.tableView reloadData];
//                        NSLog(@"加载的html:%@",self.type5Model.nBAType5offlineData.nBAType5data.content);
                    }
                    
                    
                }
                
            });
            
        } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
            NSLog(@"");
        }];
        
        if (self.commentURL.length) {
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

                        if (self.type == NewsTypeNormal) {//1:视频+正常新闻
                            
                            self.commentModel = [[CommentModel alloc] initWithDictionary:data];
                            
                            
                        }else if (self.type == NewsTypeSpecial){//2:专题
                            
                        }else if (self.type == NewsTypePic){//3:cell上有多个图片（在 thumbs 数组里面）
                            
                        }else if (self.type == NewsTypeTopic){//5:话题。。球鞋。。经典回顾
                            
                            self.commentType5Model = [[CommentType5Model alloc] initWithDictionary:data];
                        
                        }
                        
                        NSIndexSet *indexSet = [[NSIndexSet alloc]initWithIndex:1];
                        [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
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
    
    if (!self.dataModel && !self.type5Model) {
        return 0;
    }
    
    if (section == 0) {
        return 2;
    }else{
    
        if (self.type == NewsTypeNormal) {//1:视频+正常新闻
            if (!self.commentModel) {
                return 0;
            }
            return self.commentModel.dtailData.data.count;

        }else if (self.type == NewsTypeSpecial){//2:专题
            return 0;
        }else if (self.type == NewsTypePic){//3:cell上有多个图片（在 thumbs 数组里面）
            return 0;
        }else if (self.type == NewsTypeTopic){//5:话题。。球鞋。。经典回顾
            
            if (!self.commentType5Model) {
                return 0;
            }
            
            return self.commentType5Model.commetType5Modl.commetType5result.commentDatalist.count;
        }else{
            return 0;
        }
    }

    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        
        if (indexPath.row == 0) {//新闻头部
            H5DetailTitleCell *cell = [tableView dequeueReusableCellWithIdentifier:k_title];
            if (!cell) {
                cell = [[H5DetailTitleCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:k_title];
            }
            id tmpModel = self.type == NewsTypeNormal ? self.dataModel:self.type5Model;
            [cell setStyleWithModel:tmpModel newsType:self.type];
            return cell;
            
        }else{//新闻正文(webView)
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDetailWebCellID];
            if (!cell) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kDetailWebCellID];
            }
            
            //有图才添加这个imageView
            if (self.dataModel.data.news.img) {
                [cell addSubview:self.newsImageView];
                [self.newsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.top.left.mas_equalTo(5);
                    make.right.mas_equalTo(-5);
                    make.height.mas_equalTo(kNewBigImageHeight);
                }];
            }
            
        
            [cell addSubview:self.contentWebView];
            CGFloat webHeight = self.webViewHeight == 0?400:self.webViewHeight;
            [self.contentWebView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(5);
                make.right.mas_equalTo(-5);
                make.height.mas_equalTo(webHeight);
                if (self.dataModel.data.news.img){
                    make.top.equalTo(self.newsImageView.mas_bottom).offset(5);
                }else{
                    make.top.mas_equalTo(5);
                }
                
            }];
          
            return cell;
        }
    }else{//评论
        
        
//        H5DetailCommentCell *cell = [tableView dequeueReusableCellWithIdentifier:kCommentCellID];
//        if (!cell) {
//            cell = [[H5DetailCommentCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCommentCellID];
//        }
        
        H5DetailCommentCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//        解决xib复用数据混乱问题
        if (nil == cell) {

            cell= (H5DetailCommentCell *)[[[NSBundle  mainBundle]  loadNibNamed:@"H5DetailCommentCell" owner:self options:nil]  lastObject];

        }
//        else{
//            //删除cell的所有子视图
//            while ([cell.contentView.subviews lastObject] != nil)
//            {
//                [(UIView*)[cell.contentView.subviews lastObject] removeFromSuperview];
//            }
//
//        }

        if (self.type == NewsTypeNormal) {//1:视频+正常新闻
            
            CommentData *dataM = [self.commentModel.dtailData.data objectAtIndex:indexPath.row];
            cell.userName = dataM.userName;
            cell.content = dataM.content;
            CGFloat contenHeight = [UILabel getHeightByWidth:284 title:dataM.content font:cell.contenLab.font lineSpacing:5.0];
            cell.contenLabHeight.constant = contenHeight;
            [cell.headerIcon sd_setImageWithURL:[NSURL URLWithString:dataM.header] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                cell.headerIcon.image = image;
            }];
            cell.lightNum = dataM.lightCount;
            cell.addTime = dataM.formatTime;
            if (![dataM.quoteData.content length]) {
                cell.quoteView.hidden = YES;
            }else{
                cell.quoteContent = dataM.quoteData.content;
                cell.quoteName = dataM.quoteData.userName;
                
                CGFloat quoteHeight = [UILabel getHeightByWidth:kCommentQuoteWidth title:dataM.quoteData.content font:cell.quoteContenLab.font lineSpacing:5.0];
                CGFloat orignContenLab = cell.quoteContenLabHeight.constant;
                cell.quoteContenLabHeight.constant = quoteHeight;
                cell.quoteViewHeight.constant = cell.quoteViewHeight.constant - orignContenLab+quoteHeight;
                
                NSLog(@"m名字：%@   回复内容：%@   cell:%p   index:%ld",dataM.userName,dataM.quoteData.content,cell,(long)indexPath.row);
                
            }
            return cell;
            
        }else if (self.type == NewsTypeSpecial){//2:专题
          
        }else if (self.type == NewsTypePic){//3:cell上有多个图片（在 thumbs 数组里面）
            
        }else if (self.type == NewsTypeTopic){//5:话题。。球鞋。。经典回顾
           
            CommentDatalist *dataM = [self.commentType5Model.commetType5Modl.commetType5result.commentDatalist objectAtIndex:indexPath.row];
            cell.userName = dataM.userName;
            cell.content = dataM.content;
            CGFloat contenHeight = [UILabel getHeightByWidth:284 title:dataM.content font:cell.contenLab.font lineSpacing:5.0];
            cell.contenLabHeight.constant = contenHeight;
            [cell.headerIcon sd_setImageWithURL:[NSURL URLWithString:dataM.userImg] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                cell.headerIcon.image = image;
            }];
            cell.lightNum = [NSString stringWithFormat:@"%ld",(long)dataM.quoteLightCount];
            cell.addTime = dataM.time;
            if (!dataM.quote.count) {
                cell.quoteView.hidden = YES;
            }else{
                CommentType5Quote *quote = [dataM.quote objectAtIndex:0];
                cell.quoteContent = quote.content;
                NSString *name = [quote.header objectAtIndex:0];
                NSArray *aar = [name componentsSeparatedByString:@">"];
                NSArray *tmp = [aar[0] componentsSeparatedByString:@"<"];
                cell.quoteName = tmp[0];
                
                CGFloat quoteHeight = [UILabel getHeightByWidth:kCommentQuoteWidth title:quote.content font:cell.quoteContenLab.font lineSpacing:5.0];
                CGFloat orignContenLab = cell.quoteContenLabHeight.constant;
                cell.quoteContenLabHeight.constant = quoteHeight;
                cell.quoteViewHeight.constant = cell.quoteViewHeight.constant - orignContenLab+quoteHeight;
                
            }
            return cell;
            
        }else{
           
        }
        
        
        return [UITableViewCell new];
        
    }
}


#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.section == 0) {
        if (indexPath.row == 1) {//webView那个cell
            CGFloat resultHeith = self.webViewHeight == 0 ? 800:(self.webViewHeight+kNewBigImageHeight);
            if (self.webViewHeight != 0) {
                [self.contentWebView mas_remakeConstraints:^(MASConstraintMaker *make) {
                    make.left.mas_equalTo(5);
                    make.right.mas_equalTo(-5);
                    make.height.mas_equalTo(self.webViewHeight);
                    if (self.dataModel.data.news.img){
                        make.top.equalTo(self.newsImageView.mas_bottom).offset(5);
                    }else{
                        make.top.mas_equalTo(5);
                    }
                }];
            }
            return resultHeith+50;
        }else{//title
            CGFloat height = [UILabel getHeightByWidth:kNewsTitleWidth title:self.dataModel.data.news.title font:[UIFont fontWithName:@"Helvetica-Bold" size:19]];
            CGFloat addtimeHeight = self.type == NewsTypeNormal ? kAddTimeHeight:(kAddTimeHeight+34+30);
            return (height+kNewsTitleToCellTop+kAddTimeToTile+addtimeHeight+kAddTimeToButtom);
        }
    }else{//评论
        
        
        
        if (self.type == NewsTypeNormal) {//1:视频+正常新闻
            
            CGFloat cellHeight = 0;
            CommentData *dataM = [self.commentModel.dtailData.data objectAtIndex:indexPath.row];
            
            CGFloat contenHeight = [UILabel getHeightByWidth:284 title:dataM.content font:[UIFont systemFontOfSize:16]];
            cellHeight = kCommentXibHeight-21+contenHeight;
            
            
            if (![dataM.quoteData.content length]) {//评论是否有回复
                cellHeight = cellHeight - kCommentGrayHeight;
            }else{
                
                CGFloat quoteHeight = [UILabel getHeightByWidth:kCommentQuoteWidth title:dataM.quoteData.content font:[UIFont systemFontOfSize:15] lineSpacing:5.0];
                cellHeight = cellHeight - 21+quoteHeight;
                
            }
            
            return cellHeight;
          
        }else if (self.type == NewsTypeSpecial){//2:专题
       
        }else if (self.type == NewsTypePic){//3:cell上有多个图片（在 thumbs 数组里面）
           
        }else if (self.type == NewsTypeTopic){//5:话题。。球鞋。。经典回顾
            
            CGFloat cellHeight = 0;
            CommentDatalist *dataM = [self.commentType5Model.commetType5Modl.commetType5result.commentDatalist objectAtIndex:indexPath.row];
            
            CGFloat contenHeight = [UILabel getHeightByWidth:284 title:dataM.content font:[UIFont systemFontOfSize:16]];
            cellHeight = kCommentXibHeight-21+contenHeight;
            
            if (!dataM.quote.count) {
                cellHeight = cellHeight - kCommentGrayHeight;
            }else{
                
                CommentType5Quote *quote = [dataM.quote objectAtIndex:0];
               
                CGFloat quoteHeight = [UILabel getHeightByWidth:kCommentQuoteWidth title:quote.content font:[UIFont systemFontOfSize:15] lineSpacing:5.0];
                cellHeight = cellHeight - 21+quoteHeight;
            }
            return cellHeight;
            
        }else{
         
        }
    
    }
    
    return 0;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0.1;
    }
    
    return kCommentSectionHeaderHeight;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if(section == 0) {
        return [UIView new];
    }else{
        UIView *se1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, kCommentSectionHeaderHeight)];
        UILabel *lab = [UILabel new];
        lab.textColor = kSearchRedBackGroundColor;
        lab.text = @"最新评论";
        [se1 addSubview:lab];
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.centerY.equalTo(se1.mas_centerY);
            make.width.mas_equalTo(SCREEN_WIDTH);
            make.height.mas_equalTo(kCommentSectionHeaderHeight-10);
        }];
        
        UIView *lineV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 3, kCommentSectionHeaderHeight)];
        lineV.backgroundColor = kSearchRedBackGroundColor;
        [se1 addSubview:lineV];
        
        UIView *upLine = [UIView new];
        upLine.backgroundColor = kGrayBackGroundColor;
        [se1 addSubview:upLine];
        [upLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.mas_equalTo(0);
            make.width.mas_equalTo(SCREEN_WIDTH);
            make.height.mas_equalTo(1);
        }];
        
        UIView *downLine = [UIView new];
        downLine.backgroundColor = kGrayBackGroundColor;
        [se1 addSubview:downLine];
        [downLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.left.mas_equalTo(0);
            make.width.mas_equalTo(SCREEN_WIDTH);
            make.height.mas_equalTo(1);
        }];

        return se1;
    }
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
