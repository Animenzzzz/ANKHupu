//
//  ANKBaseNewsCommentModel.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class CommentDetailData;
@interface NewsCommentAdapter : NSObject

@property(nonatomic, assign) NSInteger count;
@property(nonatomic, strong) NSArray <CommentDetailData *>*commentArray;

- (NewsCommentAdapter *)initWithTypeModel:(id)model;

- (id)initWithDictionary:(NSDictionary *)dic type:(NewsType)type;

@end


@interface CommentDetailData : NSObject

@property(nonatomic, copy) NSString *userName;
@property(nonatomic, copy) NSString *content;
@property(nonatomic, copy) NSString *userHeader;
@property(nonatomic, copy) NSString *lightCount;
@property(nonatomic, copy) NSString *addTime;
@property(nonatomic, copy) NSString *quoteContent;
@property(nonatomic, copy) NSString *quoteName;


@end

NS_ASSUME_NONNULL_END
