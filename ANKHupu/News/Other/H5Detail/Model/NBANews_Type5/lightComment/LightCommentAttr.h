#import <UIKit/UIKit.h>

@interface LightCommentAttr : NSObject

@property (nonatomic, strong) NSString * auditStatus;
@property (nonatomic, strong) NSString * client;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
