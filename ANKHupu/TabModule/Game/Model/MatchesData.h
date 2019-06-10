#import <UIKit/UIKit.h>
#import "MatchesAway.h"
#import "MatchesIcon.h"
#import "MatchesStatu.h"

@interface MatchesData : NSObject

@property (nonatomic, strong) MatchesAway * away;
@property (nonatomic, assign) NSInteger awayScore;
@property (nonatomic, strong) NSString * awaySeries;
@property (nonatomic, assign) NSInteger beginTime;
@property (nonatomic, strong) NSString * category;
@property (nonatomic, strong) NSString * date;
@property (nonatomic, strong) NSString * en;
@property (nonatomic, strong) NSString * gameType;
@property (nonatomic, assign) NSInteger gid;
@property (nonatomic, strong) MatchesAway * home;
@property (nonatomic, assign) NSInteger homeScore;
@property (nonatomic, strong) NSString * homeSeries;
@property (nonatomic, strong) MatchesIcon * icon;
@property (nonatomic, assign) NSInteger lid;
@property (nonatomic, assign) NSInteger officalRoomid;
@property (nonatomic, strong) MatchesStatu * status;
@property (nonatomic, strong) NSString * style;
@property (nonatomic, assign) NSInteger teamFollows;
@property (nonatomic, strong) NSArray * tvs;
@property (nonatomic, strong) NSString * url;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
