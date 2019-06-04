//
//  BBSCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/4.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "BBSCell.h"

@implementation BBSCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.headIcon.layer.cornerRadius = 3.0;
   
    
    self.titleLab.numberOfLines = 0;
//    self.replyContentLab.numberOfLines = 0;
//    self.titleLab.numberOfLines = 0;
//    self.userNameLab.numberOfLines = 0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)cellBindWithDataModel:(BBSData *)model{
    
    [self.headIcon sd_setImageWithURL:[NSURL URLWithString:model.forumLogo] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.headIcon.image = image;
    }];
    
    self.fornumNameLab.text = model.forumName;
    self.fornumNameWidth.constant = [UILabel getWidthWithTitle:model.forumName font:self.fornumNameLab.font];
    
    self.userNameLab.text = model.userName;
    
    NSString *content = model.title;
    if (![content length]) {
        content = @"?????????";
    }
    
    CGFloat titW = SCREEN_WIDTH - self.titLbLeft.constant - self.titLbRight.constant;
    CGFloat titH = [UILabel getHeightByWidth:titW title:content font:self.titleLab.font lineSpacing:5.0];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:5.0];        //设置行间距
    [paragraphStyle setLineBreakMode:self.titleLab.lineBreakMode];
    [paragraphStyle setAlignment:self.titleLab.textAlignment];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:content];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [content length])];
    self.titleLab.attributedText = attributedString;
    self.titLbHeight.constant = titH;
    
}

@end
