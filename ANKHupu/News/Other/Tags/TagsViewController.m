//
//  TagsViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "TagsViewController.h"
#import "TagCellView.h"
#import "DynamicColorUtil.h"
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
    _orderUserDataArray = [[self getOrderUserDataWithKey:kOrderUserData] mutableCopy];
    _unOrderUserDataArray = [[self getOrderUserDataWithKey:kUnOrderUserData] mutableCopy];
    
    [self initViews];
    [self laySubView];
    [self requestData];
}

- (NSString *)backIcon{
    return @"back_white";
}
#pragma mark - Init（initVars initViews）
- (void)initViews{

    self.controllerTitle = @"自定义频道";
    self.showShare = NO;

}

- (UITableView *)tableView{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
        _tableView.scrollEnabled = NO;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        __weak typeof(self)weakSelf = self;
        [DynamicColorUtil cellBackGroundColor:^(UIColor * _Nullable color) {
            weakSelf.tableView.backgroundColor = color;
        }];
        [DynamicColorUtil seperatLineColor:^(UIColor * _Nullable color) {
            weakSelf.tableView.separatorColor = color;
        }];
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
        _tagListColleView.backgroundColor = [UIColor clearColor];
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
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor clearColor];
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
        cell.backgroundColor = [UIColor clearColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
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
        [DynamicColorUtil titleBackGroundColor:^(UIColor * _Nullable color) {
            l1.textColor = color;
        }];
        
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
    
    for (UIView *subv in cell.subviews) {
        if ([subv isKindOfClass:[TagCellView class]]) {
            [subv removeFromSuperview];
        }
    }

    TagCellView *tag = [[[UINib nibWithNibName:@"TagCellView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    tag.delegate = self;
    if (indexPath.section == 0) {
        tag.actionType = indexPath.row == 0 ? TagNoneAction:TagDeleteAction;
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

- (NSMutableArray *)getOrderUserDataWithKey:(NSString *)key{

    NSMutableArray *result = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (!result.count) {//第一次进入
        if ([key isEqualToString:kOrderUserData]) {//我的频道
            NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"推荐",@"NBA",@"绝地求生",@"英雄联盟", nil];
            [self updateOrderUserDataWithKey:key multArray:arr];
            result = [arr mutableCopy];
        }else{
            NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"URLInfo" ofType:@"plist"];
            NSDictionary *dataDic = [NSDictionary dictionaryWithContentsOfFile:plistPath];
            NSMutableDictionary *tmp = [dataDic mutableCopy];
            [tmp removeObjectForKey:@"推荐"];
            NSMutableArray *arr = [[tmp allKeys] mutableCopy];
            [self updateOrderUserDataWithKey:key multArray:arr];
            result = arr;
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
