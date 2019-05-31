#import <UIKit/UIKit.h>
#import "NBANewType5Userinfo.h"

@interface NBAType5praise : NSObject

@property (nonatomic, strong) NSArray * list;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * tips;
@property (nonatomic, strong) NBANewType5Userinfo * userinfo;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
