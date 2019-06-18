//
//  ANKRedNavigation.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/4.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKRedNavigation.h"
#import "ANKNavigationViewSearch.h"
#import "ANKHttpServer.h"
@interface ANKRedNavigation ()<ANKNavigationViewSearchDelegate>

@property (nonatomic, strong) ANKNavigationViewSearch *redNavigationView;
@property (nonatomic, strong) NSTimer *timer;

@end

static NSInteger timeCount = 0;

@implementation ANKRedNavigation{
    NSMutableArray *_hotSearchDataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNavigationBarHidden:YES];
    
    @weakify(self)
    [ANKHttpServer getHotSearchWithResponData:^(NSMutableArray * _Nonnull data) {
        @strongify(self)
        
        NSString *showString = @"";
        
        if (!data.count) {
            showString = @"暂时获取不到数据，服务器崩了";
        }else{
            showString = [NSString stringWithFormat:@"%@ | %@ | %@",data[0],data[1],data[2]];
        }
        
        self->_hotSearchDataArray = data;
       
        [self.redNavigationView.cwHotSearchLab showNextText:showString withDirection:CWCalendarLabelScrollToTop];
        [self startTimer];
    } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
        NSLog(@"");
    }];
}

// push进去的控制器隐藏tabBar
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    //    self.topViewController.hidesBottomBarWhenPushed = YES;
    
    [super pushViewController:viewController animated:animated];
}

- (void)loadView{
    
    [super loadView];
    
    //设置导航栏
    [self.view addSubview:self.redNavigationView];
    [self.redNavigationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.mas_equalTo(kNavigationBarHeight);
    }];
    
    
}

- (void)hiddenRedNavigationView:(BOOL)hidden{
    
    self.redNavigationView.hidden = hidden;
}


- (ANKNavigationViewSearch *)redNavigationView{
    if (!_redNavigationView) {
        _redNavigationView = (ANKNavigationViewSearch *)[[[UINib nibWithNibName:@"ANKNavigationViewSearch" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
        _redNavigationView.delegate = self;
    }
    
    return _redNavigationView;
}

- (void)hotSearchViewClick{
    NSLog(@"");
}
- (void)commentClick{
    NSLog(@"");
}

- (void)dealloc
{
    [self.timer invalidate];
    self.timer = nil;
}

#pragma mark - Custom functions

- (void)startTimer
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(onTimerAction) userInfo:nil repeats:YES];
}

- (void)onTimerAction
{
    
    if (!_hotSearchDataArray.count) {
        [self.redNavigationView.cwHotSearchLab showNextText:@"暂时获取不到数据，服务器崩了" withDirection:CWCalendarLabelScrollToTop];
        return;
    }
    
    if (timeCount > _hotSearchDataArray.count - 1) {
        timeCount = 0;
    }
    
    NSString *showString = [NSString stringWithFormat:@"%@ | %@ | %@",_hotSearchDataArray[timeCount],_hotSearchDataArray[timeCount+1],_hotSearchDataArray[timeCount+2]];
    [self.redNavigationView.cwHotSearchLab showNextText:showString withDirection:CWCalendarLabelScrollToTop];
    timeCount = timeCount+3;
}

- (void)endTimer
{
    [self.timer invalidate];
    self.timer = nil;
    
}

@end
