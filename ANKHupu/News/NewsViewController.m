//
//  NewsViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsViewController.h"

#import "ANKHttpServer.h"
#import "NewsPhotosListController.h"
#import "TagsViewController.h"
#import "NewsNormalListController.h"
@interface NewsViewController ()

@end

@implementation NewsViewController
{

    NSMutableArray *_seletTagArray;
}


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

}

#pragma mark - Init（initVars initViews）

- (void)loadView{
    
    [super loadView];
}
#pragma mark - Layout Subviews（layoutSubview）


#pragma mark - Network request

#pragma mark - System protocol 


#pragma mark - Custom protocol

- (NSArray *)getOrderUserData{
    NSMutableArray *result = [[NSUserDefaults standardUserDefaults] objectForKey:kOrderUserData];
    if (!result.count) {//第一次进入
        NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"推荐",@"NBA",@"绝地求生",@"英雄联盟", nil];
        result = [arr mutableCopy];
    }
    
    return [result copy];
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
    
    NSString *tagTitle = [_seletTagArray objectAtIndex:index];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"URLInfo" ofType:@"plist"];
    NSDictionary *tmpDic = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    NSDictionary *dataDic = [tmpDic objectForKey:tagTitle];
    NSString *type = [dataDic objectForKey:@"type"];
    
    if ([type isEqualToString:@"1"]) {
        NewsNormalListController *listC = [[NewsNormalListController alloc] init];
        listC.tagTitle = tagTitle;
        return listC;
    }else if ([type isEqualToString:@"2"]){
        NewsPhotosListController *listC = [[NewsPhotosListController alloc] init];
        listC.tagTitle = tagTitle;
        return listC;
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

//即将要进入的controller
- (void)pageController:(WMPageController *)pageController willEnterViewController:(__kindof UIViewController *)viewController withInfo:(NSDictionary *)info{
    NSLog(@"");
}


#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
