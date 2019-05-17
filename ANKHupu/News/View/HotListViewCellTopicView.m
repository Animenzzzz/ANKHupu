//
//  HotListViewCellTopicView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewCellTopicView.h"

@interface HotListViewCellTopicView()
@property (weak, nonatomic) IBOutlet UILabel *topicNameLab;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLab;

@end

@implementation HotListViewCellTopicView

- (void)awakeFromNib{
    [super awakeFromNib];
}

- (void)setNickName:(NSString *)nickName{
    self.nickNameLab.text = nickName;
}

- (void)setTopicName:(NSString *)topicName{
    self.topicNameLab.text = topicName;
}

@end
