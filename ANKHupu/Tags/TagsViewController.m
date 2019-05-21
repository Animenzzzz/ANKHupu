//
//  TagsViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "TagsViewController.h"
#import "UIView+frame.h"
#import "TagCellView.h"
#import "Masonry.h"
#import "UILabel+AutoFit.h"
@interface TagsViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,TagCellViewDelegate>

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UICollectionView *tagListColleView;

@end


static NSString* const kCellIDentify = @"cell";
static NSString* const kHeaderViewIDentify = @"HeaderView";

@implementation TagsViewController{
    NSMutableArray *_orderUserDataArray;
    NSMutableArray *_unOrderUserDataArray;
}


#pragma mark - Lify cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _orderUserDataArray = [self getOrderUserDataWithKey:kOrderUserData];
    _unOrderUserDataArray = [self getOrderUserDataWithKey:kUnOrderUserData];
    
    [self initViews];
    [self laySubView];
    [self requestData];

//    [[NSUserDefaults standardUserDefaults] removeObjectForKey:kOrderUserData];
//    [[NSUserDefaults standardUserDefaults] removeObjectForKey:kUnOrderUserData];

    
}


#pragma mark - Init（initVars initViews）
- (void)initViews{

    self.navigationItem.title = @"自定义频道";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"" forState:UIControlStateNormal];
    [button setImage:[ResUtil imageNamed:@"zhuangbei_back_btn"] forState:UIControlStateNormal];
    button.size = CGSizeMake(25, 25);
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    // 让按钮内部的所有内容左对齐
//    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//    // 让按钮的内容往左边偏移10
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    // 修改导航栏左边的item
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    

}

- (UITableView *)tableView{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
        _tableView.scrollEnabled = NO;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = [UIColor whiteColor];
    }
    
    return _tableView;
}

- (UICollectionView *)tagListColleView{
    if (!_tagListColleView) {
        
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
//        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = CGSizeMake((SCREEN_WIDTH)/4, 40);
        layout.minimumLineSpacing = 4;//垂直方向间距
        layout.minimumInteritemSpacing = 0;//水平方向间距
        layout.headerReferenceSize = CGSizeMake(SCREEN_WIDTH, 50);
//        layout.sectionInset = UIEdgeInsetsMake(0, 4, 0, 4);
        _tagListColleView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _tagListColleView.delegate = self;
        _tagListColleView.dataSource = self;
        _tagListColleView.backgroundColor = [UIColor whiteColor];
        _tagListColleView.scrollEnabled = NO;
        [_tagListColleView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kCellIDentify];
        [_tagListColleView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:kHeaderViewIDentify];
       
    }
    
    return _tagListColleView;
}

#pragma mark - Layout Subviews（layoutSubview）

- (void)laySubView{
    
    [self.view addSubview:self.tableView];
}

#pragma mark - Network request

- (void)requestData {
    
}

#pragma mark - System protocol 
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        UITableViewCell *cell = [UITableViewCell new];
        
        TagCellView *tag = [[[UINib nibWithNibName:@"TagCellView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
        tag.title = @"推荐";
        [cell addSubview:tag];
        [tag mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(cell.mas_centerY);
            make.leading.mas_equalTo(10);
            make.height.mas_equalTo(35);
            make.width.mas_equalTo(69);
        }];
        
        
        UIView *line = [UIView new];
        line.backgroundColor = kSeperatLineColor;
        [cell addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(0);
            make.right.mas_equalTo(0);
            make.left.mas_equalTo(10);
            make.height.mas_equalTo(1);
        }];
        
        return cell;
    }else{
        UITableViewCell *cell = [UITableViewCell new];
        [cell addSubview:self.tagListColleView];
        [self.tagListColleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(5);
            make.left.right.mas_equalTo(0);
            make.width.mas_equalTo(SCREEN_WIDTH);
            make.height.mas_equalTo(440);
        }];
        return cell;
    }
    
    return nil;
}
#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return 70;
    }
    
    return 440;
}

#pragma mark  UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    if (section == 0) {
        return _orderUserDataArray.count;
    }
    
    return _unOrderUserDataArray.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}

