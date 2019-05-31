#import <UIKit/UIKit.h>
#import "HotListCommentResult.h"

@interface HotListCellData : NSObject

@property (nonatomic, strong) HotListCommentResult * result;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
