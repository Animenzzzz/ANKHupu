#import <UIKit/UIKit.h>
#import "CommetType5Modl.h"

@interface CommentType5Model : NSObject

@property (nonatomic, strong) CommetType5Modl * commetType5Modl;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
