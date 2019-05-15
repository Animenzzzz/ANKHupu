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
#define kParam_sign        @"sign=53d4ad9a87f32e057cb986611e72e9c1"
//固定参数拼接
#define kParam_full  [NSString stringWithFormat:@"%@?%@?%@?%@?%@?%@%@?%@",kParam_client,kParam_clientId,kParam_advId,kParam_ssid,kParam_night,kParam_crt,kParam_time_zone,kParam_sign]



//------NBA（额外参数：7个）
#define kNBA           @"/3/7.3.12/nba/getNews"
#define kNBA_param1    @"news_first_navi=NBA"
#define kNBA_param2    @"pre_count=0"
#define kNBA_param3    @"nid=0"
#define kNBA_param4    @"first_navi_numbers=2"
#define kNBA_param5    @"preload=0"
#define kNBA_param6    @"direc=next"
#define kNBA_param7    @"num=20"
#define kNBA_full_Params    [NSString stringWithFormat:@"?%@?%@?%@?%@?%@?%@%@?%@",kNBA_param1,kNBA_param2,kNBA_param3,kNBA_param4,kNBA_param5,kNBA_param6,kNBA_param7,kParam_full]
#define kNBA_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kNBA,kNBA_full_Params]


//------热搜（额外参数：0个）
#define kHotSearch          @"/3/7.3.12/search/hotkeylist"
#define kHotSearchParams    [NSString stringWithFormat:@"?%@",kParam_full]
#define kHotSearch_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kHotSearch,kHotSearchParams]


//------推荐（额外参数：1个）
#define kHotList            @"/3/7.3.12/buffer/hotList"
#define kHotList_param1     @"is_first=0"
#define kHotList_full_Params [NSString stringWithFormat:@"?%@?%@",kHotList_param1,kParam_full]
#define kHotList_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kHotList,kHotList_full_Params]






#endif /* ANKHttpMacro_h */
