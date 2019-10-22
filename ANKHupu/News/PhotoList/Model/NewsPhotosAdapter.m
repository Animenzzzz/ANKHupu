//
//  NewsPhotosAdapter.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/3.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "NewsPhotosAdapter.h"

#import "HotListModel.h"
#import "HotListViewModel.h"

@implementation NewsPhotosAdapter

- (NewsPhotosAdapter *)initWithTypeModel:(id)model{
    NewsPhotosAdapter *resultModel = [NewsPhotosAdapter new];
    if ([model isKindOfClass:[HotListResponeModel class]]) {//type1
        
        HotListResponeModel *tmp = (HotListResponeModel *)model;
        
    }
    
    return resultModel;
}


- (id)initWithDictionary:(NSDictionary *)dic type:(NSString *)type{
    
    
    if ([type isEqualToString:@"推荐"]) {//1:视频+正常新闻
        

        return [self initWithTypeModel:[HotListResponeModel yy_modelWithDictionary:dic]];
        
    }
    return nil;
}

@end
