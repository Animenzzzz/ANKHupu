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
#import "HotListViewController.h"
@interface NewsViewController ()<ANKNavigationViewSearchDelegate>

//@property (nonatomic, strong) ANKTagScroll *scrollView;
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
    
//    NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"NewsTag" ofType:@"plist"];
//    NSMutableDictionary *dataDic = [[NSMutableDictionary alloc]initWithContentsOfFile:plistPath];
//    _seletTagArray = [NSMutableArray arrayWithArray:[dataDic allKeys]];
//    _scrollView.selectDataArray = [NSMutableArray arrayWithArray:[dataDic allKeys]];
    
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
//    _scrollView = [[[UINib nibWithNibName:@"ANKTagScroll" bundle:[NSBundle mainBundle]] instantiateWithOwner:self options:nil]firstObject];
//    _scrollView.moreListEnable = YES;
//    [self.view addSubview:_scrollView];
//    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(kNavigationBarHeight);
//        make.left.equalTo(self.view);
//        make.right.equalTo(self.view);
//        make.height.mas_equalTo(kScrollTagHeight);
//    }];
    
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


#pragma mark - Custom protocol   ANKNavigationViewSearchDelegate

- (void)hotSearchViewClick{
    NSLog(@"");
}
- (void)commentClick{
    NSLog(@"");
}

//-(UIColor *)menuView:(WMMenuView *)menu titleColorForState:(WMMenuItemState)state atIndex:(NSInteger)index{
//    if (state == WMMenuItemStateNormal) {
//        return [UIColor grayColor];
//    }
//    return [UIColor redColor];
//
//}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"NewsTag" ofType:@"plist"];
    NSArray *dataDic = [NSArray arrayWithContentsOfFile:plistPath];
    _seletTagArray = [dataDic copy];
    return _seletTagArray.count;
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
   
    return [_seletTagArray objectAtIndex:index];
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    switch (index % 10) {
        case 0: return [[HotListViewController alloc] initWithStyle:UITableViewStyleGrouped];//推荐页
//        case 1: return [[WMViewController alloc] init];
//        case 2: return [[WMCollectionViewController alloc] init];
    }
    return [[UIViewController alloc] init];
}

- (CGFloat)menuView:(WMMenuView *)menu widthForItemAtIndex:(NSInteger)index {
    CGFloat width = [super menuView:menu widthForItemAtIndex:index];
    return width + 20;
}


- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
//    if (self.menuViewPosition == WMMenuViewPositionBottom) {
//        menuView.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1.0];
//        return CGRectMake(0, self.view.frame.size.height - 44, self.view.frame.size.width, 44);
//    }
    CGFloat leftMargin = self.showOnNavigationBar ? 50 : 0;
    CGFloat originY = 64;
    return CGRectMake(leftMargin, originY, self.view.frame.size.width - 2*leftMargin, 44);
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
