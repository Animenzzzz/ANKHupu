#import <UIKit/UIKit.h>
#import "Result.h"

@interface NBAModel : NSObject

@property (nonatomic, assign) NSInteger crt;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, strong) Result * result;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
