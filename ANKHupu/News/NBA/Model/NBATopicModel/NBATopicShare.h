#import <UIKit/UIKit.h>

@interface NBATopicShare : NSObject

@property (nonatomic, strong) NSString * img;
@property (nonatomic, strong) NSString * qq;
@property (nonatomic, strong) NSString * qzone;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * url;
@property (nonatomic, strong) NSString * wechat;
@property (nonatomic, strong) NSString * wechatMoments;
@property (nonatomic, strong) NSString * weibo;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
