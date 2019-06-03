#import <UIKit/UIKit.h>

@interface GameList : NSObject

@property (nonatomic, strong) NSString * awayFouls;
@property (nonatomic, strong) NSString * awayFoulsColor;
@property (nonatomic, strong) NSString * awayLogo;
@property (nonatomic, strong) NSString * awayName;
@property (nonatomic, strong) NSString * awayScore;
@property (nonatomic, strong) NSString * awaySeries;
@property (nonatomic, strong) NSString * awayTid;
@property (nonatomic, strong) NSString * awayTimeout;
@property (nonatomic, strong) NSString * beginTime;
@property (nonatomic, strong) NSString * chatDisable;
@property (nonatomic, strong) NSString * dateTime;
@property (nonatomic, strong) NSString * defaultTab;
@property (nonatomic, strong) NSString * gameId;
@property (nonatomic, strong) NSString * gameName;
@property (nonatomic, strong) NSString * gameStyle;
@property (nonatomic, strong) NSString * gameType;
@property (nonatomic, strong) NSString * gid;
@property (nonatomic, strong) NSString * homeFouls;
@property (nonatomic, strong) NSString * homeFoulsColor;
@property (nonatomic, strong) NSString * homeLogo;
@property (nonatomic, strong) NSString * homeName;
@property (nonatomic, strong) NSString * homeScore;
@property (nonatomic, strong) NSString * homeSeries;
@property (nonatomic, strong) NSString * homeTid;
@property (nonatomic, strong) NSString * homeTimeout;
@property (nonatomic, strong) NSString * isOlympic;
@property (nonatomic, strong) NSString * leagueEn;
@property (nonatomic, strong) NSString * leagueName;
@property (nonatomic, strong) NSString * lid;
@property (nonatomic, strong) NSString * live;
@property (nonatomic, strong) NSString * liveInfo;
@property (nonatomic, strong) NSString * liveStatus;
@property (nonatomic, strong) NSString * matchType;
@property (nonatomic, strong) NSString * officalRoomid;
@property (nonatomic, strong) NSString * orderNum;
@property (nonatomic, strong) NSString * process;
@property (nonatomic, strong) NSString * race;
@property (nonatomic, strong) NSString * raceV;
@property (nonatomic, strong) NSString * relatedLrwId;
@property (nonatomic, strong) NSString * relationGid;
@property (nonatomic, strong) NSString * season;
@property (nonatomic, strong) NSString * stage;
@property (nonatomic, strong) NSString * status;
@property (nonatomic, strong) NSArray * tvs;
@property (nonatomic, strong) NSString * type;
@property (nonatomic, strong) NSString * videoCollection;
@property (nonatomic, assign) NSInteger willStart;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end