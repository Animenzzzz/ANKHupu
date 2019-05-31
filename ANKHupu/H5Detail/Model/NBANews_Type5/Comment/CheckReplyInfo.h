#import <UIKit/UIKit.h>

@interface CheckReplyInfo : NSObject

@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end