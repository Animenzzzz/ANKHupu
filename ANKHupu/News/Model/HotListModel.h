//
//  HotListModel.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/16.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"
NS_ASSUME_NONNULL_BEGIN

@class ResultData;
@class HotListModel;
@class HotInfo;
@class RepliesModel;

@interface HotListResponeModel : NSObject

@property (nonatomic, assign)  NSInteger loginStatue;
@property (nonatomic, assign)  CGFloat  crt;
@property (nonatomic, strong)  ResultData *result;

@end

@interface ResultData : NSObject

@property (nonatomic, strong)  NSString *readPlan;
@property (nonatomic, strong)  NSArray <HotListModel *>*hotList;
@property (nonatomic, strong)  NSArray *adData;
@property (nonatomic, strong)  NSString *notice;

@end

@interface HotListModel : NSObject

@property (nonatomic, strong)  HotInfo *hotInfo;
@property (nonatomic, strong)  NSString *type;
@property (nonatomic, strong)  NSString *schema_url;
@property (nonatomic, strong)  NSString *xid;


@end


@interface HotInfo : NSObject

@property (nonatomic, strong)  NSArray <RepliesModel *>*light_replies;
@property (nonatomic, assign)  NSInteger share_num;
@property (nonatomic, assign)  NSInteger total_pics;
@property (nonatomic, assign)  CGFloat  tid;
@property (nonatomic, strong)  NSString *title;
@property (nonatomic, assign)  NSInteger replies;
@property (nonatomic, assign)  CGFloat  create_time;
@property (nonatomic, strong)  NSString *nickname;
@property (nonatomic, strong)  NSString *fid;
@property (nonatomic, assign)  NSInteger visits;
@property (nonatomic, strong)  NSString *forum_logo;
@property (nonatomic, strong)  NSString *forum_name;
@property (nonatomic, assign)  NSInteger recommend_num;
@property (nonatomic, assign)  NSInteger lights;
@property (nonatomic, strong)  NSString *topic_name;
@property (nonatomic, strong)  NSString *topic_logo;
@property (nonatomic, strong)  NSString *type;
@property (nonatomic, strong)  NSString *attr;
@property (nonatomic, assign)  CGFloat  lastpost_time;
@property (nonatomic, assign)  NSInteger topic_id;
@property (nonatomic, strong)  NSArray *pics;
@property (nonatomic, strong)  NSString *puid;

@end

@interface RepliesModel : NSObject

@property (nonatomic, assign)  CGFloat puid;
@property (nonatomic, assign)  CGFloat light_count;
@property (nonatomic, assign)  CGFloat total_pics;
@property (nonatomic, strong)  NSString *nickname;
@property (nonatomic, strong)  NSString *header;
@property (nonatomic, strong)  NSString *attr;
@property (nonatomic, strong)  NSArray *pics;
@property (nonatomic, strong)  NSString *content;
@property (nonatomic, assign)  CGFloat pid;

@end

NS_ASSUME_NONNULL_END
