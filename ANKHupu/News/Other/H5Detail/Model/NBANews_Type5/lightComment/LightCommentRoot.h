#import <UIKit/UIKit.h>
#import "LightCommentData.h"

@interface LightCommentRoot : NSObject

@property (nonatomic, strong) LightCommentData * data;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
