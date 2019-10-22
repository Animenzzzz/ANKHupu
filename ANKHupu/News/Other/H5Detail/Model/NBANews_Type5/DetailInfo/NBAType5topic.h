#import <UIKit/UIKit.h>

@interface NBAType5topic : NSObject

@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * topicCategory;
@property (nonatomic, assign) NSInteger topicId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end