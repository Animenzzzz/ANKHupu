//
//  HotListViewCellSocial.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewCellSocial.h"


@interface HotListViewCellSocial()
@property (weak, nonatomic) IBOutlet UILabel *visitLab;
@property (weak, nonatomic) IBOutlet UILabel *replieLab;
@property (weak, nonatomic) IBOutlet UILabel *lightLab;
@property (weak, nonatomic) IBOutlet UILabel *shareLab;

@end

@implementation HotListViewCellSocial

- (void)setLights:(NSString *)lights{
    self.lightLab.text = lights;
}

- (void)setVisits:(NSString *)visits{
    self.visitLab.text = visits;
}

- (void)setReplies:(NSString *)replies{
    self.replieLab.text = replies;
}

- (void)setShareNum:(NSString *)shareNum{
    self.shareLab.text = shareNum;
}

@end
