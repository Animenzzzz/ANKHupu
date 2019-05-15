//
//  NewsViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsViewController.h"
#import "ANKNavigationViewSearch.h"
#import "ANKTagScroll.h"
#import "Masonry.h"
#import "ANKHttpServer.h"
@interface NewsViewController ()<ANKNavigationViewSearchDelegate>

@property (nonatomic, strong) ANKTagScroll *scrollView;
@property (nonatomic, strong) ANKNavigationViewSearch *navigationView;

@property (nonatomic, strong) NSTimer *timer;

@end

static NSInteger timeCount = 0;

@implementation NewsViewController
{
    NSMutableArray *_hotSearchDataArray;
}


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"NewsTag" ofType:@"plist"];
    NSMutableDictionary *dataDic = [[NSMutableDictionary alloc]initWithContentsOfFile:plistPath];
    _scrollView.selectDataArray = [NSMutableArray arrayWithArray:[dataDic allKeys]];
    
    
    @weakify(self)
    [ANKHttpServer getHotSearchWithResponData:^(NSMutableArray * _Nonnull data) {
        @strongify(self)
        self->_hotSearchDataArray = data;
        
        
        NSString *showString = [NSString stringWithFormat:@"%@ | %@ | %@",data[0],data[1],data[2]];
        [self.navigationView.cwHotSearchLab showNextText:showString withDirection:CWCalendarLabelScrollToTop];
        [self startTimer];
    } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
        NSLog(@"");
    }];

}

- (void)dealloc
{
    [self.timer invalidate];
    self.timer = nil;
}

#pragma mark - Init（initVars initViews）

- (void)loadView{
    
    [super loadView];
    
    //设置导航栏下的tag选择滚动栏
    _scrollView = [[[UINib nibWithNibName:@"ANKTagScroll" bundle:[NSBundle mainBundle]] instantiateWithOwner:self options:nil]firstObject];
    _scrollView.moreListEnable = YES;
    [self.view addSubview:_scrollView];
    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kNavigationBarHeight);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.mas_equalTo(kScrollTagHeight);
    }];
    
    //设置导航栏
    [self.view addSubview:self.navigationView];
    [self.navigationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.mas_equalTo(kNavigationBarHeight);
    }];
}

- (ANKNavigationViewSearch *)navigationView{
    if (!_navigationView) {
        _navigationView = [ANKNavigationViewSearch shareInstance];
        _navigationView.delegate = self;
    }
    
    return _navigationView;
}
#pragma mark - Layout Subviews（layoutSubview）
#pragma mark - Network request

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
#pragma mark UITableViewDelegate

#pragma mark - Custom protocol   ANKNavigationViewSearchDelegate

- (void)hotSearchViewClick{
    NSLog(@"");
}
- (void)commentClick{
    NSLog(@"");
}
#pragma mark - Custom functions

- (void)startTimer
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(onTimerAction) userInfo:nil repeats:YES];
}

- (void)onTimerAction
{
   
    if (timeCount > _hotSearchDataArray.count - 1) {
        timeCount = 0;
    }
    
    NSString *showString = [NSString stringWithFormat:@"%@ | %@ | %@",_hotSearchDataArray[timeCount],_hotSearchDataArray[timeCount+1],_hotSearchDataArray[timeCount+2]];
    [self.navigationView.cwHotSearchLab showNextText:showString withDirection:CWCalendarLabelScrollToTop];
    timeCount = timeCount+3;
}

- (void)endTimer
{
    [self.timer invalidate];
    self.timer = nil;
   
}

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
