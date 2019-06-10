//
//  GameCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/10.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "GameCell.h"

@interface GameCell()
@property (weak, nonatomic) IBOutlet UIImageView *awayLogoImage;
@property (weak, nonatomic) IBOutlet UILabel *awayNameLab;
@property (weak, nonatomic) IBOutlet UILabel *awaySorLab;

@property (weak, nonatomic) IBOutlet UILabel *statusLab;

@property (weak, nonatomic) IBOutlet UIImageView *homeLogoImage;
@property (weak, nonatomic) IBOutlet UILabel *homeNameLab;
@property (weak, nonatomic) IBOutlet UILabel *homeSorLab;


@end

@implementation GameCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setFrame:(CGRect)frame{
    frame.origin.y += kCellSeparaOffset;
    frame.size.height -= kCellSeparaOffset;
    frame.origin.x += kCellSeparaOffset;
    frame.size.width -= kCellSeparaOffset;
    [super setFrame:frame];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)cellBindWithModel:(MatchesData *)model{
    
    [self.awayLogoImage sd_setImageWithURL:[NSURL URLWithString:model.away.logo] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.awayLogoImage.image = image;
    }];
    self.awayNameLab.text = model.away.name;
    self.awaySorLab.text = [NSString stringWithFormat:@"%ld",(long)model.awayScore];
    
    self.statusLab.text = model.status.txt;
    
    [self.homeLogoImage sd_setImageWithURL:[NSURL URLWithString:model.home.logo] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.homeLogoImage.image = image;
    }];
    self.homeNameLab.text = model.home.name;
    self.homeSorLab.text = [NSString stringWithFormat:@"%ld",(long)model.homeScore];
}

@end
