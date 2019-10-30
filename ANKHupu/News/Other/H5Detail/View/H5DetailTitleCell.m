//
//  H5DetailTitleCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/23.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailTitleCell.h"
#import "H5DetailTitleView.h"
#import "DynamicColorUtil.h"



#define kAddTimeToTile       10
#define kAddTimeHeight       10
#define kAddTimeToButtom     10




//type1
#define kUIFontType1     [UIFont fontWithName:@"Helvetica-Bold" size:19]

#define kType1_NewsTitleToCellTop  5
#define kType1_NewsTitleToCellLeft 10
#define kType1_NewsTitleWidth     (SCREEN_WIDTH - kType1_NewsTitleToCellLeft*2)


//type2
#define kUIFontType2     [UIFont fontWithName:@"Helvetica-Bold" size:22]
#define kType2_NewsTitleToCellTop  18
#define kType2_NewsTitleToCellLeft 14
#define kType2_NewsTitleWidth     (SCREEN_WIDTH - kType2_NewsTitleToCellLeft*2)

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

- (void)setStyleWithModel:(NewsDetailAdapter *)model newsType:(NewsType)type{
    
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    if (type == NewsTypeNormal) {
    
        self.newsTitleLab.text = model.newsTitle;
        [self.newsTitleLab setFont:kUIFontType1];
        [self addSubview:self.newsTitleLab];
        CGFloat height = [UILabel getHeightByWidth:kType1_NewsTitleWidth title:model.newsTitle font:self.newsTitleLab.font];
        [self.newsTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(kType1_NewsTitleToCellTop);
            make.left.mas_equalTo(kType1_NewsTitleToCellLeft);
            make.width.mas_equalTo(kType1_NewsTitleWidth);
            make.height.mas_equalTo(height);
        }];
        
        
        self.addTimeLab.text = [NSString stringWithFormat:@"%@ %@",model.addTime,model.origin];
        [self addSubview:self.addTimeLab];
        [self.addTimeLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.newsTitleLab.mas_bottom).offset(kAddTimeToTile);
            make.left.mas_equalTo(kType1_NewsTitleToCellLeft);
            make.width.mas_equalTo(160);
            make.height.mas_equalTo(kAddTimeHeight);
        }];
        
        
    }else if(type == NewsTypeTopic || type == NewsTypePhotoReply){
        
        
        self.newsTitleLab.text = model.newsTitle;
        [self.newsTitleLab setFont:kUIFontType2];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:5.0];        //设置行间距
        [paragraphStyle setLineBreakMode:self.newsTitleLab.lineBreakMode];
        [paragraphStyle setAlignment:self.newsTitleLab.textAlignment];
        
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:model.newsTitle];
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [model.newsTitle length])];
        self.newsTitleLab.attributedText = attributedString;
        
        
        
        [self addSubview:self.newsTitleLab];
        CGFloat height = [UILabel getHeightByWidth:kType2_NewsTitleWidth title:model.newsTitle font:self.newsTitleLab.font lineSpacing:5.0];
        [self.newsTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(kType2_NewsTitleToCellTop);
            make.left.mas_equalTo(kType2_NewsTitleToCellLeft);
            make.width.mas_equalTo(kType2_NewsTitleWidth);
            make.height.mas_equalTo(height);
        }];
    
        
        H5DetailTitleView *view = [[[UINib nibWithNibName:@"H5DetailTitleView" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
        [view.userIconImage sd_setImageWithURL:[NSURL URLWithString:model.userImg] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
            view.userIconImage.image = image;
        }];
        view.userName = model.userName;
        view.newsInfo = [NSString stringWithFormat:@"%@  阅读 %@",model.time,model.visits];
        
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.newsTitleLab.mas_bottom).offset(10);
            make.left.mas_equalTo(kType2_NewsTitleToCellLeft);
            make.width.mas_equalTo(375);
            make.height.mas_equalTo(44);
        }];
    }
    
    
}

+ (CGFloat)calcuHeightWithType: (NewsType)type model:(NewsDetailAdapter *)model{
    
    
    if (type == NewsTypeNormal) {
        
        CGFloat height = [UILabel getHeightByWidth:kType1_NewsTitleWidth title:model.newsTitle font:kUIFontType1];
        
        return height+kType1_NewsTitleToCellTop+kAddTimeHeight+kAddTimeToTile+kAddTimeToButtom;
        
    }else if (type == NewsTypeTopic || type == NewsTypePhotoReply){
        CGFloat height = [UILabel getHeightByWidth:kType2_NewsTitleWidth title:model.newsTitle font:kUIFontType2];
        
        return kType2_NewsTitleToCellTop+height+44+30;
    }
    
    
    
    return 30;
}

- (UILabel *)newsTitleLab{
    if (!_newsTitleLab) {
        _newsTitleLab = [UILabel new];
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
