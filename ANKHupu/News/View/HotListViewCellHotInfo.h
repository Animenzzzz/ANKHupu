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

@property (weak, nonatomic) IBOutlet UILabel *titleLab;//因为外面要根据uifont获取宽度，所以先暴露出来 TODO...

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *titleSmall;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *hotInfoTitleHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *hotInfoTitleHeight2;

- (void)laySubViewWithInfoModel:(HotListModel *)model;

@end

NS_ASSUME_NONNULL_END
