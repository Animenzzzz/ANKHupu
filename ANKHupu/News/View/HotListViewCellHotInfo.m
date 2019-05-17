
//
//  HotListViewCellHotInfo.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewCellHotInfo.h"
#import "HotListCellCollectionCell.h"
#import "SDWebImage.h"
@interface HotListViewCellHotInfo()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

static NSString *kCollectionCellID = @"CollectionCellID";
@implementation HotListViewCellHotInfo{
    HotListModel *_dataModel;
}

- (void)awakeFromNib{
    [super awakeFromNib];
}


- (void)setTitle:(NSString *)title{
    self.titleLab.text = title;
}

- (void)laySubViewWithInfoModel:(HotListModel *)model{
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.itemSize = CGSizeMake(HotListViewCellHotInfo_xib_collectPic_height, HotListViewCellHotInfo_xib_collectPic_height);
//    layout.minimumLineSpacing = margin;
//    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    [_collectionView setCollectionViewLayout:layout];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"HotListCellCollectionCell" bundle:nil] forCellWithReuseIdentifier:kCollectionCellID];
    _dataModel = model;
    
    if (!model.hotInfo.pics.count) {
        self.collectionView.hidden = YES;
    }

}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSInteger pic_count = _dataModel.hotInfo.pics.count;
    return pic_count>=3 ? 3:pic_count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    HotListCellCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionCellID forIndexPath:indexPath];
    NSDictionary *dic = [_dataModel.hotInfo.pics objectAtIndex:indexPath.row];
    NSString *imgURL = [dic objectForKey:@"url"];
    NSArray *arr = [imgURL componentsSeparatedByString:@"?"];//通过空格符来分隔字符串

    [cell.commentPic sd_setImageWithURL:[NSURL URLWithString:arr[0]] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        cell.commentPic.image = image;
    }];
    
    return cell;
}

@end
