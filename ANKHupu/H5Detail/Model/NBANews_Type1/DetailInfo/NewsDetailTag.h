#import <UIKit/UIKit.h>

@interface NewsDetailTag : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * url;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end