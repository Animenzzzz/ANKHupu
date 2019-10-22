//
//  ANKNavigationController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKNavigation.h"

@interface ANKNavigation ()

@end

@implementation ANKNavigation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   [self setNavigationBarHidden:YES];
}

// push进去的控制器隐藏tabBar
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
//    self.topViewController.hidesBottomBarWhenPushed = YES;
    
    [super pushViewController:viewController animated:animated];
}



@end
