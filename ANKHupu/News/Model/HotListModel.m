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
    CGFloat hotInfoView_height = HotListViewCellHotInfo_xib_titleLab_height;//111
    CGFloat commentView_height = 0;
    CGFloat socialView_height = HotListViewCellSocial_xib_height;
    
    if (hotInfo.hotInfo.pics.count) {//判断内容除了title，是否还有图片,有要另外加上高度
        hotInfoView_height = hotInfoView_height+HotListViewCellHotInfo_xib_collectPic_height;
    }
    hotInfoView_height = hotInfoView_height+TopicToInfoOffset_height;
    
    if (hotInfo.hotInfo.light_replies.count) {//有评论，才加载视图
        commentView_height = Comment_height+InfoToComment_height+CommentToShare_height;// 评论title高 21
    }else{
        commentView_height = CommentToShare_height;
    }

    //到顶部高度 + topic栏_高 + topic栏-->内容栏间隔 + 内容栏_高 + 内容栏-->评论栏 + 评论栏_高 + 评论栏-->share + share_高 + 到底部高度
    return kHotListCell_top +topView_height+socialView_height+commentView_height+hotInfoView_height+kHotListCell_bottom;
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
