//
//  HotListViewCellTopicView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewCellTopicView.h"
#import "UILabel+AutoFit.h"
#import "UIView+frame.h"
#import "Masonry.h"
@interface HotListViewCellTopicView()
@property (weak, nonatomic) IBOutlet UILabel *topicNameLab;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topNameLabWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nickNameLabWidth;

@end

@implementation HotListViewCellTopicView

- (void)awakeFromNib{
    [super awakeFromNib];
}


- (void)setNickName:(NSString *)nickName{
    
    self.nickNameLab.text = nickName;
    CGFloat width = [UILabel getWidthWithTitle:nickName font:self.nickNameLab.font];
    self.nickNameLabWidth.constant = width;
}

- (void)setTopicName:(NSString *)topicName{
    
    self.topicNameLab.text = topicName;
    CGFloat width = [UILabel getWidthWithTitle:topicName font:self.topicNameLab.font];
    self.topNameLabWidth.constant = width;
}

@end
