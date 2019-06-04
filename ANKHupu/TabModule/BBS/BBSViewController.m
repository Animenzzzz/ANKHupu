//
//  BBSViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/4.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "BBSViewController.h"

@interface BBSViewController ()

@property(nonatomic, strong) NSMutableArray *seletTagArray;

@end

@implementation BBSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (NSMutableArray *)seletTagArray{
    if (!_seletTagArray) {
        _seletTagArray = [[NSMutableArray alloc] initWithObjects:@"关注",@"话题",nil];
    }
    return _seletTagArray;
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{

    return self.seletTagArray.count;
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
    
    return [self.seletTagArray objectAtIndex:index];
}



- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    
    return [[UIViewController alloc] init];
}

- (CGFloat)menuView:(WMMenuView *)menu widthForItemAtIndex:(NSInteger)index {
    CGFloat width = [super menuView:menu widthForItemAtIndex:index];
    return width + 20;
}


- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
    CGFloat leftMargin = self.showOnNavigationBar ? 50 : 0;
    CGFloat originY = 64;
    CGRect rec = CGRectMake(leftMargin, originY, self.view.frame.size.width - 2*leftMargin, 44);
    return rec;
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
  
    CGFloat originY = 64;
    
    CGRect rec = CGRectMake(0, originY, self.view.frame.size.width, self.view.frame.size.height - originY);
   
    return rec;
}


@end
