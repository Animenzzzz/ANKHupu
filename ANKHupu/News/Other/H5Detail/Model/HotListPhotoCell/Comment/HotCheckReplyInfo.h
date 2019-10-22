#import <UIKit/UIKit.h>

@interface HotCheckReplyInfo : NSObject

@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
