#import <UIKit/UIKit.h>
#import "Badge.h"

@interface RecommendData : NSObject

@property (nonatomic, assign) NSInteger adType;
@property (nonatomic, strong) NSArray * badge;
@property (nonatomic, assign) NSInteger displayType;
@property (nonatomic, assign) NSInteger isAd;
@property (nonatomic, assign) NSInteger isRecommend;
@property (nonatomic, assign) NSInteger position;
@property (nonatomic, assign) NSInteger type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end