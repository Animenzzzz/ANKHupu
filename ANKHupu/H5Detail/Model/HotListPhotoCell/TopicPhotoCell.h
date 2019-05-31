#import <UIKit/UIKit.h>

@interface TopicPhotoCell : NSObject

@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * topicCategory;
@property (nonatomic, assign) NSInteger topicId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end