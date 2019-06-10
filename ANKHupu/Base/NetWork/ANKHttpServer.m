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

+ (NSString *)addURLWithAddtionParams:(NSMutableDictionary *)param{
    
    NSString *appendString = @"";
    
    for (NSString *key in [param allKeys]) {
        appendString = [appendString stringByAppendingString:[NSString stringWithFormat:@"?%@=%@",key,[param objectForKey:key]]];
    }
    
    return appendString;
    
}

+ (void)getNewsListWithURL:(NSString *)url params:(NSMutableDictionary *)params succesBlock :(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock{
    
    NSNumber *page = [params objectForKey:@"pre_count"];
    NSString *nid = [params objectForKey:@"nid"];
    NSString *paramsString = [NSString stringWithFormat:@"pre_count=%ld&nid=%@",[page integerValue]*20,nid];
    NSString *fullURL = [NSString stringWithFormat:@"%@&%@",url,paramsString];
    ANKLog(@"请求URL:%@",fullURL);
    [[ANKHttpServer sharedInstance].sessionManager GET:fullURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
//        ANKLog(@"成功请求到数据:%@",data);
        successBlock(data);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
}


+ (void)getGameListWithURL:(NSString *)url params:(NSMutableDictionary *)params succesBlock :(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock{
    
    NSNumber *page = [params objectForKey:@"preload"];
    NSString *paramsString = [NSString stringWithFormat:@"preload=%ld",[page integerValue]];
    NSString *fullURL = [NSString stringWithFormat:@"%@&%@",url,paramsString];
    ANKLog(@"请求URL:%@",fullURL);
    [[ANKHttpServer sharedInstance].sessionManager GET:fullURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
        //        ANKLog(@"成功请求到数据:%@",data);
        successBlock(data);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
}

+ (void)getNewsDetailWithParams:(nullable NSMutableDictionary *)params url:(NSString *)url succesBlock :(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock{
    
    ANKLog(@"请求URL:%@",url);
    [[ANKHttpServer sharedInstance].sessionManager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
        successBlock(data);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
}

+ (void)getBBSListWithParams:(NSMutableDictionary *)params succesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock{
    
    
    NSString *url = @"http://bbs.mobileapi.hupu.com/3/7.3.14/recommend/getThreadsList?crt=1559633123&additionTid=-1&clientId=30980511&sign=e8b132b7e112d8c1aa7c25bf06453c1f&advId=E12875A5-1076-4C57-9488-B5311B604032&isHome=1&stamp=0&_ssid=VFQtUXVXYW4xN0Y&night=0&nav=buffer%2Cnba%2Cgear%2Cpubg%2Cchlg%2Cfollow&time_zone=Asia%2FShanghai&follow_team=%E6%B9%96%E4%BA%BA&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a";
    

    NSString *lastTid = [params objectForKey:@"lastTid"];
    NSString *paramsString = [NSString stringWithFormat:@"lastTid=%@",lastTid];
    NSString *fullURL = [NSString stringWithFormat:@"%@&%@",url,paramsString];
    
    
    //TODO...加载不了更多了
//    if ([lastTid isEqualToString:@"0"]) {//第一次加载
//        fullURL = @"http://bbs.mobileapi.hupu.com/3/7.3.14/recommend/getThreadsList?crt=1559633123&additionTid=-1&clientId=30980511&sign=e8b132b7e112d8c1aa7c25bf06453c1f&advId=E12875A5-1076-4C57-9488-B5311B604032&lastTid=0&isHome=1&stamp=0&_ssid=VFQtUXVXYW4xN0Y&night=0&nav=buffer%2Cnba%2Cgear%2Cpubg%2Cchlg%2Cfollow&time_zone=Asia%2FShanghai&follow_team=%E6%B9%96%E4%BA%BA&client=c77bc7cfa00b1800f399938c4b3720aae4783b2a";
//    }else{//不是第一次加载
//
//    }
    
    ANKLog(@"请求URL:%@",fullURL);
    [[ANKHttpServer sharedInstance].sessionManager GET:fullURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
        //        ANKLog(@"成功请求到数据:%@",data);
        successBlock(data);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
    
}


+ (void)getHotSearchWithResponData:(void(^)(NSMutableArray *))successBlock failure:(ANKFailureBlock)failureBlock{
    
    NSString *fullURL = kHotSearch_FullPath;
    ANKLog(@"请求URL:%@",fullURL);
    [[ANKHttpServer sharedInstance].sessionManager GET:fullURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
//        ANKLog(@"成功请求到数据:%@",data);
        NSArray *list = data[@"result"][@"list"];
        NSMutableArray *result_data = [NSMutableArray array];
        for (NSDictionary *dic in list) {
            [result_data addObject:[dic objectForKey:@"name"]];
        }
        
        successBlock(result_data);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
    
}

//推荐
+ (void)getHotListWithSuccesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock
{
    NSString *fullURL = kHotList_FullPath;
    ANKLog(@"请求URL:%@",fullURL);
    [[ANKHttpServer sharedInstance].sessionManager GET:fullURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
//        ANKLog(@"成功请求到数据:%@",data);
        successBlock(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
    
}

//更多
+ (void)getMoreListWithSuccesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock
{
    NSString *fullURL = kMoreList;
    ANKLog(@"请求URL:%@",fullURL);
    [[ANKHttpServer sharedInstance].sessionManager GET:fullURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *data = (NSDictionary *)responseObject;
        //        ANKLog(@"成功请求到数据:%@",data);
        successBlock(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
        NSDictionary *data = (NSDictionary *)task.response;
        failureBlock(data,error);
    }];
    
}



@end
