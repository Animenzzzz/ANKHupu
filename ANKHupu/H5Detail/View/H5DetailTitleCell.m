//
//  H5DetailTitleCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/23.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailTitleCell.h"
#import "Masonry.h"
#import "SDWebImage.h"
#import "UILabel+AutoFit.h"
#import "UIView+frame.h"

#define kNewsTitleToCellTop1  5
#define kNewsTitleToCellLeft1 15
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

- (void)setStyleWithModel:(NewsDetailModel *)model newsType:(NewsType)type{
    
    self.newsTitleLab.text = model.data.news.title;
    [self addSubview:self.newsTitleLab];
    CGFloat height = [UILabel getHeightByWidth:kNewsTitleWidth1 title:model.data.news.title font:self.newsTitleLab.font];
    [self.newsTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kNewsTitleToCellTop1);
        make.left.mas_equalTo(kNewsTitleToCellLeft1);
        make.width.mas_equalTo(kNewsTitleWidth1);
        make.height.mas_equalTo(height);
    }];
    
    self.addTimeLab.text = [NSString stringWithFormat:@"%@ %@",model.data.news.addtime,model.data.news.origin];
    [self addSubview:self.addTimeLab];
    [self.addTimeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.newsTitleLab.mas_bottom).offset(kAddTimeToTile1);
        make.left.mas_equalTo(kNewsTitleToCellLeft1);
        make.width.mas_equalTo(160);
        make.height.mas_equalTo(kAddTimeHeight1);
    }];
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
