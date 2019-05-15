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

//NBA address+params
#define kNBA           @"/3/7.3.12/nba/getNews"
#define kNBAParams     @"?news_first_navi=NBA&pre_count=0&advId=E12875A5-1076-4C57-9488-B5311B604032&clientId=30980511&nid=0&first_navi_numbers=2&preload=0&direc=next&num=20&_ssid=VFQtUXVXYW4xN0Y&night=0&crt=1557906702&time_zone=Asia%2FShanghai&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&sign=53d4ad9a87f32e057cb986611e72e9c1"
#define kNBA_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kNBA,kNBAParams]

//热搜 address+params
#define kHotSearch          @"/3/7.3.12/search/hotkeylist"
#define kHotSearchParams     @"?time_zone=Asia%2FShanghai&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&advId=E12875A5-1076-4C57-9488-B5311B604032&night=0&crt=1557906417&clientId=30980511&_ssid=VFQtUXVXYW4xN0Y&sign=95fab141fc4cb5ebf008ed7427b6de84"
#define kHotSearch_FullPath [NSString stringWithFormat:@"%@%@%@",kHPServiceHost,kHotSearch,kHotSearchParams]


#endif /* ANKHttpMacro_h */
