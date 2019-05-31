//
//  ANKDataMacro.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/24.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#ifndef ANKDataMacro_h
#define ANKDataMacro_h


//标签用户数据存储
#define kOrderUserData @"OrderUserData"
#define kUnOrderUserData @"UnOrderUserData"

typedef NS_ENUM(NSInteger,NewsType) {
    NewsTypeNormal  = 1,//1:视频+正常新闻
    NewsTypeSpecial = 2,//2:专题
    NewsTypePic     = 3,//3:cell上有多个图片（在 thumbs 数组里面）
    NewsTypeTopic   = 5,//5:话题。。球鞋。。经典回顾
    
    NewsTypePhotoReply   = 8,//
};

//资源
//首页搜索框样式
#define kSearchViewLeftImage @"projectIcon.png"
#define kSearchViewRightCommentBtnImage @"bg_nav_comment"

//首页tab图标
#define kTab1_Normal @"tab_news_btn_night"
#define kTab1_Selete @"tab_news_btn_1"

#define kTab2_Normal @"tab_games1_btn_normal_night"
#define kTab2_Selete @"tab_games1_btn_select"

#define kTab3_Normal @"tab_bbs_btn_night"
#define kTab3_Selete @"tab_bbs_btn_1"

#define kTab4_Normal @"tab_shoes_btn_night"
#define kTab4_Selete @"tab_shoes_btn_select"

#define kTab5_Normal @"tab_more_btn_night"
#define kTab5_Selete @"tab_more_btn_1"

//网络请求大图placehld图片
#define kPlaceHoldImg @"placehold_big"


#endif /* ANKDataMacro_h */
