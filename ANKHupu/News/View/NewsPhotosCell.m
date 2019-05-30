//
//  NewsPhotosCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/30.
//  Copyright © 2019 Animenzzz. All rights reserved.
//



//话题信息栏
//self.topicView = [[[UINib nibWithNibName:@"HotListViewCellTopicView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
//self.topicView.nickName = model.hotInfo.nickname;
//self.topicView.topicName = model.hotInfo.topic_name;
//[self.topicView.topicImage sd_setImageWithURL:[NSURL URLWithString:model.hotInfo.topic_logo] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//    self.topicView.topicImage.image = image;
//}];
////话题信息栏___布局
//[self addSubview:self.topicView];
//[self.topicView mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.top.mas_equalTo(kHotListCell_top);
//    make.left.mas_equalTo(kHotListCell_left);
//    make.height.mas_equalTo(topic_1);
//    make.width.mas_equalTo(SCREEN_WIDTH);
//}];
//
////信息正文
//UILabel *titleLab = [UILabel new];
//titleLab.font = [UIFont systemFontOfSize:17];
//titleLab.text = model.hotInfo.title;
//titleLab.numberOfLines = 0;
//CGFloat fitHeight = [UILabel getHeightByWidth:kHotInfoWidth title:model.hotInfo.title font:titleLab.font];//动态计算高度
//[self addSubview:titleLab];
////信息正文___布局
//[titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.top.mas_equalTo(kHotListCell_top+topic_to_infoTitle_2+topic_1);
//    make.left.mas_equalTo(kHotListCell_left);
//    make.height.mas_equalTo(fitHeight);
//    make.width.mas_equalTo(kHotInfoWidth);
//}];
//
////信息正文(图片)
//if (model.hotInfo.pics.count){
//    HotInfoPhotoCollectionView *collectionView = [[HotInfoPhotoCollectionView alloc] initWithFrame:CGRectMake(0, 0, collectionPhotoHeight, collectionPhotoHeight)];
//    [self addSubview:collectionView];
//    [collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(titleLab.mas_bottom).offset(topic_to_infoTitle_2);
//        make.left.mas_equalTo(kHotListCell_left);
//    }];
//
//    [collectionView laySubViewWithInfoModel:model];
//}
//
//
////    //评论信息
//if (model.hotInfo.light_replies.count) {//有评论，才加载视图
//    self.commentInfoView = [[[UINib nibWithNibName:@"HotListViewCellCommentInfo" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
//    RepliesModel *repls = [model.hotInfo.light_replies objectAtIndex:0];
//    self.commentInfoView.comment = repls.content;
//    self.commentInfoView.nickName = repls.nickname;
//    NSArray *arr = [repls.header componentsSeparatedByString:@"?"];//通过空格符来分隔字符串
//    self.commentInfoView.contentMode = UIViewContentModeScaleAspectFill;//因为图片尺寸不一致，选择填充
//    [self.commentInfoView.iconImage sd_setImageWithURL:[NSURL URLWithString:arr[0]] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//        self.commentInfoView.iconImage.image = image;
//    }];
//    //评论信息___布局
//    [self addSubview:self.commentInfoView];
//    [self.commentInfoView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.mas_equalTo(-(kHotListCell_bottom+share_7+comment_share_6));
//        make.left.mas_equalTo(kHotListCell_left);
//        make.height.mas_equalTo(comment_5);
//        make.width.mas_equalTo(SCREEN_WIDTH-20);
//    }];
//}
//
////分享、点赞等信息
//self.socialView = [[[UINib nibWithNibName:@"HotListViewCellSocial" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
//self.socialView.visits = [NSString stringWithFormat:@"查看:%ld",model.hotInfo.visits];
//self.socialView.replies = [NSString stringWithFormat:@"回复:%ld",model.hotInfo.replies];
//self.socialView.shareNum = [NSString stringWithFormat:@"分享:%ld",model.hotInfo.share_num];
//self.socialView.lights = [NSString stringWithFormat:@"赞:%ld",model.hotInfo.lights];



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
        self.replyViewHeight.constant = self.replyViewHeight.constant - orignH+newHeight;
        
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
    
    
    self.visitLab.text = [NSString stringWithFormat:@"查看:%ld",model.hotInfo.visits];
    self.replieLab.text = [NSString stringWithFormat:@"回复:%ld",model.hotInfo.replies];
    self.shareLab.text = [NSString stringWithFormat:@"分享:%ld",model.hotInfo.share_num];
    self.lightLab.text = [NSString stringWithFormat:@"赞:%ld",model.hotInfo.lights];


    
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
