//
//  ANKTagScroll.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/15.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface ANKTagScroll : UIView

@property (nonatomic, assign) BOOL moreListEnable;

//可选择的项
@property (nonatomic, strong) NSMutableArray *selectDataArray;


@end

NS_ASSUME_NONNULL_END
