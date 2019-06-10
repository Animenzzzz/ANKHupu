//
//  ANKTabBarController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKTabBarController.h"
#import "ANKViewController.h"
#import "ANKNormalNavigation.h"
#import "ANKRedNavigation.h"
#import "NewsViewController.h"
#import "GameViewController.h"
#import "MoreViewController.h"
#import "FPSLable.h"
#import "BBSViewController.h"

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
    news.automaticallyCalculatesItemWidths = YES;
    news.showMore = YES;
    news.menuViewLayoutMode = WMMenuViewLayoutModeLeft;
    ANKRedNavigation *newNav = [[ANKRedNavigation alloc] initWithRootViewController:news];
    
    GameViewController *game = [GameViewController new];
    [self setTabBarStyleWithCon:game seletImage:kTab2_Selete normlImage:kTab2_Normal];
    game.menuViewStyle = WMMenuViewStyleLine;
    game.automaticallyCalculatesItemWidths = YES;
    game.menuViewLayoutMode = WMMenuViewLayoutModeLeft;
    ANKRedNavigation *gameNav = [[ANKRedNavigation alloc] initWithRootViewController:game];
    
   
    BBSViewController *bbsControler = [BBSViewController new];
    [self setTabBarStyleWithCon:bbsControler seletImage:kTab3_Selete normlImage:kTab3_Normal];
    bbsControler.menuViewStyle = WMMenuViewStyleLine;
    bbsControler.automaticallyCalculatesItemWidths = YES;
    bbsControler.menuViewLayoutMode = WMMenuViewLayoutModeLeft;
    ANKRedNavigation *nav2 = [[ANKRedNavigation alloc] initWithRootViewController:bbsControler];
    
    ANKViewController *news3 = [ANKViewController new];
    [self setTabBarStyleWithCon:news3 seletImage:kTab4_Selete normlImage:kTab4_Normal];
    ANKRedNavigation *nav3 = [[ANKRedNavigation alloc] initWithRootViewController:news3];
    
    MoreViewController *more = [MoreViewController new];
    [self setTabBarStyleWithCon:more seletImage:kTab5_Selete normlImage:kTab5_Normal];
    ANKNormalNavigation *navMore = [[ANKNormalNavigation alloc] initWithRootViewController:more];

    self.viewControllers = @[newNav,gameNav,nav2,nav3,navMore];
    
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
