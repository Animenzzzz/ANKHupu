#import <UIKit/UIKit.h>
#import "Lure3.h"

@interface Certuser : NSObject

@property (nonatomic, strong) Lure3 * lure3;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end