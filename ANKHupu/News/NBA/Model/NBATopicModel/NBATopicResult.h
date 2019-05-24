#import <UIKit/UIKit.h>
#import "NBATopicGroup.h"
#import "NBATopicShare.h"

@interface NBATopicResult : NSObject

@property (nonatomic, strong) NSString * addtime;
@property (nonatomic, assign) NSInteger displayType;
@property (nonatomic, strong) NSArray * groups;
@property (nonatomic, strong) NSString * img;
@property (nonatomic, strong) NSString * imgM;
@property (nonatomic, strong) NSString * isTop;
@property (nonatomic, strong) NSString * isTopValue;
@property (nonatomic, strong) NSString * league;
@property (nonatomic, strong) NSString * nid;
@property (nonatomic, strong) NSString * replies;
@property (nonatomic, strong) NBATopicShare * share;
@property (nonatomic, strong) NSString * snid;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * topTitle;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
