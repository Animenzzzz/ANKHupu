#import <UIKit/UIKit.h>

@interface MoreDiscovery : NSObject

@property (nonatomic, strong) NSString * en;
@property (nonatomic, assign) NSInteger isshow;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * showDefaultTab;
@property (nonatomic, strong) NSString * showTemplate;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
