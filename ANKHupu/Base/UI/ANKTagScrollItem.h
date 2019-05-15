//
//  ANKTagScrollCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/15.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ANKTagScrollItem : UICollectionViewCell

@property (nonatomic, copy) NSString *seletTitle;

- (void)redLineHiddenStatue:(BOOL)hidden;

@end

NS_ASSUME_NONNULL_END
