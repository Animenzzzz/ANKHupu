#import <UIKit/UIKit.h>

@interface HotListAttr : NSObject

@property (nonatomic, strong) NSString * auditStatus;
@property (nonatomic, strong) NSString * client;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
