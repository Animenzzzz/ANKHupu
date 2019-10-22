//
//  NewsPhotosCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/30.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsPhotosCell.h"
#import "HotListCellCollectionCell.h"

static NSString *kPhotoCollectionViewCellID = @"CollectionCellID";

@interface NewsPhotosCell()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation NewsPhotosCell{
    HotListModel *_dataModel;
}

- (void)setFrame:(CGRect)frame{
    frame.origin.y += kCellSeparaOffset;
    frame.size.height -= kCellSeparaOffset;
    [super setFrame:frame];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.userIcon.layer.cornerRadius = 3.0;
    self.replyIcon.layer.cornerRadius = 3.0;
    
    self.contenLab.numberOfLines = 0;
    self.replyContentLab.numberOfLines = 0;
    self.titleLab.numberOfLines = 0;
    self.userNameLab.numberOfLines = 0;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)cellBindWithDataModel:(HotListModel *)model{
    
    [self.userIcon sd_setImageWithURL:[NSURL URLWithString:model.hotInfo.topic_logo] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.userIcon.image = image;
    }];
    self.titleLab.text = model.hotInfo.topic_name;
    self.userNameLab.text = model.hotInfo.nickname;
    
    self.titleLabWidth.constant = [UILabel getWidthWithTitle:model.hotInfo.topic_name font:self.titleLab.font];
    self.userNameLabWidth.constant = [UILabel getWidthWithTitle:model.hotInfo.nickname font:self.userNameLab.font];
    
    CGFloat height = [UILabel getHeightByWidth:(SCREEN_WIDTH - self.contentLabLeft.constant-self.contentLabRight.constant) title:model.hotInfo.title font:self.contenLab.font];
    self.contenLab.text = model.hotInfo.title;
    self.contenLabHeight.constant = height;
    
    if (model.hotInfo.pics.count){
        
        _dataModel = model;
    
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = CGSizeMake(collectionPhotoHeight, collectionPhotoHeight);
        CGFloat margin = 2;//这是cell之间的间隔
        layout.minimumLineSpacing = margin;
//        _collectionView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:layout];
        [self.photoCollectionView registerNib:[UINib nibWithNibName:@"HotListCellCollectionCell" bundle:nil] forCellWithReuseIdentifier:kPhotoCollectionViewCellID];
        [self.photoCollectionView setCollectionViewLayout:layout];
        
        self.photoCollectionView.delegate = self;
        self.photoCollectionView.dataSource = self;
    }else{
        self.photoCollectionView.hidden = YES;
    }
    
    if (model.hotInfo.light_replies.count){
        
        CGFloat orignH = self.replyContentLabHeight.constant;
        
        RepliesModel *repls = [model.hotInfo.light_replies objectAtIndex:0];
        self.replyContentLab.text = repls.content;
        CGFloat newHeight = [UILabel getHeightByWidth:(self.replyView.width- self.replyContentLeft.constant-self.replyContentRight.constant) title:repls.content font:self.replieLab.font];
        self.replyContentLabHeight.constant = newHeight;
        self.replyViewHeight.constant = self.replyViewHeight.constant - orignH+newHeight+10;
        
        if (![repls.content length]) {
            self.replyView.hidden = YES;
        }else{
            self.replyName.text = repls.nickname;
            NSArray *arr = [repls.header componentsSeparatedByString:@"?"];//通过空格符来分隔字符串
            self.replyIcon.contentMode = UIViewContentModeScaleAspectFill;//因为图片尺寸不一致，选择填充
            [self.replyIcon sd_setImageWithURL:[NSURL URLWithString:arr[0]] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                self.replyIcon.image = image;
            }];
        }
    }else{
        self.replyView.hidden = YES;
    }
    
    
    self.visitLab.text = [NSString stringWithFormat:@"%ld",model.hotInfo.visits];
    self.replieLab.text = [NSString stringWithFormat:@"%ld",model.hotInfo.replies];
    self.shareLab.text = [NSString stringWithFormat:@"%ld",model.hotInfo.share_num];
    self.lightLab.text = [NSString stringWithFormat:@"%ld",model.hotInfo.lights];
    
    self.visitLabWidth.constant = [UILabel getWidthWithTitle:[NSString stringWithFormat:@"%ld",model.hotInfo.visits] font:self.visitLab.font];
    self.replieLabWidth.constant = [UILabel getWidthWithTitle:[NSString stringWithFormat:@"%ld",model.hotInfo.replies] font:self.replieLab.font];
    self.sharLabWidth.constant = [UILabel getWidthWithTitle:[NSString stringWithFormat:@"%ld",model.hotInfo.share_num] font:self.shareLab.font];
    self.lightLabWidth.constant = [UILabel getWidthWithTitle:[NSString stringWithFormat:@"%ld",model.hotInfo.lights] font:self.lightLab.font];
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSInteger pic_count = _dataModel.hotInfo.pics.count;
    return pic_count>=3 ? 3:pic_count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    HotListCellCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kPhotoCollectionViewCellID forIndexPath:indexPath];
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
