#import <UIKit/UIKit.h>
#import "Badge.h"

@interface NBAData : NSObject

@property (nonatomic, strong) NSArray * badge;
@property (nonatomic, strong) NSString * hid;
@property (nonatomic, strong) NSString * img;
@property (nonatomic, strong) NSString * isTop;
@property (nonatomic, strong) NSString * lights;
@property (nonatomic, strong) NSString * link;
@property (nonatomic, strong) NSString * nid;
@property (nonatomic, strong) NSString * read;
@property (nonatomic, strong) NSString * replies;
@property (nonatomic, assign) NSInteger showSubjectReplies;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) NSInteger unReplay;
@property (nonatomic, strong) NSString * uptime;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
