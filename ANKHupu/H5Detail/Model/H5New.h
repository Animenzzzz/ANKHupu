#import <UIKit/UIKit.h>
#import "NewsDetailShare.h"
#import "NewsDetailTag.h"

@interface H5New : NSObject

@property (nonatomic, strong) NSString * addtime;
@property (nonatomic, strong) NSString * appUrl;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * img;
@property (nonatomic, strong) NSString * imgM;
@property (nonatomic, strong) NSString * league;
@property (nonatomic, strong) NSString * lights;
@property (nonatomic, strong) NSString * mUrl;
@property (nonatomic, strong) NewsDetailShare * newsDetailShare;
@property (nonatomic, strong) NSArray * newsDetailTags;
@property (nonatomic, strong) NSString * nid;
@property (nonatomic, strong) NSString * origin;
@property (nonatomic, strong) NSString * originUrl;
@property (nonatomic, strong) NSString * publishTime;
@property (nonatomic, strong) NSString * replies;
@property (nonatomic, strong) NSString * replyurl;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * type;
@property (nonatomic, strong) NSString * video;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
