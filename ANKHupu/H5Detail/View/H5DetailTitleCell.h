//
//  H5DetailTitleCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/23.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "NewsDetailModel.h"
#import "ANKBaseNewsDetailModel.h"
NS_ASSUME_NONNULL_BEGIN



@interface H5DetailTitleCell : UITableViewCell

//- (void)setStyleWithModel:(id)model newsType:(NewsType)type;

- (void)setStyleWithModel:(ANKBaseNewsDetailModel *)model newsType:(NewsType)type;


@end

NS_ASSUME_NONNULL_END
