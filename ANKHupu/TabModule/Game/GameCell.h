//
//  GameCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/10.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MatchesRootModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface GameCell : UITableViewCell

- (void)cellBindWithModel:(MatchesData *)model;

@end

NS_ASSUME_NONNULL_END
