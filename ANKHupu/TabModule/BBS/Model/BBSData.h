#import <UIKit/UIKit.h>
#import "BBSBadge.h"
#import "BBSForum.h"
#import "BBSTopic.h"

@interface BBSData : NSObject

@property (nonatomic, assign) NSInteger adType;
@property (nonatomic, assign) NSInteger addition;
@property (nonatomic, strong) NSArray * badge;
@property (nonatomic, strong) NSString * fid;
@property (nonatomic, strong) BBSForum * forum;
@property (nonatomic, strong) NSString * forumLogo;
@property (nonatomic, strong) NSString * forumName;
@property (nonatomic, assign) NSInteger isAd;
@property (nonatomic, assign) NSInteger lightReply;
@property (nonatomic, assign) NSInteger nps;
@property (nonatomic, assign) NSInteger position;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSString * replies;
@property (nonatomic, strong) NSString * tid;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) BBSTopic * topic;
@property (nonatomic, assign) NSInteger topicId;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, strong) NSString * userName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
