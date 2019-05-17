
//
//  HotListViewCellHotInfo.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewCellHotInfo.h"

@interface HotListViewCellHotInfo()
@property (weak, nonatomic) IBOutlet UILabel *titleLab;

@end

@implementation HotListViewCellHotInfo

- (void)awakeFromNib{
    [super awakeFromNib];
}


- (void)setTitle:(NSString *)title{
    self.titleLab.text = title;
}

@end
