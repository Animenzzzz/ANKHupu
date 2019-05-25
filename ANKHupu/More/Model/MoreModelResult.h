#import <UIKit/UIKit.h>
#import "MoreDiscovery.h"

@interface MoreModelResult : NSObject

@property (nonatomic, assign) NSInteger balance;
@property (nonatomic, strong) NSArray * discovery;
@property (nonatomic, assign) NSInteger hupuDollorBalance;
@property (nonatomic, assign) NSInteger isPubg;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
