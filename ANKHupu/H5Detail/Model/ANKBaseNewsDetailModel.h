//
//  ANKBaseNewsDetailModel.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/28.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ANKBaseNewsDetailModel : NSObject

@property(nonatomic, assign) NewsType newsType;

//type1
@property(nonatomic, copy) NSString *newsImage;
@property(nonatomic, copy) NSString *addTime;
@property(nonatomic, copy) NSString *origin;

//type5
@property(nonatomic, copy) NSString *userImg;
@property(nonatomic, copy) NSString *userName;
@property(nonatomic, copy) NSString *time;
@property(nonatomic, copy) NSString *visits;


@property(nonatomic, copy) NSString *h5Content;
@property(nonatomic, copy) NSString *newsTitle;


- (ANKBaseNewsDetailModel *)initWithTypeModel:(id)model;

- (id)initWithDictionary:(NSDictionary *)dic type:(NewsType)type;



@end

NS_ASSUME_NONNULL_END
