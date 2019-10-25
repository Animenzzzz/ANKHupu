//
//  ANKReachabilityManager.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"
NS_ASSUME_NONNULL_BEGIN

@interface ANKReachabilityManager : NSObject

+ (ANKReachabilityManager *)sharedInstance;

@property (nonatomic, getter=getNetworkStatus) NetworkStatus networkStatus;

@end

NS_ASSUME_NONNULL_END
