#import <UIKit/UIKit.h>
#import "AdGameBorder.h"
#import "AdGameBorder.h"
#import "NBAData.h"
#import "NBAGame.h"
#import "RecommendData.h"
#import "NBATab.h"

@interface NBAResult : NSObject

@property (nonatomic, strong) AdGameBorder * adGameBorder;
@property (nonatomic, strong) AdGameBorder * adPoster;
@property (nonatomic, strong) NSArray * data;
@property (nonatomic, assign) NSInteger displayNewCount;
@property (nonatomic, assign) NSInteger displayType;
@property (nonatomic, strong) NBAGame * game;
@property (nonatomic, assign) NSInteger nextDataExists;
@property (nonatomic, strong) NSArray * recommendData;
@property (nonatomic, assign) NSInteger showHotNews;
@property (nonatomic, assign) NSInteger showNewsLights;
@property (nonatomic, strong) NSArray * tabs;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
