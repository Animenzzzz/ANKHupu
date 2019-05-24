#import <UIKit/UIKit.h>
#import "NBATopicNew.h"

@interface NBATopicGroup : NSObject

@property (nonatomic, strong) NSArray * news;
@property (nonatomic, strong) NSString * orderby;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
