#import <UIKit/UIKit.h>
#import "GameList.h"

@interface Game : NSObject

@property (nonatomic, strong) NSArray * gameLists;
@property (nonatomic, assign) NSInteger refreshTime;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end