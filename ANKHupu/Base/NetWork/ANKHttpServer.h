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

+ (void)getNBAInfoWithParams:(NSMutableDictionary *)param success:(ANKSuccessBlock)successBlock failure:(ANKFailureBlock)failureBlock;

@end

NS_ASSUME_NONNULL_END
