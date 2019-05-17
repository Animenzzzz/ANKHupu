//
//  HotListViewCellCommentInfo.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewCellCommentInfo.h"

@interface HotListViewCellCommentInfo()
@property (weak, nonatomic) IBOutlet UILabel *nickNameLab;
@property (weak, nonatomic) IBOutlet UITextView *commentText;

@end

@implementation HotListViewCellCommentInfo

- (void)setNickName:(NSString *)nickName{
    self.nickNameLab.text = nickName;
}

- (void)setComment:(NSString *)comment{
    self.commentText.text = comment;
}


@end
