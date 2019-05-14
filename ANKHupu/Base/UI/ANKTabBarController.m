//
//  ANKTabBarController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKTabBarController.h"
#import "ANKViewController.h"
#import "ANKNavigationController.h"
@interface ANKTabBarController ()

@end

@implementation ANKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ANKViewController *news = [[ANKViewController alloc] initWithNavigationViewType:NavigationViewSearch];
    [self setTabBarStyleWithCon:news seletImage:@"tab_news_btn_1" normlImage:@"tab_news_btn_night"];
    ANKNavigationController *nav = [[ANKNavigationController alloc] initWithRootViewController:news];
//    news.navigationView.naviType = NavigationViewSearch;
    
    ANKViewController *news1 = [ANKViewController new];
    [self setTabBarStyleWithCon:news1 seletImage:@"tab_games1_btn_select" normlImage:@"tab_games1_btn_normal_night"];
    ANKNavigationController *nav1 = [[ANKNavigationController alloc] initWithRootViewController:news1];
   
    ANKViewController *news2 = [ANKViewController new];
    [self setTabBarStyleWithCon:news2 seletImage:@"tab_bbs_btn_1" normlImage:@"tab_bbs_btn_night"];
    ANKNavigationController *nav2 = [[ANKNavigationController alloc] initWithRootViewController:news2];
    
    ANKViewController *news3 = [ANKViewController new];
    [self setTabBarStyleWithCon:news3 seletImage:@"tab_shoes_btn_select" normlImage:@"tab_shoes_btn_night"];
    ANKNavigationController *nav3 = [[ANKNavigationController alloc] initWithRootViewController:news3];
    
    ANKViewController *news4 = [ANKViewController new];
    [self setTabBarStyleWithCon:news4 seletImage:@"tab_more_btn_1" normlImage:@"tab_more_btn_night"];
    ANKNavigationController *nav4 = [[ANKNavigationController alloc] initWithRootViewController:news4];

    self.viewControllers = @[nav,nav1,nav2,nav3,nav4];
    
}

- (void)setTabBarStyleWithCon:(UIViewController *)controller seletImage:(NSString *)selImage normlImage:(NSString *)norImage{
    
    [controller.tabBarItem setImage:[[UIImage imageNamed:norImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [controller.tabBarItem setSelectedImage:[[UIImage imageNamed:selImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
}


@end
