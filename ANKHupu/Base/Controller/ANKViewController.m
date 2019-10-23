//
//  ANKViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKViewController.h"

@interface ANKViewController ()

@property(nonatomic,strong) UIButton *backBtn;
@property(nonatomic,strong) UIButton *shareBtn;

@end

@implementation ANKViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"" forState:UIControlStateNormal];
    [button setImage:[ResUtil imageNamed:@"back_btn"] forState:UIControlStateNormal];
    button.size = CGSizeMake(15, 15);
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    // 让按钮内部的所有内容左对齐
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //    // 让按钮的内容往左边偏移10
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    button.imageEdgeInsets = UIEdgeInsetsMake(7, 6, 7, 6);
    // 修改导航栏左边的item
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.backBtn = button;
    
    
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [shareButton setTitle:@"" forState:UIControlStateNormal];
    [shareButton setImage:[ResUtil imageNamed:@"biaoqing"] forState:UIControlStateNormal];
    shareButton.size = CGSizeMake(25, 25);
    [shareButton addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    shareButton.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -10);
    // 修改导航栏左边的item
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:shareButton];
    self.shareBtn = shareButton;

}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // 右滑返回
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.delegate = nil;
    }
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //在pop回界面的时候，使用动画
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

#pragma mark - Init（initVars initViews）

-(void)setControllerTitle:(NSString *)controllerTitle{
    self.navigationItem.title = controllerTitle;
}

- (void)setShowBack:(BOOL)showBack{
    self.backBtn.hidden = !showBack;
}

- (void)setShowShare:(BOOL)showShare{
    self.shareBtn.hidden = !showShare;
}

- (void)setTitleColor:(UIColor *)titleColor{
    [self.navigationController.navigationBar setTitleTextAttributes:

    @{NSFontAttributeName:[UIFont systemFontOfSize:19],

    NSForegroundColorAttributeName:titleColor}];
}

#pragma mark - Layout Subviews（layoutSubview）
- (void)loadView{
    [super loadView];
    
}

#pragma mark - Network request

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
#pragma mark UITableViewDelegate

#pragma mark - Custom protocol 
#pragma mark - Custom functions

- (void)backClick{
    
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}
#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
