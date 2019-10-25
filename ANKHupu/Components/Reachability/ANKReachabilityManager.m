//
//  ANKReachabilityManager.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKReachabilityManager.h"

@interface ANKReachabilityManager() {
    Reachability * _objReachability;
}
@end

@implementation ANKReachabilityManager

+ (ANKReachabilityManager *)sharedInstance {
    static ANKReachabilityManager *sharedManager;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[ANKReachabilityManager alloc] init];
    });
    return sharedManager;
}

- (instancetype)init {
    if (self=[super init]) {
        _objReachability = [Reachability reachabilityForInternetConnection];
        [_objReachability startNotifier];
    }
    return self;
}

- (NetworkStatus)getNetworkStatus {
    return [_objReachability currentReachabilityStatus];
}

@end
