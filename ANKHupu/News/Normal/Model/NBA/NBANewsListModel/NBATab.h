#import <UIKit/UIKit.h>

@interface NBATab : NSObject

@property (nonatomic, strong) NSString * icon;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * schema;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
