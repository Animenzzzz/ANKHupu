//
//  ANKNavigationViewSearch.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "CWCalendarLabel.h"
NS_ASSUME_NONNULL_BEGIN

@protocol ANKNavigationViewSearchDelegate <NSObject>

- (void)hotSearchViewClick;
- (void)commentClick;

@end

@interface ANKNavigationViewSearch : UIView

//+ (ANKNavigationViewSearch *)shareInstance;

@property (weak, nonatomic) IBOutlet CWCalendarLabel *cwHotSearchLab;

@property (weak, nonatomic) id<ANKNavigationViewSearchDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
