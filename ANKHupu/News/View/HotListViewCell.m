//
//  HotListViewCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewCell.h"
#import "HotListViewCellTopicView.h"
//#import "HotListViewCellHotInfo.h"
#import "HotInfoPhotoCollectionView.h"
#import "HotListViewCellCommentInfo.h"
#import "HotListViewCellSocial.h"
#import "SDWebImage.h"
#import "Masonry.h"
#import "UILabel+AutoFit.h"
@interface HotListViewCell()

@property (nonatomic, weak) HotListViewCellTopicView *topicView;
//@property (nonatomic, weak) HotListViewCellHotInfo *hotInfoView;
@property (nonatomic, weak) HotListViewCellCommentInfo *commentInfoView;
@property (nonatomic, weak) HotListViewCellSocial *socialView;

@end

@implementation HotListViewCell{
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    NSLog(@"");
}

- (void)setFrame:(CGRect)frame{
//    frame.origin.x += 10;
    frame.origin.y += kCellSeparaOffset;
    frame.size.height -= kCellSeparaOffset;
//    frame.size.width -= kCellSeparaOffset;
    [super setFrame:frame];
}



- (void)bindWithHotListModel:(HotListModel *)model{
    
    //话题信息栏
    self.topicView = [[[UINib nibWithNibName:@"HotListViewCellTopicView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    self.topicView.nickName = model.hotInfo.nickname;
    self.topicView.topicName = model.hotInfo.topic_name;
    [self.topicView.topicImage sd_setImageWithURL:[NSURL URLWithString:model.hotInfo.topic_logo] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.topicView.topicImage.image = image;
    }];
    //话题信息栏___布局
    [self addSubview:self.topicView];
    [self.topicView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kHotListCell_top);
        make.left.mas_equalTo(kHotListCell_left);
        make.height.mas_equalTo(topic_1);
        make.width.mas_equalTo(SCREEN_WIDTH);
    }];

    //信息正文
    UILabel *titleLab = [UILabel new];
    titleLab.font = [UIFont systemFontOfSize:17];
    titleLab.text = model.hotInfo.title;
    titleLab.numberOfLines = 0;
    CGFloat fitHeight = [UILabel getHeightByWidth:kHotInfoWidth title:model.hotInfo.title font:titleLab.font];//动态计算高度
    [self addSubview:titleLab];
    //信息正文___布局
    [titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kHotListCell_top+topic_info_2+topic_1);
        make.left.mas_equalTo(kHotListCell_left);
        make.height.mas_equalTo(fitHeight);
        make.width.mas_equalTo(kHotInfoWidth);
    }];
    
    //信息正文(图片)
    if (model.hotInfo.pics.count){
        HotInfoPhotoCollectionView *collectionView = [[HotInfoPhotoCollectionView alloc] initWithFrame:CGRectMake(0, 0, info_you_other, info_you_other)];
        [self addSubview:collectionView];
        [collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(titleLab.mas_bottom).offset(8);
            make.left.mas_equalTo(kHotListCell_left);
        }];
        
        [collectionView laySubViewWithInfoModel:model];
    }

    
//    //评论信息
    if (model.hotInfo.light_replies.count) {//有评论，才加载视图
        self.commentInfoView = [[[UINib nibWithNibName:@"HotListViewCellCommentInfo" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
        RepliesModel *repls = [model.hotInfo.light_replies objectAtIndex:0];
        self.commentInfoView.comment = repls.content;
        self.commentInfoView.nickName = repls.nickname;
        NSArray *arr = [repls.header componentsSeparatedByString:@"?"];//通过空格符来分隔字符串
        [self.commentInfoView.iconImage sd_setImageWithURL:[NSURL URLWithString:arr[0]] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
            self.commentInfoView.iconImage.image = image;
        }];
    //评论信息___布局
        [self addSubview:self.commentInfoView];
        [self.commentInfoView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(-(kHotListCell_bottom+share_7+comment_share_6));
            make.left.mas_equalTo(kHotListCell_left);
            make.height.mas_equalTo(comment_5);
            make.width.mas_equalTo(SCREEN_WIDTH-20);
        }];
    }

    //分享、点赞等信息
    self.socialView = [[[UINib nibWithNibName:@"HotListViewCellSocial" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    self.socialView.visits = [NSString stringWithFormat:@"查看:%ld",model.hotInfo.visits];
    self.socialView.replies = [NSString stringWithFormat:@"回复:%ld",model.hotInfo.replies];
    self.socialView.shareNum = [NSString stringWithFormat:@"分享:%ld",model.hotInfo.share_num];
    self.socialView.lights = [NSString stringWithFormat:@"赞:%ld",model.hotInfo.lights];
    //分享、点赞等信息___布局
    [self addSubview:self.socialView];
    [self.socialView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(-(kHotListCell_bottom));
        make.left.mas_equalTo(kHotListCell_left);
        make.height.mas_equalTo(share_7);
        make.width.mas_equalTo(SCREEN_WIDTH);
    }];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
