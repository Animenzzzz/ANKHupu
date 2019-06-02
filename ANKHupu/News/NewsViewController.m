//
//  NewsViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsViewController.h"
#import "ANKNavigationViewSearch.h"
#import "ANKHttpServer.h"
#import "NewsPhotosListController.h"
#import "TagsViewController.h"
#import "NewsNormalListController.h"
@interface NewsViewController ()<ANKNavigationViewSearchDelegate>

@property (nonatomic, strong) ANKNavigationViewSearch *navigationView;

@property (nonatomic, strong) NSTimer *timer;



@end

static NSInteger timeCount = 0;

@implementation NewsViewController
{
    NSMutableArray *_hotSearchDataArray;
    NSMutableArray *_seletTagArray;
}


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSArray *userArra = [self getOrderUserData];
    if (_seletTagArray.count == userArra.count) {
        for (NSInteger i = 0; i<_seletTagArray.count; i++) {
            if (![_seletTagArray[i] isEqualToString:[userArra objectAtIndex:i]]) {
                break;
            }
        }
        return;
    }
    _seletTagArray = [[self getOrderUserData] copy];
    [self reloadData];
}



- (void)dealloc
{
    [self.timer invalidate];
    self.timer = nil;
}

#pragma mark - Init（initVars initViews）

- (void)loadView{
    
    [super loadView];
    
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


#pragma mark - Custom protocol

- (NSArray *)getOrderUserData{
    NSMutableArray *result = [[NSUserDefaults standardUserDefaults] objectForKey:kOrderUserData];
    if (!result.count) {//第一次进入
        NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"推荐", nil];
        result = [arr mutableCopy];
    }
    
    return [result copy];
}

- (void)hotSearchViewClick{
    NSLog(@"");
}
- (void)commentClick{
    NSLog(@"");
}

- (void)moreBtnDidClick{
    TagsViewController *tagViewCon = [TagsViewController new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tagViewCon];
    [self presentViewController:nav animated:YES completion:nil];
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{

    _seletTagArray = [[self getOrderUserData] copy];
    
    return _seletTagArray.count;
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
   
    return [_seletTagArray objectAtIndex:index];
}



- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    switch (index % 10) {
        case 0: return [[NewsPhotosListController alloc] init];//推荐页
        case 1: return [[NewsNormalListController alloc] init];
//        case 2: return [[WMCollectionViewController alloc] init];
    }
    return [[UIViewController alloc] init];
}

- (CGFloat)menuView:(WMMenuView *)menu widthForItemAtIndex:(NSInteger)index {
    CGFloat width = [super menuView:menu widthForItemAtIndex:index];
    return width + 20;
}


- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
    CGFloat leftMargin = self.showOnNavigationBar ? 50 : 0;
    CGFloat originY = 64;
    CGFloat moreBtnOffset = self.showMore ? kScrollTagMoreBtnWidth:0;
    return CGRectMake(leftMargin, originY, self.view.frame.size.width - 2*leftMargin - moreBtnOffset, 44);
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
//    if (self.menuViewPosition == WMMenuViewPositionBottom) {
//        return CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64 - 44);
//    }
    CGFloat originY = 64;
//    if (self.menuViewStyle == WMMenuViewStyleTriangle) {
//        originY += self.redView.frame.size.height;
//    }
    return CGRectMake(0, originY, self.view.frame.size.width, self.view.frame.size.height - originY);
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
