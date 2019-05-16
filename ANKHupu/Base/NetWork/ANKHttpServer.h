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
+ (void)getNBANewsWithSuccesBlock:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock;

//热搜
+ (void)getHotSearchWithResponData:(void(^)(NSMutableArray *))successBlock failure:(ANKFailureBlock)failureBlock;

@end

NS_ASSUME_NONNULL_END
