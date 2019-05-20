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
    
    CGFloat topView_height = topic_1;
    CGFloat hotInfoView_height = info_wu_3;
    CGFloat commentView_height = 0;
    CGFloat socialView_height = share_7;
    
    CGFloat fitHeight = [UILabel getHeightByWidth:SCREEN_WIDTH title:hotInfo.hotInfo.title font:[UIFont systemFontOfSize:17]];//动态计算高度
    CGFloat labHeight = fitHeight > topic_1 ?fitHeight:topic_1;
    
    if (hotInfo.hotInfo.pics.count) {//内容有图
        hotInfoView_height = info_you_3+topic_info_2-topic_1+labHeight;
    }else{//无图
        hotInfoView_height = info_wu_3+topic_info_2-topic_1+labHeight;
    }
   
    
    if (hotInfo.hotInfo.light_replies.count) {//有评论，才加载视图
        commentView_height = comment_5+info_comment_4+comment_share_6;// 评论title高 21
    }else{
        commentView_height = comment_share_6;
    }

    //到顶部高度 + topic栏_高 + topic栏-->内容栏间隔 + 内容栏_高 + 内容栏-->评论栏 + 评论栏_高 + 评论栏-->share + share_高 + 到底部高度
    CGFloat allHeight = kHotListCell_top +topView_height+socialView_height+commentView_height+hotInfoView_height+kHotListCell_bottom;
//    NSLog(@"总高度：%f  分享: %ld",allHeight,(long)hotInfo.hotInfo.visits);
    return allHeight;
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
