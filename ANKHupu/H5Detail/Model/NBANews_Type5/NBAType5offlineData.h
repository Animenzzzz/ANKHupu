#import <UIKit/UIKit.h>
#import "NBAType5data.h"

@interface NBAType5offlineData : NSObject

@property (nonatomic, strong) NBAType5data * nBAType5data;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end