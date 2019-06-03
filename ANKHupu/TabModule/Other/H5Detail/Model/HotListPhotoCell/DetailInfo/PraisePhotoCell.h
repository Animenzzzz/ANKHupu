#import <UIKit/UIKit.h>
#import "Userinfo1.h"

@interface PraisePhotoCell : NSObject

@property (nonatomic, strong) NSArray * list;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * tips;
@property (nonatomic, strong) Userinfo1 * userinfo;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
