//
//  HotListViewModel.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/30.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotListModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface HotListViewModel : NSObject

+ (CGFloat)calutaCellHeightWithModel:(HotListModel *)model;

@end

NS_ASSUME_NONNULL_END
