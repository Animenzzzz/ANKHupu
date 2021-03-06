//
//  NBANewsCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsNormalCell.h"
#import "DynamicColorUtil.h"
@interface NewsNormalCell ()
@end

@implementation NewsNormalCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.titleLab.numberOfLines = 0;
    self.newsImg.contentMode = UIViewContentModeScaleAspectFill;
    // 左 右 image宽 iamge右
    self.titleWidth = SCREEN_WIDTH - 14 - 18 - 100 - 15;
    [DynamicColorUtil cellBackGroundColor:^(UIColor *color) {
        self.backgroundColor = color;
    }];
    [DynamicColorUtil titleBackGroundColor:^(UIColor *color) {
        self.titleLab.textColor = color;
    }];

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
    
    [self setText:newsTitle lineSpacing:5.0f];
    
}

-(void)setText:(NSString*)text lineSpacing:(CGFloat)lineSpacing {
    if (!text || lineSpacing < 0.01) {
        self.titleLab.text = text;
        return;
    }
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpacing];        //设置行间距
    [paragraphStyle setLineBreakMode:self.titleLab.lineBreakMode];
    [paragraphStyle setAlignment:self.titleLab.textAlignment];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [text length])];
    self.titleLab.attributedText = attributedString;
}

- (void)readStyleWithNid:(NSString *)nid{
    NSDictionary *haveReadNews = [[NSUserDefaults standardUserDefaults] dictionaryForKey:USER_DEFAULTS_HAVE_READ_NEWS];
    if ([haveReadNews objectForKey:nid]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [DynamicColorUtil titleSelectBackGroundColor:^(UIColor *color) {
                self.titleLab.textColor = color;
            }];
        });
        
    }
}

@end
