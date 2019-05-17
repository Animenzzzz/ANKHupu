//
//  HotListViewCellHotInfo.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotListModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface HotListViewCellHotInfo : UIView

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *titleSmall;

- (void)laySubViewWithInfoModel:(HotListModel *)model;

@end

NS_ASSUME_NONNULL_END
