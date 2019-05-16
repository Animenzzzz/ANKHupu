//
//  HotListViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewController.h"
#import "ANKHttpServer.h"
#import "HotListModel.h"
#import "Masonry.h"

@interface HotListViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation HotListViewController


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kScrollTagHeight);
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
    }];
    
    [ANKHttpServer getHotListWithSuccesBlock:^(NSDictionary * _Nonnull data) {
        NSDictionary *dic =data[@"error"];
        if (dic) {//请求报错
            NSString *errorInfo = [dic objectForKey:@"text"];
            NSLog(@"%@",errorInfo);
        }else{
            HotListResponeModel *model = [HotListResponeModel yy_modelWithDictionary:data];
            NSLog(@"");
        }
    } failure:^(NSDictionary * _Nonnull data, NSError * _Nonnull error) {
        NSLog(@"");
    }];
}


#pragma mark - Init（initVars initViews）

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    
    return _tableView;
}
#pragma mark - Layout Subviews（layoutSubview）
#pragma mark - Network request

#pragma mark - System protocol 
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [UITableViewCell new];
    return cell;
}
#pragma mark UITableViewDelegate
//为了消除cell顶部的空间
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}

#pragma mark - Custom protocol 
#pragma mark - Custom functions

#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
