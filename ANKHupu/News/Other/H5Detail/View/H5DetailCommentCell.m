//
//  H5DetailCommentCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/27.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailCommentCell.h"
#import "NSString+Util.h"


#define kCommentXibHeight 182
#define kCommentGrayHeight 60
#define kCommentQuoteWidth (SCREEN_WIDTH - 55 - 12) // H5DetailCommentCell.xib的queote view左右间距
#define kCommentContentWidth (SCREEN_WIDTH - 55 - 20)


@interface H5DetailCommentCell()
@property (weak, nonatomic) IBOutlet UILabel *userNameLab;
@property (weak, nonatomic) IBOutlet UILabel *addTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *quoteUserLab;
@property (weak, nonatomic) IBOutlet UILabel *lightLab;
@property (weak, nonatomic) IBOutlet UILabel *contenLab;
@property (weak, nonatomic) IBOutlet UILabel *quoteContenLab;
@property (weak, nonatomic) IBOutlet UIImageView *headerIcon;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contenLabHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *quoteContenLabHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *quoteViewHeight;
@property (weak, nonatomic) IBOutlet UIView *quoteView;

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

- (void)loadDataWithModel:(CommentDetailData *)model{
    
    // 用户名
    self.userNameLab.text = model.userName;
    
    // 用户头像
    [self.headerIcon sd_setImageWithURL:[NSURL URLWithString:model.userHeader] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.headerIcon.image = image;
    }];
    
    // 评论的内容
    [self changeLineSpaceWithText:model.content label:self.contenLab];
    CGFloat contenHeight = [UILabel getHeightByWidth:kCommentContentWidth title:model.content font:self.contenLab.font lineSpacing:5.0];
    self.contenLabHeight.constant = contenHeight;
    
    // 评论的时间
    self.addTimeLab.text = model.addTime;
    
    // 亮了
    self.lightLab.text = [NSString stringWithFormat:@"亮了(%@)",model.lightCount];
    
    // 是否引用了别人的评论
    if (![model.quoteContent length]) {
        self.quoteView.hidden = YES;
    }else{
        
        // 被引用的用户名
        self.quoteUserLab.text = model.quoteName;
        
        // 被引用的内容
        [self changeLineSpaceWithText:model.quoteContent label:self.quoteContenLab];

        CGFloat quoteHeight = [UILabel getHeightByWidth:kCommentQuoteWidth title:model.quoteContent font:self.quoteContenLab.font lineSpacing:5.0];
        CGFloat orignContenLab = self.quoteContenLabHeight.constant;
        self.quoteContenLabHeight.constant = quoteHeight;
        self.quoteViewHeight.constant = self.quoteViewHeight.constant - orignContenLab+quoteHeight;
        
    }
}

- (void)changeLineSpaceWithText:(NSString *)text label:(UILabel *)lab{
    
    NSString *fil = [NSString filterH5:text];

    lab.text = fil;

    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:5.0];        //设置行间距
    [paragraphStyle setLineBreakMode:lab.lineBreakMode];
    [paragraphStyle setAlignment:lab.textAlignment];

    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:fil];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [fil length])];
    lab.attributedText = attributedString;
}

+ (CGFloat)calculatHeightWithModel:(CommentDetailData *)model{
    
    CGFloat cellHeight = 0;
    CGFloat contenHeight = [UILabel getHeightByWidth:284 title:model.content font:[UIFont systemFontOfSize:16]];
    cellHeight = kCommentXibHeight-21+contenHeight;
    
    
    if (![model.quoteContent length]) {//评论是否有回复
        cellHeight = cellHeight - kCommentGrayHeight;
    }else{
        
        CGFloat quoteHeight = [UILabel getHeightByWidth:kCommentQuoteWidth title:model.quoteContent font:[UIFont systemFontOfSize:15] lineSpacing:5.0];
        cellHeight = cellHeight - 21+quoteHeight;
        
    }
    return cellHeight;
}

@end
