//
//  HotListModel.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListModel.h"
#import "UILabel+AutoFit.h"
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
    
    // 到cell的顶部+topic栏高度+topic-title的间距
    CGFloat part_1 = kHotListCell_top+topic_1+topic_to_infoTitle_2;
    
    //title的高度
    CGFloat part_2 = [UILabel getHeightByWidth:SCREEN_WIDTH title:hotInfo.hotInfo.title font:[UIFont systemFontOfSize:17]];//动态计算高度
    
    if (hotInfo.hotInfo.pics.count) {//内容有图
        part_2 = part_2+infoTitle_to_photo_3+collectionPhotoHeight;
    }
    
    CGFloat part_3 = share_7+kHotListCell_bottom;
    if (hotInfo.hotInfo.light_replies.count) {//有评论
        
        part_3 = info_to_comment_4+comment_5+comment_share_6;
    }

    return part_1+part_2+part_3+40;
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
