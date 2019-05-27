#import <UIKit/UIKit.h>
#import "CommentQuoteData.h"

@interface CommentData : NSObject

@property (nonatomic, strong) NSString * auditStatus;
@property (nonatomic, strong) NSString * cid;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, strong) NSString * formatTime;
@property (nonatomic, strong) NSString * from;
@property (nonatomic, strong) NSString * header;
@property (nonatomic, strong) NSString * lightCount;
@property (nonatomic, assign) NSInteger lighted;
@property (nonatomic, strong) NSString * ncid;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) CommentQuoteData * quoteData;
@property (nonatomic, strong) NSString * uid;
@property (nonatomic, strong) NSString * unlightCount;
@property (nonatomic, strong) NSString * userName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
