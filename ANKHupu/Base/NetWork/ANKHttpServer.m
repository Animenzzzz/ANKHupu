//
//  ANKHttpServer.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/13.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKHttpServer.h"
#import "AFHTTPSessionManager.h"
#import "ANKHttpMacro.h"

@interface ANKHttpServer()

@property (nonatomic) AFHTTPSessionManager *sessionManager;

@end

@implementation ANKHttpServer

+ (ANKHttpServer *)sharedInstance {
    
    static ANKHttpServer *ANKHttpServerInstance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ANKHttpServerInstance = [[ANKHttpServer alloc] init];
        
      
    });
    
    return ANKHttpServerInstance;
}

- (instancetype) init{
    self = [super init];
    if (self) {
        _sessionManager = [AFHTTPSessionManager manager];
    }
    return self;
}

//    https://games.mobileapi.hupu.com/3/7.3.12/nba/getNews?news_first_navi=NBA&pre_count=0&advId=E12875A5-1076-4C57-9488-B5311B604032&clientId=30980511&nid=0&first_navi_numbers=2&preload=0&direc=next&num=20&_ssid=VFQtUXVXYW4xN0Y&night=0&crt=1557730502&time_zone=Asia%2FShanghai&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a&sign=ee2d1b8da14d952ef3459d02215748f0


+ (NSMutableDictionary *)baseParamsDic{
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    [dic setObject:@"NBA"                                       forKey:@"news_first_navi"];
    [dic setObject:@"0"                                         forKey:@"pre_count"];
    [dic setObject:@"E12875A5-1076-4C57-9488-B5311B604032"      forKey:@"advId"];
    [dic setObject:@"30980511"                                  forKey:@"clientId"];
    [dic setObject:@"0"                                         forKey:@"nid"];
    [dic setObject:@"2"                                         forKey:@"first_navi_numbers"];
    [dic setObject:@"0"                                         forKey:@"preload"];
    [dic setObject:@"next"                                      forKey:@"direc"];
    [dic setObject:@"20"                                        forKey:@"num"];
    [dic setObject:@"VFQtUXVXYW4xN0Y"                           forKey:@"_ssid"];
    [dic setObject:@"0"                                         forKey:@"night"];
    [dic setObject:@"1557730502"                                forKey:@"crt"];
    [dic setObject:@"Asia%2FShanghai"                           forKey:@"time_zone"];
    [dic setObject:@"c77bc7cfa00b1800f399938c4b3720aae4783b2a"  forKey:@"client"];
    [dic setObject:@"ee2d1b8da14d952ef3459d02215748f0"          forKey:@"sign"];
    
    
    return dic;
}

+ (NSString *)addURLWithBaseParams{
    
    NSMutableDictionary *param = [self baseParamsDic];
    
    NSString *appendString = @"";
    
    for (NSString *key in [param allKeys]) {
        appendString = [appendString stringByAppendingString:[NSString stringWithFormat:@"?%@=%@",key,[param objectForKey:key]]];
    }
    
    return appendString;
    
}

+ (NSString *)addURLWithAddtionParams:(NSMutableDictionary *)param{
    
    NSString *appendString = @"";
    
    for (NSString *key in [param allKeys]) {
        appendString = [appendString stringByAppendingString:[NSString stringWithFormat:@"?%@=%@",key,[param objectForKey:key]]];
    }
    
    return appendString;
    
}

+ (void)getNBAInfoWithParams:(NSMutableDictionary *)param success:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock{
    
    NSString *fullURL = [NSString stringWithFormat:@"%@%@",kHPServiceHost,kNBA];
    NSString *str = [self addURLWithBaseParams];
    
    //如果有其他的请求参数
    if (param) {
        NSString *adtion = [self addURLWithAddtionParams:param];
        str = [NSString stringWithFormat:@"%@%@",str,adtion];
    }
    
    fullURL = [NSString stringWithFormat:@"%@%@",fullURL,str];
    
    ANKLog(@"请求URL:%@",fullURL);
    [[ANKHttpServer sharedInstance].sessionManager GET:fullURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
        successBlock(data);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
}



@end
