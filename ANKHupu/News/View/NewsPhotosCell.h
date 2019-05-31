//
//  NewsPhotosCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/30.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotListModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewsPhotosCell : UITableViewCell

//Cell的标题头
@property (weak, nonatomic) IBOutlet UIImageView *userIcon;
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabWidth;
@property (weak, nonatomic) IBOutlet UILabel *userNameLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *userNameLabWidth;

//Cell的内容及其约束
@property (weak, nonatomic) IBOutlet UILabel *contenLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contenLabHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentLabLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentLabRight;

//内容照片
@property (weak, nonatomic) IBOutlet UICollectionView *photoCollectionView;

//回复View
@property (weak, nonatomic) IBOutlet UIView *replyView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replyViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replyViewLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replyViewRight;


@property (weak, nonatomic) IBOutlet UIImageView *replyIcon;
@property (weak, nonatomic) IBOutlet UILabel *replyName;

//回复的内容 及其 约束
@property (weak, nonatomic) IBOutlet UILabel *replyContentLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replyContentLabHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replyContentLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replyContentRight;

//点赞等信息
@property (weak, nonatomic) IBOutlet UILabel *visitLab;
@property (weak, nonatomic) IBOutlet UILabel *replieLab;
@property (weak, nonatomic) IBOutlet UILabel *lightLab;
@property (weak, nonatomic) IBOutlet UILabel *shareLab;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *visitLabWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replieLabWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lightLabWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sharLabWidth;


- (void)cellBindWithDataModel:(HotListModel *)model;

@end

NS_ASSUME_NONNULL_END
