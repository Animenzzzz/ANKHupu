#import <UIKit/UIKit.h>

@interface MatchesAway : NSObject

@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
