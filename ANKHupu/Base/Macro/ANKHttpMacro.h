//
//  ANKHttpMacro.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/13.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#ifndef ANKHttpMacro_h
#define ANKHttpMacro_h

//虎扑域名
#define kHPServiceHost @"https://games.mobileapi.hupu.com"

//以下为固定参数 8个
#define kParam_client      @"client=c77bc7cfa00b1800f399938c4b3720aae4783b2a"
#define kParam_clientId    @"clientId=30980511"
#define kParam_advId       @"advId=E12875A5-1076-4C57-9488-B5311B604032"
#define kParam_ssid        @"_ssid=VFQtUXVXYW4xN0Y"
#define kParam_night       @"night=0"
#define kParam_crt         @"crt=1557906702"
#define kParam_time_zone   @"time_zone=Asia%2FShanghai"
#define kParam_sign        @"sign=3366090f5a1d473a7b9ff3904c816af7"

//固定参数拼接
#define kParam_full  [NSString stringWithFormat:@"%@&%@&%@&%@&%@&%@&%@&%@",kParam_client,kParam_clientId,kParam_advId,kParam_ssid,kParam_night,kParam_crt,kParam_time_zone,kParam_sign]



//------NBA（额外参数：7个）  翻页规则： 1：pre_count=0为页数 0，20，40  2：nid参数为上一个请求的最后一条nid
#define kNBA           @"/3/7.3.12/nba/getNews"
#define kNBA_param1    @"news_first_navi=NBA"
#define kNBA_param3    @"nid=0"
#define kNBA_param4    @"first_navi_numbers=2"
#define kNBA_param5    @"preload=0"
#define kNBA_param6    @"direc=next"
#define kNBA_param7    @"num=20"
#define kNBA_full_Params    [NSString stringWithFormat:@"?%@&%@&%@&%@&%@&%@&%@",kNBA_param1,kNBA_param3,kNBA_param4,kNBA_param5,kNBA_param6,kNBA_param7,kParam_full]
#define kNBA_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kNBA,kNBA_full_Params]

//type = 1
#define kNBA_DetailH5_Type1 @"http://games.mobileapi.hupu.com/3/7.3.12/news/createNewsDetailH5?offline=json&leaguesEn=nba&entrance=&night=0&nopic=0&time_zone=Asia%2FShanghai&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&webp=0"
//type = 5
#define kNBA_DetailH5_Type5_1 @"http://bbs.mobileapi.hupu.com/3/7.3.12/threads/"
#define kNAB_DetailH5_Type5_2 @"?ft=18&clientId=30980511&advId=E12875A5-1076-4C57-9488-B5311B604032&fid=1048&entrance=6&isScheme=1&_ssid=VFQtUXVXYW4xN0Y&night=0&crt=1558598038&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&time_zone=Asia%2FShanghai&sign=eacc415f819d085abc8f86418bef4f23"


//type
//1:视频+正常新闻？？？
//2:专题
//3:cell上有多个图片（在 thumbs 数组里面）
//5:话题。。球鞋。。经典回顾


//以下是type=5
//307626
//27549885--（这个数据在 link 字段里面）
//http://bbs.mobileapi.hupu.com/3/7.3.12/threads/27549885?ft=18&clientId=30980511&advId=E12875A5-1076-4C57-9488-B5311B604032&fid=1048&entrance=6&isScheme=1&_ssid=VFQtUXVXYW4xN0Y&night=0&crt=1558598038&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&time_zone=Asia%2FShanghai&sign=eacc415f819d085abc8f86418bef4f23


//http://bbs.mobileapi.hupu.com/3/7.3.12/threads/27545739?ft=18&clientId=30980511&advId=E12875A5-1076-4C57-9488-B5311B604032&fid=1048&entrance=6&isScheme=1&_ssid=VFQtUXVXYW4xN0Y&night=0&crt=1558598785&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&time_zone=Asia%2FShanghai&sign=c7490fccebba3ab7cabf9bb60f751795

//------热搜（额外参数：0个）
#define kHotSearch          @"/3/7.3.12/search/hotkeylist"
#define kHotSearchParams    [NSString stringWithFormat:@"?%@",kParam_full]
#define kHotSearch_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kHotSearch,kHotSearchParams]


//------推荐（额外参数：1个）
#define kHotList            @"/3/7.3.12/buffer/hotList"
#define kHotList_param1     @"is_first=1"
#define kHotList_full_Params [NSString stringWithFormat:@"?%@&%@",kHotList_param1,kParam_full]
#define kHotList_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kHotList,kHotList_full_Params]






#endif /* ANKHttpMacro_h */
