#import <UIKit/UIKit.h>
#import "H5New.h"

@interface DetailData : NSObject

@property (nonatomic, strong) NSObject * advId;
@property (nonatomic, strong) NSString * cid;
@property (nonatomic, strong) NSString * client;
@property (nonatomic, assign) NSInteger ft;
@property (nonatomic, strong) NSString * header;
@property (nonatomic, assign) NSInteger isAdmin;
@property (nonatomic, assign) BOOL isJrs;
@property (nonatomic, assign) NSInteger isLogin;
@property (nonatomic, strong) NSString * leaguesEn;
@property (nonatomic, strong) H5New * news;
@property (nonatomic, assign) NSInteger night;
@property (nonatomic, strong) NSString * nopic;
@property (nonatomic, strong) NSString * projectId;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSObject * uid;
@property (nonatomic, strong) NSString * userName;
@property (nonatomic, strong) NSString * version;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
