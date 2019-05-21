//
//  HotListViewCellCommentInfo.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HotListViewCellCommentInfo : UIView

@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (nonatomic, strong) NSString *nickName;
@property (nonatomic, strong) NSString *comment;

@end

NS_ASSUME_NONNULL_END
