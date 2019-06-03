//
//  NewsNormalAdapter.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/3.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsNormalAdapter.h"
#import "NBAModel.h"

@implementation NewsNormalAdapter

- (NewsNormalAdapter *)initWithTypeModel:(id)model{
    NewsNormalAdapter *resultModel = [NewsNormalAdapter new];
    
    //NBA
    if ([model isKindOfClass:[NBAModel class]]) {
        
        NBAModel *tmp = (NBAModel *)model;
        
        NSMutableArray *dataA = [NSMutableArray array];
        for (NBAData *nbaM in tmp.result.data) {
            
            NewsNormal *mol = [NewsNormal new];
            mol.nid = nbaM.nid;
            mol.title = nbaM.title;
            mol.img = nbaM.img;
            mol.replies = nbaM.replies;
            mol.type = nbaM.type;
            mol.isTop = nbaM.isTop;
            mol.link = nbaM.link;
            mol.lights = nbaM.lights;
            
            [dataA addObject:mol];
        }
        
        resultModel.dataArray = [dataA mutableCopy];
        
        return resultModel;
        
    }
    
    return resultModel;
}


- (id)initWithDictionary:(NSDictionary *)dic type:(NSString *)type{
    
    
    if ([type isEqualToString:@"NBA"]) {//1:视频+正常新闻
        
        return [self initWithTypeModel:[[NBAModel alloc] initWithDictionary:dic]];
        
    }
    return [self initWithTypeModel:[[NBAModel alloc] initWithDictionary:dic]];
}

@end

@implementation NewsNormal

@end
