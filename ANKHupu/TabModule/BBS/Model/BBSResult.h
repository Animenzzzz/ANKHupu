#import <UIKit/UIKit.h>
#import "BBSAdInsidePop.h"
#import "BBSAdInsidePop.h"
#import "BBSData.h"

@interface BBSResult : NSObject

@property (nonatomic, strong) BBSAdInsidePop * adInsidePop;
@property (nonatomic, strong) BBSAdInsidePop * adPoster;
@property (nonatomic, assign) NSInteger additionTid;
@property (nonatomic, strong) NSArray * data;
@property (nonatomic, assign) NSInteger displayTopicLogo;
@property (nonatomic, assign) NSInteger max;
@property (nonatomic, assign) NSInteger min;
@property (nonatomic, assign) BOOL nextPage;
@property (nonatomic, assign) NSInteger nowPage;
@property (nonatomic, strong) NSString * stamp;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
