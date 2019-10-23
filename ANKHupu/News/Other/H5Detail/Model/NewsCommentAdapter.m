//
//  ANKBaseNewsCommentModel.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//
#import "NSString+Util.h"
#import "NewsCommentAdapter.h"

#import "CommentModel.h"
#import "CommentType5Model.h"
#import "LightCommentRoot.h"
#import "HotListCommentRoot.h"

@implementation NewsCommentAdapter


- (NewsCommentAdapter *)initWithTypeModel:(id)model{
    NewsCommentAdapter *resultModel = [NewsCommentAdapter new];
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
            
            if (data.quote && data.quote.count) {
                //TODO...字符串的过滤待处理
                CommentType5Quote *quote = [data.quote objectAtIndex:0];
                reu.quoteContent = quote.content;
                NSString *name = quote.header.count ? [quote.header objectAtIndex:0] : @"";
              
                name = [NSString filterH5:name];
                name = [name stringByReplacingOccurrencesOfString:@"@" withString:@""];
                name = [name stringByReplacingOccurrencesOfString:@"引用" withString:@""];
                name = [name stringByReplacingOccurrencesOfString:@"发表的" withString:@""];
                reu.quoteName = [NSString stringWithFormat:@"%@:",name];
            }
            
            
            [dataArray addObject:reu];
        }
        
        resultModel.commentArray = [dataArray copy];
        
        return resultModel;
        
    }else if([model isKindOfClass:[LightCommentRoot class]]){
        
        LightCommentRoot *tmp = (LightCommentRoot *)model;
        resultModel.count = tmp.data.list.count;

        NSMutableArray *dataArray = [NSMutableArray array];
        for (LightCommentList *data in tmp.data.list) {

            CommentDetailData *reu = [CommentDetailData new];
            reu.userName = data.userName;
            reu.content = data.content;
            reu.userHeader = data.userImg;
            reu.lightCount = [NSString stringWithFormat:@"%ld",(long)data.lightCount];
            reu.addTime = data.time;

            if (data.quote && data.quote.count) {
                CommentType5Quote *quote = [data.quote objectAtIndex:0];
                reu.quoteContent = quote.content;
                NSString *name = quote.header.count ? [quote.header objectAtIndex:0] : @"";
                name = [NSString filterH5:name];
                name = [name stringByReplacingOccurrencesOfString:@"@" withString:@""];
                name = [name stringByReplacingOccurrencesOfString:@"引用" withString:@""];
                name = [name stringByReplacingOccurrencesOfString:@"发表的" withString:@""];
                reu.quoteName = [NSString stringWithFormat:@"%@:",name];
            }


            [dataArray addObject:reu];
        }

        resultModel.commentArray = [dataArray copy];

        return resultModel;
        
    }else if ([model isKindOfClass:[HotListCommentRoot class]]){
        
        HotListCommentRoot *tmp = (HotListCommentRoot *)model;
        resultModel.count = tmp.data.result.list.count;
        
        NSMutableArray *dataArray = [NSMutableArray array];
        for (HotListCommentList *data in tmp.data.result.list) {
            
            CommentDetailData *reu = [CommentDetailData new];
            reu.userName = data.userName;
            reu.content = data.content;
            reu.userHeader = data.userImg;
            reu.lightCount = [NSString stringWithFormat:@"%ld",(long)data.quoteLightCount];
            reu.addTime = data.time;
            
            if (data.quote && data.quote.count) {
                //TODO...字符串的过滤待处理
                NSDictionary *quote = [data.quote objectAtIndex:0];
                reu.quoteContent = [quote objectForKey:@"content"];
                NSArray *hed = [quote objectForKey:@"header"];
                NSString *name = [hed objectAtIndex:0];
                reu.quoteName = [NSString filterH5:name];
            }
            
            
            [dataArray addObject:reu];
        }
        
        resultModel.commentArray = [dataArray copy];
        
        return resultModel;
        
    }
    
    return resultModel;
}


- (id)initWithDictionary:(NSDictionary *)dic newsType:(NewsType)ntype commentType:(CommentType)ctype{
    
    
    if (ntype == NewsTypeNormal) {//1:视频+正常新闻
        
        return [self initWithTypeModel:[[CommentModel alloc] initWithDictionary:dic]];
        
    }else if (ntype == NewsTypeSpecial){//2:专题
        
    }else if (ntype == NewsTypePic){//3:cell上有多个图片（在 thumbs
        
    }else if (ntype == NewsTypeTopic){
        NewsCommentAdapter *reslut = nil;
        if(ctype == CommentTypeLight){
            reslut = [self initWithTypeModel:[[LightCommentRoot alloc] initWithDictionary:dic]];
        }else{
            reslut = [self initWithTypeModel:[[CommentType5Model alloc] initWithDictionary:dic]];
        }
        return reslut;
        
    }else if (ntype == NewsTypePhotoReply){
        
        return [self initWithTypeModel:[[HotListCommentRoot alloc] initWithDictionary:dic]];
    }
    return nil;
}


@end


@implementation CommentDetailData

@end
