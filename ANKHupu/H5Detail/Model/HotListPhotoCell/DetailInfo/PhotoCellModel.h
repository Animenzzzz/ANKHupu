#import <UIKit/UIKit.h>
#import "OfflinePhotoCell.h"
#import "SharePhotoCell.h"
#import "TopicPhotoCell.h"

@interface PhotoCellModel : NSObject

@property (nonatomic, assign) NSInteger ad;
@property (nonatomic, strong) NSString * advId;
@property (nonatomic, assign) NSInteger allCount;
@property (nonatomic, strong) NSString * authorPuid;
@property (nonatomic, assign) NSInteger canScoreSort;
@property (nonatomic, strong) NSString * checkReplyUrl;
@property (nonatomic, strong) NSString * client;
@property (nonatomic, strong) NSString * defOrder;
@property (nonatomic, strong) NSArray * domainList;
@property (nonatomic, strong) NSString * fid;
@property (nonatomic, strong) NSString * forumLogo;
@property (nonatomic, strong) NSString * forumName;
@property (nonatomic, strong) NSString * isrec;
@property (nonatomic, assign) NSInteger jiangjiStatus;
@property (nonatomic, assign) NSInteger lights;
@property (nonatomic, strong) NSString * nps;
@property (nonatomic, strong) OfflinePhotoCell * offlinePhotoCell;
@property (nonatomic, strong) NSString * page;
@property (nonatomic, assign) NSInteger pageSize;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSString * recommendNum;
@property (nonatomic, strong) NSString * replies;
@property (nonatomic, strong) SharePhotoCell * sharePhotoCell;
@property (nonatomic, assign) NSInteger shareNum;
@property (nonatomic, strong) NSString * tid;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) TopicPhotoCell * topicPhotoCell;
@property (nonatomic, strong) NSString * url;
@property (nonatomic, strong) NSString * userName;
@property (nonatomic, strong) NSObject * videoInfo;
@property (nonatomic, assign) NSInteger videoPublish;
@property (nonatomic, strong) NSObject * videoUrl;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
