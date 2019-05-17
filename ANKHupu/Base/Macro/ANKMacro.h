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

#define SCREEN_WIDTH (MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))
#define SCREEN_HEIGHT (MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))

//分割线颜色
#define kSeperatLineColor [UIColor colorWithHexString:@"eaeaea"]

//导航栏高度
#define kNavigationBarHeight 64.0 //TODO...待优化，适配机型

//导航栏下方 滚动条的高度
#define kScrollTagHeight 44.0
//导航栏下方 滚动条右边更多按钮的宽度
#define kScrollTagMoreBtnWidth 44.0

//tableview灰色背景y颜色
#define kGrayBackGroundColor [UIColor colorWithHexString:@"eaeaea"]
//tableview cell间隔
#define kCellSeparaOffset 3.0

//推荐页(hotList)
#define HotListViewCellTopicView_xib_height 25 //topic栏，高度
#define TopicToInfoOffset_height 5 //topic栏--->内容  
#define HotListViewCellHotInfo_xib_titleLab_height 21 //内容的title高度
#define HotListViewCellHotInfo_xib_collectPic_height 111 //内容的图片高度
#define InfoToComment_height 5 //内容--->评论
#define Comment_height 80   //评论高度
#define CommentToShare_height 5 //评论-->share
#define HotListViewCellSocial_xib_height 25 //分享、赞等栏，高度
#define kHotListCell_top (15+kCellSeparaOffset)
#define kHotListCell_left 12
#define kHotListCell_bottom 15
//到顶部高度 + topic栏_高 + topic栏-->内容栏间隔 + 内容栏_高 + 内容栏-->评论栏 + 评论栏_高 + 评论栏-->share + share_高 + 到底部高度

#endif /* ANKMacro_h */
