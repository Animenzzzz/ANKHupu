//
//  ANKHttpServer.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/13.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^ANKSuccessBlock) (NSDictionary *data);
typedef void (^ANKFailureBlock) (NSDictionary *data,NSError *error);

@interface ANKHttpServer : NSObject

//NBA新闻
+ (void)getNBANewsWithParams:(NSMutableDictionary *)params succesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock;

//新闻_详情
+ (void)getNewsDetailWithParams:(nullable NSMutableDictionary *)params url:(NSString *)url succesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock;

//热搜
+ (void)getHotSearchWithResponData:(void(^)(NSMutableArray *))successBlock failure:(ANKFailureBlock)failureBlock;

//推荐
+ (void)getHotListWithSuccesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock;

//更多
+ (void)getMoreListWithSuccesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock;

@end

NS_ASSUME_NONNULL_END
