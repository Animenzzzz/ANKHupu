//
//  MoreControllCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "MoreControllCell.h"

@interface MoreControllCell()
@property (weak, nonatomic) IBOutlet UILabel *cellInfoLab;

@end

@implementation MoreControllCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCellTitle:(NSString *)cellTitle{
    self.cellInfoLab.text = cellTitle;
}

@end
