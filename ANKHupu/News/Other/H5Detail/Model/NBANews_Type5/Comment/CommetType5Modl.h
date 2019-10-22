#import <UIKit/UIKit.h>
#import "CommetType5result.h"

@interface CommetType5Modl : NSObject

@property (nonatomic, strong) CommetType5result * commetType5result;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end