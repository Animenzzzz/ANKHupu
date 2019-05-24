//
//  HotInfoPhotoCollectionView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotInfoPhotoCollectionView.h"
#import "HotListCellCollectionCell.h"
static NSString *kCollectionViewCellID = @"CollectionCellID";
@interface HotInfoPhotoCollectionView()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation HotInfoPhotoCollectionView{
    HotListModel *_dataModel;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    [self addSubview:self.collectionView];
    return self;
}

- (UICollectionView *)collectionView{
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = CGSizeMake(collectionPhotoHeight, collectionPhotoHeight);
        CGFloat margin = 2;//这是cell之间的间隔
        layout.minimumLineSpacing = margin;
        _collectionView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerNib:[UINib nibWithNibName:@"HotListCellCollectionCell" bundle:nil] forCellWithReuseIdentifier:kCollectionViewCellID];
    }
    
    return _collectionView;
}

- (void)laySubViewWithInfoModel:(HotListModel *)model{
    _dataModel = model;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSInteger pic_count = _dataModel.hotInfo.pics.count;
    return pic_count>=3 ? 3:pic_count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    HotListCellCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellID forIndexPath:indexPath];
    NSDictionary *dic = [_dataModel.hotInfo.pics objectAtIndex:indexPath.row];
    NSString *imgURL = [dic objectForKey:@"url"];
    NSArray *arr = [imgURL componentsSeparatedByString:@"?"];//通过空格符来分隔字符串
    
    cell.commentPic.contentMode = UIViewContentModeScaleAspectFill;//因为图片尺寸不一致，选择填充
    [cell.commentPic sd_setImageWithURL:[NSURL URLWithString:arr[0]] placeholderImage:[ResUtil imageNamed:kPlaceHoldImg] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        cell.commentPic.image = image;
    }];
    
    return cell;
}

@end
