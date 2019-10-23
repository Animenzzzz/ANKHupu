#import <UIKit/UIKit.h>
#import "LightCommentList.h"

@interface LightCommentData : NSObject

@property (nonatomic, assign) NSInteger allCount;
@property (nonatomic, strong) NSArray * list;
@property (nonatomic, assign) NSInteger moreCount;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
