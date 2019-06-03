#import <UIKit/UIKit.h>
#import "CommentData.h"
#import "LightComment.h"
#import "CommentLinkNew.h"

@interface DtailData : NSObject

@property (nonatomic, strong) NSString * cid;
@property (nonatomic, strong) NSString * count;
@property (nonatomic, strong) NSArray * data;
@property (nonatomic, assign) NSInteger hasNextPage;
@property (nonatomic, assign) NSInteger isAdmin;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, strong) NSArray * lightComments;
@property (nonatomic, strong) NSString * lightMoreCount;
@property (nonatomic, strong) NSString * lightMoreUrl;
@property (nonatomic, strong) CommentLinkCommentLinkNew * news;
@property (nonatomic, strong) NSString * uid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
