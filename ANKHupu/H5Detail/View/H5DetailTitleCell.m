//
//  H5DetailTitleCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/23.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailTitleCell.h"
#import "NewsDetailModel.h"
#import "NBANewsType5Model.h"
#import "H5DetailTitleView.h"
#define kNewsTitleToCellTop1  5
#define kNewsTitleToCellLeft1 10
#define kNewsTitleWidth1     (SCREEN_WIDTH - kNewsTitleToCellLeft1*2)
#define kAddTimeToTile1       10
#define kAddTimeHeight1       10
#define kAddTimeToButtom1     10

@interface H5DetailTitleCell ()

@property(nonatomic, strong) UILabel *newsTitleLab;
@property(nonatomic, strong) UILabel *addTimeLab;

@end

@implementation H5DetailTitleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setStyleWithModel:(id)model newsType:(NewsType)type{
    
    if (type == NewsTypeNormal) {
        NewsDetailModel *resultModel = (NewsDetailModel *)model;
        
        self.newsTitleLab.text = resultModel.data.news.title;
        [self addSubview:self.newsTitleLab];
        CGFloat height = [UILabel getHeightByWidth:kNewsTitleWidth1 title:resultModel.data.news.title font:self.newsTitleLab.font];
        [self.newsTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(kNewsTitleToCellTop1);
            make.left.mas_equalTo(kNewsTitleToCellLeft1);
            make.width.mas_equalTo(kNewsTitleWidth1);
            make.height.mas_equalTo(height);
        }];
        
        self.addTimeLab.text = [NSString stringWithFormat:@"%@ %@",resultModel.data.news.addtime,resultModel.data.news.origin];
        [self addSubview:self.addTimeLab];
        [self.addTimeLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.newsTitleLab.mas_bottom).offset(kAddTimeToTile1);
            make.left.mas_equalTo(kNewsTitleToCellLeft1);
            make.width.mas_equalTo(160);
            make.height.mas_equalTo(kAddTimeHeight1);
        }];
        
        
    }else if(type == NewsTypeTopic){
        
        NBANewsType5Model *resultModel = (NBANewsType5Model *)model;
        
        
        self.newsTitleLab.text = resultModel.title;
        [self addSubview:self.newsTitleLab];
        CGFloat height = [UILabel getHeightByWidth:kNewsTitleWidth1 title:resultModel.title font:self.newsTitleLab.font];
        [self.newsTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(kNewsTitleToCellTop1);
            make.left.mas_equalTo(kNewsTitleToCellLeft1);
            make.width.mas_equalTo(kNewsTitleWidth1);
            make.height.mas_equalTo(height);
        }];
        
        
        
        NSString *userIcon = resultModel.nBAType5offlineData.nBAType5data.userImg;
        NSString *userName = resultModel.userName;
        NSString *time = resultModel.nBAType5offlineData.nBAType5data.time;
        NSString *visits = resultModel.nBAType5offlineData.nBAType5data.visits;
//        NSString *cerInfo = resultModel.nBAType5offlineData.nBAType5data.cert_info;
        
        H5DetailTitleView *view = [[[UINib nibWithNibName:@"H5DetailTitleView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
        [view.userIconImage sd_setImageWithURL:[NSURL URLWithString:userIcon] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
            view.userIconImage.image = image;
        }];
        view.userName = userName;
        view.newsInfo = [NSString stringWithFormat:@"%@  阅读 %@",time,visits];
        
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.newsTitleLab.mas_bottom).offset(10);
            make.left.mas_equalTo(kNewsTitleToCellLeft1);
            make.width.mas_equalTo(375);
            make.height.mas_equalTo(44);
        }];
    }
    
    
}

- (UILabel *)newsTitleLab{
    if (!_newsTitleLab) {
        _newsTitleLab = [UILabel new];
        [_newsTitleLab setFont:[UIFont fontWithName:@"Helvetica-Bold" size:19]];
        _newsTitleLab.numberOfLines = 0;
    }
    return _newsTitleLab;
}

- (UILabel *)addTimeLab{
    if (!_addTimeLab) {
        _addTimeLab = [UILabel new];
        _addTimeLab.font = [UIFont systemFontOfSize:13];
        _addTimeLab.textColor = [UIColor grayColor];
    }
    return _addTimeLab;
}


@end
