//
//  NBANewsCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NBANewsCell.h"

@interface NBANewsCell ()
@end

@implementation NBANewsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.titleLab.numberOfLines = 0;
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setNewsTitle:(NSString *)newsTitle{
    self.titleLab.text = newsTitle;
    
    
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    [paragraphStyle setLineSpacing:2.0];        //设置行间距
//    [paragraphStyle setLineBreakMode:self.titleLab.lineBreakMode];
//    [paragraphStyle setAlignment:self.titleLab.textAlignment];
//    
//    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:newsTitle];
//    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [newsTitle length])];
//    self.titleLab.attributedText = attributedString;
    
}

@end
