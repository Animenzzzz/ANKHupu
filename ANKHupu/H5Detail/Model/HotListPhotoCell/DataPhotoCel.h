#import <UIKit/UIKit.h>
#import "BottomAd1.h"
#import "ForumPhotoCell.h"
#import "PraisePhotoCell.h"
#import "TopicPhotoCell.h"

@interface DataPhotoCel : NSObject

@property (nonatomic, assign) NSInteger ad;
@property (nonatomic, assign) NSInteger allPage;
@property (nonatomic, strong) NSString * authorPuid;
@property (nonatomic, strong) BottomAd1 * bottomAd;
@property (nonatomic, strong) NSString * checkReplyUrl;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, assign) NSInteger createTime;
@property (nonatomic, strong) NSString * defOrder;
@property (nonatomic, assign) NSInteger digest;
@property (nonatomic, assign) NSInteger fVideo;
@property (nonatomic, strong) NSString * fid;
@property (nonatomic, strong) ForumPhotoCell * forumPhotoCell;
@property (nonatomic, strong) NSString * groupid;
@property (nonatomic, assign) NSInteger hits;
@property (nonatomic, assign) BOOL isRegularized;
@property (nonatomic, assign) NSInteger isLock;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, assign) NSInteger isRecommendFilter;
@property (nonatomic, strong) NSString * isrec;
@property (nonatomic, assign) NSInteger jfbStyle;
@property (nonatomic, assign) NSInteger jiangjiStatus;
@property (nonatomic, assign) NSInteger lastpostTime;
@property (nonatomic, assign) NSInteger lights;
@property (nonatomic, strong) NSString * mergeTitle;
@property (nonatomic, assign) NSInteger nopic;
@property (nonatomic, assign) NSInteger nps;
@property (nonatomic, strong) NSString * page;
@property (nonatomic, assign) NSInteger pid;
@property (nonatomic, assign) NSInteger postAuthorPuid;
@property (nonatomic, strong) PraisePhotoCell * praisePhotoCell;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSString * recommendNum;
@property (nonatomic, strong) NSString * replies;
@property (nonatomic, assign) NSInteger shareNum;
@property (nonatomic, assign) NSInteger shareStyle;
@property (nonatomic, assign) NSInteger showPostPraise;
@property (nonatomic, strong) NSString * tid;
@property (nonatomic, strong) NSString * time;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) TopicPhotoCell * topicPhotoCell;
@property (nonatomic, assign) NSInteger topicId;
@property (nonatomic, assign) NSInteger totalPage;
@property (nonatomic, strong) NSString * updateInfo;
@property (nonatomic, strong) NSString * userImg;
@property (nonatomic, assign) NSInteger userBanned;
@property (nonatomic, strong) NSString * username;
@property (nonatomic, strong) NSString * via;
@property (nonatomic, strong) NSArray * videoInfo;
@property (nonatomic, strong) NSString * visits;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
