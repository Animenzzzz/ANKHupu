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

typedef NS_ENUM(NSInteger,CommentType) {
    CommentTypeNormal  = 1,  //普通评论
    CommentTypeLight = 2,    //亮评
};

//网络请求大图placehld图片
#define kPlaceHoldImg @"placehold_big"

// 已经阅读过的新闻
#define USER_DEFAULTS_HAVE_READ_NEWS  @"UserDefaultsNewsHaveRead"


#endif /* ANKDataMacro_h */
