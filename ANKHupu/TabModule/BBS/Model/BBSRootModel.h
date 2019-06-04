#import <UIKit/UIKit.h>
#import "BBSResult.h"

@interface BBSRootModel : NSObject

@property (nonatomic, strong) BBSResult * result;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
