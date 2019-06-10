#import <UIKit/UIKit.h>

@interface MatchesIcon : NSObject

@property (nonatomic, assign) NSInteger casino;
@property (nonatomic, strong) NSString * live;
@property (nonatomic, strong) NSString * recape;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
