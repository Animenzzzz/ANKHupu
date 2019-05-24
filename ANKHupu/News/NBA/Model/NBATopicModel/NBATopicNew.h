#import <UIKit/UIKit.h>

@interface NBATopicNew : NSObject

@property (nonatomic, strong) NSString * hid;
@property (nonatomic, strong) NSString * img;
@property (nonatomic, strong) NSString * league;
@property (nonatomic, strong) NSString * lights;
@property (nonatomic, strong) NSObject * link;
@property (nonatomic, strong) NSString * nid;
@property (nonatomic, strong) NSString * read;
@property (nonatomic, strong) NSString * replies;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, strong) NSString * unReplay;
@property (nonatomic, strong) NSString * uptime;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
