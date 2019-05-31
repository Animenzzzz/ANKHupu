#import <UIKit/UIKit.h>
#import "HotListCommentList.h"

@interface HotListCommentResult : NSObject

@property (nonatomic, assign) NSInteger allPage;
@property (nonatomic, strong) NSArray * list;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
