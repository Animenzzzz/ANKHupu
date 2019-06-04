#import <UIKit/UIKit.h>

@interface BBSBadge : NSObject

@property (nonatomic, strong) NSString * color;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
