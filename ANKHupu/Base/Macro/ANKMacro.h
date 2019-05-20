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

#define SCREEN_WIDTH (MIN([UIScreen mainScreen].bounds.size.width, [UIScreen  mainScreen].bounds.size.height))
#define SCREEN_HEIGHT (MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))

//分割线颜色
#define kSeperatLineColor [UIColor                                            colorWithHexString:@"eaeaea"]

//导航栏高度
#define kNavigationBarHeight                                                  64.0                            //TODO...待优化，适配机型

//导航栏下方 滚动条的高度
#define kScrollTagHeight                                                      44.0
//导航栏下方 滚动条右边更多按钮的宽度
#define kScrollTagMoreBtnWidth                                                44.0

//tableview灰色背景y颜色
#define kGrayBackGroundColor [UIColor                                         colorWithHexString:@"eaeaea"]
//tableview cell间隔
#define kCellSeparaOffset 3.0

//推荐页(hotList)
//到顶部高度 + topic栏_高 + topic栏-->内容栏间隔 + 内容栏_高 + 内容栏-->评论栏 + 评论栏_高 + 评论栏-->share + share_高 + 到底部高度
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

#endif /* ANKMacro_h */
