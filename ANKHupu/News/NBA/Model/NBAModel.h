#import <UIKit/UIKit.h>
#import "NBAResult.h"

@interface NBAModel : NSObject

@property (nonatomic, assign) NSInteger crt;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, strong) NBAResult * result;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
