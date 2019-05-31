//
//  ANKBaseNewsDetailModel.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsDetailAdapter.h"

#import "NewsDetailModel.h"
#import "NBANewsType5Model.h"
#import "CommentModel.h"


@implementation NewsDetailAdapter

- (NewsDetailAdapter *)initWithTypeModel:(id)model{
    NewsDetailAdapter *resultModel = [NewsDetailAdapter new];
    if ([model isKindOfClass:[NewsDetailModel class]]) {
        
        NewsDetailModel *tmp = (NewsDetailModel *)model;
        resultModel.newsImage = tmp.data.news.img;
        resultModel.h5Content = tmp.data.news.content;
        resultModel.newsTitle = tmp.data.news.title;
        resultModel.addTime = tmp.data.news.addtime;
        resultModel.origin = tmp.data.news.origin;
        
        return resultModel;
    }else if([model isKindOfClass:[NBANewsType5Model class]]){
        
        NBANewsType5Model *tmp = (NBANewsType5Model *)model;
        resultModel.h5Content = tmp.nBAType5offlineData.nBAType5data.content;
        resultModel.newsTitle = tmp.title;
        resultModel.userImg = tmp.nBAType5offlineData.nBAType5data.userImg;
        resultModel.userName = tmp.userName;
        resultModel.time = tmp.nBAType5offlineData.nBAType5data.time;
        resultModel.visits = tmp.nBAType5offlineData.nBAType5data.visits;
        
        return resultModel;
    }
    
    return resultModel;
}

- (id)initWithDictionary:(NSDictionary *)dic type:(NewsType)type{
    
    
    if (type == NewsTypeNormal) {//1:视频+正常新闻
      
        return [self initWithTypeModel:[[NewsDetailModel alloc] initWithDictionary:dic]];
        
    }else if (type == NewsTypeSpecial){//2:专题
      
    }else if (type == NewsTypePic){//3:cell上有多个图片（在 thumbs
    }else if (type == NewsTypeTopic){
        
        return [self initWithTypeModel:[[NBANewsType5Model alloc] initWithDictionary:dic]];
        
    }//5:话题。。球鞋。。经典回顾
    return nil;
}

@end