////这个也是最重要的方法 获取Header的 方法。
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{

    if ([kind isEqualToString:UICollectionElementKindSectionHeader]){
        UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:kHeaderViewIDentify forIndexPath:indexPath];
        
        for (UIView *view in headerView.subviews) {
            [view removeFromSuperview];
        }
        
        UILabel *l1 = [UILabel new];
        [l1 setFont:[UIFont fontWithName:@"Helvetica-Bold" size:17]];
        [headerView addSubview:l1];
        
        UILabel *l2 = [UILabel new];
        [l2 setFont:[UIFont systemFontOfSize:15]];
        l2.textColor = [UIColor grayColor];
        [headerView addSubview:l2];
        
        CGFloat l1_width = 80;
        if (indexPath.section == 0) {//删除
            l2.text = @"(长按拖动调整顺序)";
            l1.text = @"我的频道";
            l1_width =  [UILabel getWidthWithTitle:l1.text font:l1.font];
            
        }else{//添加
            l2.text = @"(点击添加到我的频道)";
            l1.text = @"未添加的频道";
            l1_width =  [UILabel getWidthWithTitle:l1.text font:l1.font];
        }
        
        [l1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(headerView.mas_centerY);
            make.left.mas_equalTo(13);
            make.height.mas_equalTo(30);
            make.width.mas_equalTo(l1_width);
        }];
        
        [l2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(headerView.mas_centerY);
            make.left.equalTo(l1.mas_right).offset(5);
            make.height.mas_equalTo(15);
            make.width.mas_equalTo(160);
        }];
        
        
        return headerView;
    }

    return nil;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellIDentify forIndexPath:indexPath];
//    cell.backgroundColor = randomColor;
    TagCellView *tag = [[[UINib nibWithNibName:@"TagCellView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    tag.delegate = self;
    if (indexPath.section == 0) {
        tag.actionType = TagDeleteAction;
        tag.title = [_orderUserDataArray objectAtIndex:indexPath.row];
    }else{
        tag.actionType = TagAddAction;
        tag.title = [_unOrderUserDataArray objectAtIndex:indexPath.row];
    }
    
    [cell addSubview:tag];
    [tag mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(cell.mas_centerX);
        make.centerY.equalTo(cell.mas_centerY);
        make.width.mas_equalTo(69);
        make.height.mas_equalTo(35);
    }];
        
    return cell;


}

#pragma mark - Custom protocol

#pragma mark TagCellViewDelegate
- (void)tagCellViewDidTapInViewWithType:(TagActionType)type title:(NSString *)title{
    if (type == TagDeleteAction) {
        [_orderUserDataArray removeObject:title];
        [_unOrderUserDataArray addObject:title];
    }else if(type == TagAddAction){
        [_unOrderUserDataArray removeObject:title];
        [_orderUserDataArray addObject:title];
    }
    
    [self updateOrderUserDataWithKey:kOrderUserData multArray:[_orderUserDataArray mutableCopy]];
    [self updateOrderUserDataWithKey:kUnOrderUserData multArray:[_unOrderUserDataArray mutableCopy]];
    [self.tagListColleView reloadData];
}

#pragma mark - Custom functions
- (void)backClick{
    
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (NSMutableArray *)getOrderUserDataWithKey:(NSString *)key{

    NSMutableArray *result = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (!result.count) {//第一次进入
        if ([key isEqualToString:kOrderUserData]) {//我的频道
            NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"推荐", nil];
            [self updateOrderUserDataWithKey:key multArray:arr];
            result = [arr mutableCopy];
        }else{
            NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"NewsTag" ofType:@"plist"];
            NSArray *dataDic = [NSArray arrayWithContentsOfFile:plistPath];
            NSMutableArray *arr = [dataDic mutableCopy];
            [self updateOrderUserDataWithKey:key multArray:arr];
            result = [arr mutableCopy];
        }
    }
    
    return result;
}

- (void)updateOrderUserDataWithKey:(NSString *)key multArray:(NSMutableArray *)dataArray{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    [[NSUserDefaults standardUserDefaults] setObject:dataArray forKey:key];
    return ;
}
#pragma mark - Notification(addNotificationaObserver)

#pragma mark - Event response
#pragma mark - KVO

@end
