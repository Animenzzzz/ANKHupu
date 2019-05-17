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


+ (CGFloat)caculateHeightWithHotInfoModel:(HotListModel *)hotInfo{
    CGFloat topView_height = HotListViewCellTopicView_xib_height;
    CGFloat hotInfoView_height = 10;
    CGFloat commentView_height = 10;
    CGFloat socialView_height = HotListViewCellSocial_xib_height;
    
    if (hotInfo.hotInfo.light_replies.count) {//有评论，才加载视图
    }
    
    return topView_height+socialView_height+commentView_height+hotInfoView_height;
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
