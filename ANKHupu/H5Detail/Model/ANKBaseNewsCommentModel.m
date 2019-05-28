//
//  ANKBaseNewsCommentModel.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKBaseNewsCommentModel.h"

#import "CommentModel.h"
#import "CommentType5Model.h"

@implementation ANKBaseNewsCommentModel


- (ANKBaseNewsCommentModel *)initWithTypeModel:(id)model{
    ANKBaseNewsCommentModel *resultModel = [ANKBaseNewsCommentModel new];
    if ([model isKindOfClass:[CommentModel class]]) {//type1
        
        CommentModel *tmp = (CommentModel *)model;
        
        resultModel.count = tmp.dtailData.data.count;
        
        NSMutableArray *dataArray = [NSMutableArray array];
        for (CommentData *data in tmp.dtailData.data) {
            
            CommentDetailData *reu = [CommentDetailData new];
            reu.userName = data.userName;
            reu.content = data.content;
            reu.userHeader = data.header;
            reu.lightCount = data.lightCount;
            reu.addTime = data.formatTime;
            reu.quoteName = data.quoteData.userName;
            reu.quoteContent = data.quoteData.content;
            
            [dataArray addObject:reu];
        }
        
        resultModel.commentArray = [dataArray copy];
       
        return resultModel;
    }else if([model isKindOfClass:[CommentType5Model class]]){
        
        CommentType5Model *tmp = (CommentType5Model *)model;
        resultModel.count = tmp.commetType5Modl.commetType5result.commentDatalist.count;
        
        
        
        NSMutableArray *dataArray = [NSMutableArray array];
        for (CommentDatalist *data in tmp.commetType5Modl.commetType5result.commentDatalist) {
            
            CommentDetailData *reu = [CommentDetailData new];
            reu.userName = data.userName;
            reu.content = data.content;
            reu.userHeader = data.userImg;
            reu.lightCount = [NSString stringWithFormat:@"%ld",(long)data.quoteLightCount];
            reu.addTime = data.time;
            
            CommentType5Quote *quote = [data.quote objectAtIndex:0];
            reu.quoteContent = quote.content;
            NSString *name = [quote.header objectAtIndex:0];
            NSArray *aar = [name componentsSeparatedByString:@">"];
            NSArray *tmp = [aar[0] componentsSeparatedByString:@"<"];
            reu.quoteName = tmp[0];
            
            [dataArray addObject:reu];
        }
        
        resultModel.commentArray = [dataArray copy];
        
        return resultModel;
    }
    
    return resultModel;
}


- (id)initWithDictionary:(NSDictionary *)dic type:(NewsType)type{
    
    
    if (type == NewsTypeNormal) {//1:视频+正常新闻
        
        return [self initWithTypeModel:[[CommentModel alloc] initWithDictionary:dic]];
        
    }else if (type == NewsTypeSpecial){//2:专题
        
    }else if (type == NewsTypePic){//3:cell上有多个图片（在 thumbs
    }else if (type == NewsTypeTopic){
        
        return [self initWithTypeModel:[[CommentType5Model alloc] initWithDictionary:dic]];
        
    }//5:话题。。球鞋。。经典回顾
    return nil;
}


@end


@implementation CommentDetailData

@end
