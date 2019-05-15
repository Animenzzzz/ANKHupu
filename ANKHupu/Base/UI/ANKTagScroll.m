//
//  ANKTagScroll.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/15.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKTagScroll.h"
#import "ANKTagScrollItem.h"
#import "UILabel+AutoFit.h"
static NSString *const kANKTagScrollCellID = @"ANKTagScrollCellID";

@interface ANKTagScroll()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UIButton *moreBtn;

@end


@implementation ANKTagScroll


- (void)awakeFromNib{
    [super awakeFromNib];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //宽高
    layout.itemSize = CGSizeMake(42, kScrollTagHeight);
    CGFloat  margin = 8;
//    if(iPhone6plus){
//        margin = 30;
//    }else{
//        margin = 23;
//    }
    
    layout.minimumLineSpacing = margin;
    [_collectionView setCollectionViewLayout:layout];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.showsHorizontalScrollIndicator = NO;
    [self addSubview:_collectionView];
    [_collectionView registerNib:[UINib nibWithNibName:@"ANKTagScrollItem" bundle:nil] forCellWithReuseIdentifier:kANKTagScrollCellID];
    
    self.backgroundColor = [UIColor whiteColor];
}

- (void)setMoreListEnable:(BOOL)moreListEnable{
    
    self.moreBtn.hidden = !moreListEnable;
}


- (IBAction)moreBtnClick:(id)sender {
}


#pragma mark - CollectionView DataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.selectDataArray.count;
}

//定义每个Section的四边间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 5, 0, 5);//分别为上、左、下、右
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    //不用复用。。。避免在选中的时候多个cell样式同时改变。。TODO...待优化
    ANKTagScrollItem *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kANKTagScrollCellID forIndexPath:indexPath];
    NSString *title = [self.selectDataArray objectAtIndex:indexPath.row];
    cell.seletTitle = title;
    
    NSLog(@"%@   %ld",title,(long)indexPath.row);
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGSize size;
//    size.width = [(NSString*)[self.selectDataArray objectAtIndex:indexPath.row] sizeWithAttributes:NULL].width;
    size.height = kScrollTagHeight;
    size.width = [UILabel getWidthWithTitle:(NSString*)[self.selectDataArray objectAtIndex:indexPath.row] font:[UIFont fontWithName:@"Helvetica-Bold" size:kScrollTitleSize_NO_Select]];
    return size;
}


#pragma mark - CollectionView Delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ANKTagScrollItem *cell = (ANKTagScrollItem *)[collectionView cellForItemAtIndexPath:indexPath];
    [cell redLineHiddenStatue:NO];
//    [self.collectionView reloadData];

}

//取消选中操作
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    ANKTagScrollItem *cell = (ANKTagScrollItem *)[collectionView cellForItemAtIndexPath:indexPath];
    [cell redLineHiddenStatue:YES];
}



@end
