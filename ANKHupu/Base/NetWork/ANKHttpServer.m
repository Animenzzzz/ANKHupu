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

+ (void)getNBANewsWithParams:(NSMutableDictionary *)params succesBlock :(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock{
    
//    NSString *fullURL = kNBA_FullPath;
    NSNumber *page = [params objectForKey:@"pre_count"];
    NSString *nid = [params objectForKey:@"nid"];
    NSString *paramsString = [NSString stringWithFormat:@"pre_count=%ld&nid=%@",[page integerValue]*20,nid];
    NSString *fullURL = [NSString stringWithFormat:@"%@&%@",kNBA_FullPath,paramsString];
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

+ (void)getNBANewsDetailWithParams:(NSMutableDictionary *)params succesBlock :(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock{

    NSString *nid = [params objectForKey:@"nid"];
    NSString *nid_full = [NSString stringWithFormat:@"nid=%@",nid];
    NSString *fullURL = [NSString stringWithFormat:@"%@&%@",kNBA_DetailH5,nid_full];
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



@end
