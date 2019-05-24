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

#import "NewsViewController.h"
#import "GameViewController.h"

#import "FPSLable.h"

@interface ANKTabBarController ()

@property (nonatomic, strong) FPSLable *fpsLabel;

@end

@implementation ANKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NewsViewController *news = [NewsViewController new];
    [self setTabBarStyleWithCon:news seletImage:kTab1_Selete normlImage:kTab1_Normal];
    news.menuViewStyle = WMMenuViewStyleLine;
    news.selectIndex = 1;
    news.automaticallyCalculatesItemWidths = YES;
    news.showMore = YES;
    ANKNavigationController *newNav = [[ANKNavigationController alloc] initWithRootViewController:news];
    
    GameViewController *game = [GameViewController new];
    [self setTabBarStyleWithCon:game seletImage:kTab2_Selete normlImage:kTab2_Normal];
    ANKNavigationController *gameNav = [[ANKNavigationController alloc] initWithRootViewController:game];
   
    ANKViewController *news2 = [ANKViewController new];
    [self setTabBarStyleWithCon:news2 seletImage:kTab3_Selete normlImage:kTab3_Normal];
    ANKNavigationController *nav2 = [[ANKNavigationController alloc] initWithRootViewController:news2];
    
    ANKViewController *news3 = [ANKViewController new];
    [self setTabBarStyleWithCon:news3 seletImage:kTab4_Selete normlImage:kTab4_Normal];
    ANKNavigationController *nav3 = [[ANKNavigationController alloc] initWithRootViewController:news3];
    
    ANKViewController *news4 = [ANKViewController new];
    [self setTabBarStyleWithCon:news4 seletImage:kTab5_Selete normlImage:kTab5_Normal];
    ANKNavigationController *nav4 = [[ANKNavigationController alloc] initWithRootViewController:news4];

    self.viewControllers = @[newNav,gameNav,nav2,nav3,nav4];
    
#if DEBUG
    _fpsLabel = [FPSLable new];
    [_fpsLabel sizeToFit];
    
    _fpsLabel.frame = CGRectMake(50, SCREEN_HEIGHT-300, 50, 30);
    [self.view addSubview:_fpsLabel];
    [self.view bringSubviewToFront:_fpsLabel];
#endif
    
}

- (void)setTabBarStyleWithCon:(UIViewController *)controller seletImage:(NSString *)selImage normlImage:(NSString *)norImage{
    
    [controller.tabBarItem setImage:[[ResUtil imageNamed:norImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [controller.tabBarItem setSelectedImage:[[ResUtil imageNamed:selImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
}


@end
