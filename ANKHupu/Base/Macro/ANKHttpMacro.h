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
#define kHPServiceHost1 @"https://games.mobileapi.hupu.com"
#define kHPServiceHost2 @"http://games.mobileapi.hupu.com"
#define kHPServiceHost3 @"http://bbs.mobileapi.hupu.com"

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



//------NBA（获取NBA类新闻列表）
//翻页规则： 1：pre_count=0为页数 0，20，40
//         2：nid参数为上一个请求的最后一条nid
#define kNBA           @"/3/7.3.12/nba/getNews"
#define kNBA_param1    @"news_first_navi=NBA"
#define kNBA_param4    @"first_navi_numbers=2"
#define kNBA_param5    @"preload=0"
#define kNBA_param6    @"direc=next"
#define kNBA_param7    @"num=20"
#define kNBA_full_Params    [NSString stringWithFormat:@"?%@&%@&%@&%@&%@&%@",kNBA_param1,kNBA_param4,kNBA_param5,kNBA_param6,kNBA_param7,kParam_full]
#define kNBA_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost1,kNBA,kNBA_full_Params]



//type = 5
#define kNBA_DetailH5_Type5_1 @"http://bbs.mobileapi.hupu.com/3/7.3.12/threads/"
#define kNAB_DetailH5_Type5_2 @"?ft=18&clientId=30980511&advId=E12875A5-1076-4C57-9488-B5311B604032&fid=1048&entrance=6&isScheme=1&_ssid=VFQtUXVXYW4xN0Y&night=0&crt=1558598038&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&time_zone=Asia%2FShanghai&sign=eacc415f819d085abc8f86418bef4f23"



//------新闻详情
// type = 1 (需要另外传的参数：nid)
#define kNews_Type1 @"/3/7.3.12/news/createNewsDetailH5"
#define kNews_Type1_Param1 @"offline=json"
#define kNews_Type1_Param2 @"entrance="
#define kNews_Type1_Param3 @"nopic=0"
#define kNews_Type1_Param4 @"webp=0"
#define kNews_Type1_full_Params    [NSString stringWithFormat:@"?%@&%@&%@&%@&%@&%@&%@",kNews_Type1_Param1,kNews_Type1_Param2,kNews_Type1_Param3,kNews_Type1_Param4,kParam_night,kParam_time_zone,kParam_client]
#define kNews_Type1_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost2,kNews_Type1,kNews_Type1_full_Params]
// type = 5 (需要另外传的参数：在link里面，一个ID)
#define kNews_Type5 @"/3/7.3.12/threads/"
#define kNews_Type5_Param1 @"ft=18"
#define kNews_Type5_Param2 @"fid=1048"
#define kNews_Type5_Param3 @"entrance=6"
#define kNews_Type5_Param4 @"isScheme=1"
#define kNews_Type5_full_Params    [NSString stringWithFormat:@"?%@&%@&%@&%@&%@&%@&%@",kNews_Type5_Param1,kNews_Type5_Param2,kNews_Type5_Param3,kNews_Type5_Param4,kParam_night,kParam_time_zone,kParam_client]
#define kNews_Type5_Part1 [NSString stringWithFormat:@"%@%@",kHPServiceHost3,kNews_Type5]
#define kNews_Type5_Part2 [NSString stringWithFormat:@"%@%@",kHPServiceHost3,kNews_Type5]

//------热搜（额外参数：0个）
#define kHotSearch          @"/3/7.3.12/search/hotkeylist"
#define kHotSearchParams    [NSString stringWithFormat:@"?%@",kParam_full]
#define kHotSearch_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost1,kHotSearch,kHotSearchParams]


//------推荐（额外参数：1个）
#define kHotList            @"/3/7.3.12/buffer/hotList"
#define kHotList_param1     @"is_first=1"
#define kHotList_full_Params [NSString stringWithFormat:@"?%@&%@",kHotList_param1,kParam_full]
#define kHotList_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost1,kHotList,kHotList_full_Params]






#endif /* ANKHttpMacro_h */
