#import <UIKit/UIKit.h>

@interface Userinfo1 : NSObject

@property (nonatomic, strong) NSString * header;
@property (nonatomic, strong) NSString * nickname;
@property (nonatomic, assign) NSInteger uid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
