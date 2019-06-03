#import <UIKit/UIKit.h>
#import "MoreModelResult.h"

@interface MoreModel : NSObject

@property (nonatomic, assign) NSInteger crt;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, strong) MoreModelResult * result;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
