#import <UIKit/UIKit.h>
#import "MatchesAdGameBorder.h"
#import "MatchesDay.h"
#import "MatchesGame.h"

@interface MatchesResult : NSObject

@property (nonatomic, strong) MatchesAdGameBorder * adGameBorder;
@property (nonatomic, strong) MatchesDay * days;
@property (nonatomic, strong) NSArray * games;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
