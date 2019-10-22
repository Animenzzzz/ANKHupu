//
//  NewsNormalAdapter.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/3.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class NewsNormal;
@interface NewsNormalAdapter : NSObject

@property(nonatomic, strong) NSMutableArray <NewsNormal *>*dataArray;

- (id)initWithDictionary:(NSDictionary *)dic type:(NSString *)type;

@end

@interface NewsNormal : NSObject

@property(nonatomic, copy) NSString *nid;
@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *img;
@property(nonatomic, copy) NSString *replies;
@property(nonatomic, assign) NSInteger type;
@property(nonatomic, copy) NSString *isTop;
@property(nonatomic, copy) NSString *link;
@property(nonatomic, copy) NSString *lights;


@end

NS_ASSUME_NONNULL_END
