#import <UIKit/UIKit.h>
#import "NBATopicResult.h"

@interface NBATopicModel : NSObject

@property (nonatomic, assign) NSInteger crt;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, strong) NBATopicResult * result;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
