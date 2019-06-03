#import <UIKit/UIKit.h>
#import "CommentDatalist.h"

@interface CommetType5result : NSObject

@property (nonatomic, strong) NSArray * commentDatalist;
@property (nonatomic, assign) NSInteger allPage;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end