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
    self.layer.cornerRadius = 5.0;
}

- (void)setFrame:(CGRect)frame{
    frame.origin.y += 8;
    frame.size.height -= 8;
    frame.origin.x += 8;
    frame.size.width -= 16;
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
    NSString *aSera = @"";
    if (model.awaySeries || model.awaySeries.length) {
        aSera = [NSString stringWithFormat:@"(%@)",model.awaySeries];
    }
    self.awayNameLab.text = [NSString stringWithFormat:@"%@%@",model.away.name,aSera];
    self.awaySorLab.text = [NSString stringWithFormat:@"%ld",(long)model.awayScore];
    
    self.statusLab.text = model.status.txt;
    
    [self.homeLogoImage sd_setImageWithURL:[NSURL URLWithString:model.home.logo] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.homeLogoImage.image = image;
    }];
    
    NSString *hSera = @"";
    if (model.awaySeries || model.awaySeries.length) {
        hSera = [NSString stringWithFormat:@"(%@)",model.homeSeries];
    }
    self.homeNameLab.text = [NSString stringWithFormat:@"%@%@",model.home.name,hSera];
    self.homeSorLab.text = [NSString stringWithFormat:@"%ld",(long)model.homeScore];
}

@end
