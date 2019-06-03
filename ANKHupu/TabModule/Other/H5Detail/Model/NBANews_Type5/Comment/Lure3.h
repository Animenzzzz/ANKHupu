#import <UIKit/UIKit.h>

@interface Lure3 : NSObject

@property (nonatomic, strong) NSString * certIcon;
@property (nonatomic, strong) NSString * certInfo;
@property (nonatomic, strong) NSString * certType;
@property (nonatomic, strong) NSString * certUrl;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end