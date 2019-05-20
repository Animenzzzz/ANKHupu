//
//  UIView+frame.h
//  KJNews
//
//  Created by Animenzzzzzz on 2017/5/9.
//  Copyright © 2017年 Animenzzzzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (frame)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;


- (void)addTapAction:(SEL)tapAction target:(id)target;

@end
