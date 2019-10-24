//
//  H5DetailCommentCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/27.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsCommentAdapter.h"
NS_ASSUME_NONNULL_BEGIN

@interface H5DetailCommentCell : UITableViewCell



- (void)loadDataWithModel:(CommentDetailData *)model;

+ (CGFloat)calculatHeightWithModel:(CommentDetailData *)model;

@end

NS_ASSUME_NONNULL_END
