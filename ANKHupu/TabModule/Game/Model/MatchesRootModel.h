#import <UIKit/UIKit.h>
#import "MatchesResult.h"

@interface MatchesRootModel : NSObject

@property (nonatomic, assign) NSInteger crt;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, strong) MatchesResult * result;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
