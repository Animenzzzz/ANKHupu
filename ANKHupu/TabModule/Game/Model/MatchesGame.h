#import <UIKit/UIKit.h>
#import "MatchesData.h"

@interface MatchesGame : NSObject

@property (nonatomic, strong) NSArray * data;
@property (nonatomic, strong) NSString * dateBlock;
@property (nonatomic, strong) NSString * day;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
