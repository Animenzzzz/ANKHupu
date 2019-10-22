//
//  H5DetailCommentCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/27.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailCommentCell.h"
#import "NSString+Util.h"
@interface H5DetailCommentCell()
@property (weak, nonatomic) IBOutlet UILabel *userNameLab;
@property (weak, nonatomic) IBOutlet UILabel *addTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *quoteUserLab;
@property (weak, nonatomic) IBOutlet UILabel *lightLab;

@end

@implementation H5DetailCommentCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.contenLab.numberOfLines = 0;
    self.quoteContenLab.numberOfLines = 0;
    
    //  把图片设置成圆形。  我这里在故事版里面设置的imageView是一个正方形(因为头像图片都是放在正方形的imageView里)
    self.headerIcon.layer.cornerRadius=self.headerIcon.frame.size.width/2;//裁成圆角
    self.headerIcon.layer.masksToBounds=YES;//隐藏裁剪掉的部分
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setAddTime:(NSString *)addTime{
    self.addTimeLab.text = addTime;
}

- (void)setContent:(NSString *)content{
    
    NSString *fil = [NSString filterH5:content];
    
    self.contenLab.text = fil;
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:5.0];        //设置行间距
    [paragraphStyle setLineBreakMode:self.contenLab.lineBreakMode];
    [paragraphStyle setAlignment:self.contenLab.textAlignment];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:fil];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [fil length])];
    self.contenLab.attributedText = attributedString;
}

- (void)setUserName:(NSString *)userName{
    self.userNameLab.text = userName;
}

- (void)setQuoteName:(NSString *)quoteName{
    self.quoteUserLab.text = quoteName;
}

- (void)setQuoteContent:(NSString *)quoteContent{
    
    NSString *fil = [NSString filterH5:quoteContent];
    
    self.quoteContenLab.text = fil;
    
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:5.0];        //设置行间距
    [paragraphStyle setLineBreakMode:self.quoteContenLab.lineBreakMode];
    [paragraphStyle setAlignment:self.quoteContenLab.textAlignment];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:fil];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [fil length])];
    self.quoteContenLab.attributedText = attributedString;
    
}

- (void)setLightNum:(NSString *)lightNum{
    self.lightLab.text = [NSString stringWithFormat:@"亮了(%@)",lightNum];
}

@end
