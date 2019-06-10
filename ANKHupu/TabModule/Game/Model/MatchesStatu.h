#import <UIKit/UIKit.h>

@interface MatchesStatu : NSObject

@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, strong) NSString * txt;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
