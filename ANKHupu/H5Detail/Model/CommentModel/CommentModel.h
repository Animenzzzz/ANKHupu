#import <UIKit/UIKit.h>
#import "DtailData.h"

@interface CommentModel : NSObject

@property (nonatomic, strong) DtailData * dtailData;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
