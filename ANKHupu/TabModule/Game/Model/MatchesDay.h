#import <UIKit/UIKit.h>

@interface MatchesDay : NSObject

@property (nonatomic, assign) NSInteger anchor;
@property (nonatomic, strong) NSString * current;
@property (nonatomic, strong) NSString * max;
@property (nonatomic, strong) NSString * min;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
