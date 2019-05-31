#import <UIKit/UIKit.h>

@interface CommentLinkCommentLinkNew : NSObject

@property (nonatomic, strong) NSString * addtime;
@property (nonatomic, strong) NSString * appUrl;
@property (nonatomic, strong) NSString * league;
@property (nonatomic, strong) NSString * mUrl;
@property (nonatomic, strong) NSString * origin;
@property (nonatomic, strong) NSString * originUrl;
@property (nonatomic, strong) NSString * publishTime;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
