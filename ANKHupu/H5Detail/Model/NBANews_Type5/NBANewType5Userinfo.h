#import <UIKit/UIKit.h>

@interface NBANewType5Userinfo : NSObject

@property (nonatomic, strong) NSString * header;
@property (nonatomic, strong) NSString * nickname;
@property (nonatomic, assign) NSInteger uid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
