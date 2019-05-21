//
//  ANKMacro.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#ifndef ANKMacro_h
#define ANKMacro_h
#import "UIColor+Category.h"


#pragma mark =================间距、尺寸=====================
//屏幕宽高
#define SCREEN_WIDTH (MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))
#define SCREEN_HEIGHT (MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))
//导航栏高度
#define kNavigationBarHeight   64.0//TODO...待优化，适配机型
//导航栏下方 滚动条的高度
#define kScrollTagHeight       44.0
//导航栏下方 滚动条右边更多按钮的宽度
#define kScrollTagMoreBtnWidth 54.0
//tableview cell间隔
#define kCellSeparaOffset 3.0

//推荐页(hotList)
#define kHotListCell_bottom   15
#define kHotListCell_left     12
#define kHotListCell_top      (15+kCellSeparaOffset)
#define kHotInfoWidth         (SCREEN_WIDTH-kCellSeparaOffset*2-kHotListCell_left*2)
#define topic_1               25                                                    //topic栏，高度
#define topic_to_infoTitle_2  8                                                     //topic栏--->内容title,内容title要动态计算
#define infoTitle_to_photo_3  8                                                     //内容title ---> 内容图片
#define collectionPhotoHeight 111                                                   //内容_有图
#define info_to_comment_4     15                                                    //内容--->评论
#define comment_5             80                                                    //评论
#define comment_share_6       5                                                     //评论-->share
#define share_7               25                                                    //评论

//NBA页




#pragma mark ================= 颜色 =====================
//分割线颜色
#define kSeperatLineColor [UIColor                                            colorWithHexString:@"eaeaea"]
//tableview灰色背景y颜色
#define kGrayBackGroundColor [UIColor                                         colorWithHexString:@"eaeaea"]
//随机颜色
#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))


#pragma mark ================= 其他设置 =====================
//标签用户数据存储
#define kOrderUserData @"OrderUserData"
#define kUnOrderUserData @"UnOrderUserData"


#endif /* ANKMacro_h */
