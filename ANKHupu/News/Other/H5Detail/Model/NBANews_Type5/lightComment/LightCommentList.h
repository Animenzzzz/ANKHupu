#import <UIKit/UIKit.h>
#import "LightCommentAttr.h"
#import "LightCommentCheckReplyInfo.h"
#import "LightCommentQuote.h"

@interface LightCommentList : NSObject

@property (nonatomic, strong) LightCommentAttr * attr;
@property (nonatomic, strong) LightCommentCheckReplyInfo * checkReplyInfo;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * groupid;
@property (nonatomic, assign) NSInteger lightCount;
@property (nonatomic, strong) NSString * pid;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSArray * quote;
@property (nonatomic, assign) NSInteger quoteDeleted;
@property (nonatomic, strong) NSString * smallcontent;
@property (nonatomic, strong) NSString * time;
@property (nonatomic, strong) NSString * togglecontent;
@property (nonatomic, strong) NSString * userImg;
@property (nonatomic, strong) NSString * userName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
