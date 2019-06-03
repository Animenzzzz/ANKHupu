#import <UIKit/UIKit.h>
#import "DetailData.h"

@interface NewsDetailModel : NSObject

@property (nonatomic, strong) DetailData * data;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
