#import <UIKit/UIKit.h>
#import "HotListCellData.h"

@interface HotListCommentRoot : NSObject

@property (nonatomic, strong) HotListCellData * data;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
