#import <UIKit/UIKit.h>
#import "DataPhotoCel.h"

@interface OfflinePhotoCell : NSObject

@property (nonatomic, strong) DataPhotoCel * dataPhotoCel;
@property (nonatomic, assign) NSInteger status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end