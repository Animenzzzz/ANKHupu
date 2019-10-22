//
//  HotListModel.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListModel.h"

@implementation HotListModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"hotInfo":@"data",
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"data" : HotInfo.class,
             };
}

@end

@implementation HotInfo

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"light_replies" : RepliesModel.class,
             };
}

@end



@implementation HotListResponeModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"loginStatue":@"is_login",
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"result" : ResultData.class,
             };
}



@end


@implementation ResultData

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"readPlan":@"read_plan",
             @"adData":@"ad_data",
             @"hotList":@"data",
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"hotList" : HotListModel.class,
             };
}



@end


@implementation RepliesModel

@end
