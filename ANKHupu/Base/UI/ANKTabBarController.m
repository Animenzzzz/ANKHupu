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
    
    ANKViewController *news = [ANKViewController new];
    news.tabBarItem.image = [UIImage imageNamed:@"tab_news_btn_night"];
    ANKNavigationController *nav = [[ANKNavigationController alloc] initWithRootViewController:news];
   
    
    ANKViewController *news1 = [ANKViewController new];
    news1.tabBarItem.image = [UIImage imageNamed:@"tab_news_btn_night"];
    ANKNavigationController *nav1 = [[ANKNavigationController alloc] initWithRootViewController:news1];
   
    ANKViewController *news2 = [ANKViewController new];
    news2.tabBarItem.image = [UIImage imageNamed:@"tab_news_btn_night"];
    ANKNavigationController *nav2 = [[ANKNavigationController alloc] initWithRootViewController:news2];

    self.viewControllers = @[nav,nav1,nav2];
    
    
}


@end
