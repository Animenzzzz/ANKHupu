#import <UIKit/UIKit.h>
#import "CommentAttr.h"
#import "Certuser.h"
#import "CheckReplyInfo.h"
#import "CommentType5Quote.h"

@interface CommentDatalist : NSObject

@property (nonatomic, strong) CommentAttr * attr;
@property (nonatomic, strong) NSString * certurl;
@property (nonatomic, strong) Certuser * certuser;
@property (nonatomic, strong) CheckReplyInfo * checkReplyInfo;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, assign) NSInteger floor;
@property (nonatomic, strong) NSString * groupid;
@property (nonatomic, assign) NSInteger lightCount;
@property (nonatomic, strong) NSString * pid;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSArray * quote;
@property (nonatomic, assign) NSInteger quoteDeleted;
@property (nonatomic, assign) NSInteger quoteLightCount;
@property (nonatomic, strong) NSString * smallcontent;
@property (nonatomic, strong) NSString * time;
@property (nonatomic, strong) NSString * togglecontent;
@property (nonatomic, strong) NSString * userImg;
@property (nonatomic, strong) NSString * userName;
@property (nonatomic, strong) NSString * via;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
