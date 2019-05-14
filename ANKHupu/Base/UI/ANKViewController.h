//
//  ANKViewController.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANKNavigationViewFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface ANKViewController : UIViewController

- (instancetype)initWithNavigationViewType:(NavigationViewType)naviType;

@end

NS_ASSUME_NONNULL_END
