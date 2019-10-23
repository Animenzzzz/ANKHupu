//
//  ANKViewController.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ANKViewController : UIViewController

@property(nonatomic, copy) NSString *controllerTitle;
@property(nonatomic, copy) UIColor *titleColor;
@property(nonatomic, assign) BOOL showBack;//默认显示
@property(nonatomic, assign) BOOL showShare;//默认显示

@end

NS_ASSUME_NONNULL_END
