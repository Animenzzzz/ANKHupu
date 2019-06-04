#import <UIKit/UIKit.h>

@interface BBSTopic : NSObject

@property (nonatomic, strong) NSString * logo;
@property (nonatomic, assign) NSInteger topicId;
@property (nonatomic, strong) NSString * topicName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
