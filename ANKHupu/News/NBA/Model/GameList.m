//
//	GameList.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "GameList.h"

NSString *const kGameListAwayFouls = @"away_fouls";
NSString *const kGameListAwayFoulsColor = @"away_fouls_color";
NSString *const kGameListAwayLogo = @"away_logo";
NSString *const kGameListAwayName = @"away_name";
NSString *const kGameListAwayScore = @"away_score";
NSString *const kGameListAwaySeries = @"away_series";
NSString *const kGameListAwayTid = @"away_tid";
NSString *const kGameListAwayTimeout = @"away_timeout";
NSString *const kGameListBeginTime = @"begin_time";
NSString *const kGameListChatDisable = @"chat_disable";
NSString *const kGameListDateTime = @"date_time";
NSString *const kGameListDefaultTab = @"default_tab";
NSString *const kGameListGameId = @"game_id";
NSString *const kGameListGameName = @"game_name";
NSString *const kGameListGameStyle = @"game_style";
NSString *const kGameListGameType = @"game_type";
NSString *const kGameListGid = @"gid";
NSString *const kGameListHomeFouls = @"home_fouls";
NSString *const kGameListHomeFoulsColor = @"home_fouls_color";
NSString *const kGameListHomeLogo = @"home_logo";
NSString *const kGameListHomeName = @"home_name";
NSString *const kGameListHomeScore = @"home_score";
NSString *const kGameListHomeSeries = @"home_series";
NSString *const kGameListHomeTid = @"home_tid";
NSString *const kGameListHomeTimeout = @"home_timeout";
NSString *const kGameListIsOlympic = @"is_olympic";
NSString *const kGameListLeagueEn = @"league_en";
NSString *const kGameListLeagueName = @"league_name";
NSString *const kGameListLid = @"lid";
NSString *const kGameListLive = @"live";
NSString *const kGameListLiveInfo = @"live_info";
NSString *const kGameListLiveStatus = @"live_status";
NSString *const kGameListMatchType = @"match_type";
NSString *const kGameListOfficalRoomid = @"offical_roomid";
NSString *const kGameListOrderNum = @"order_num";
NSString *const kGameListProcess = @"process";
NSString *const kGameListRace = @"race";
NSString *const kGameListRaceV = @"race_v";
NSString *const kGameListRelatedLrwId = @"related_lrw_id";
NSString *const kGameListRelationGid = @"relation_gid";
NSString *const kGameListSeason = @"season";
NSString *const kGameListStage = @"stage";
NSString *const kGameListStatus = @"status";
NSString *const kGameListTvs = @"tvs";
NSString *const kGameListType = @"type";
NSString *const kGameListVideoCollection = @"video_collection";
NSString *const kGameListWillStart = @"will_start";

@interface GameList ()
@end
@implementation GameList




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kGameListAwayFouls] isKindOfClass:[NSNull class]]){
		self.awayFouls = dictionary[kGameListAwayFouls];
	}	
	if(![dictionary[kGameListAwayFoulsColor] isKindOfClass:[NSNull class]]){
		self.awayFoulsColor = dictionary[kGameListAwayFoulsColor];
	}	
	if(![dictionary[kGameListAwayLogo] isKindOfClass:[NSNull class]]){
		self.awayLogo = dictionary[kGameListAwayLogo];
	}	
	if(![dictionary[kGameListAwayName] isKindOfClass:[NSNull class]]){
		self.awayName = dictionary[kGameListAwayName];
	}	
	if(![dictionary[kGameListAwayScore] isKindOfClass:[NSNull class]]){
		self.awayScore = dictionary[kGameListAwayScore];
	}	
	if(![dictionary[kGameListAwaySeries] isKindOfClass:[NSNull class]]){
		self.awaySeries = dictionary[kGameListAwaySeries];
	}	
	if(![dictionary[kGameListAwayTid] isKindOfClass:[NSNull class]]){
		self.awayTid = dictionary[kGameListAwayTid];
	}	
	if(![dictionary[kGameListAwayTimeout] isKindOfClass:[NSNull class]]){
		self.awayTimeout = dictionary[kGameListAwayTimeout];
	}	
	if(![dictionary[kGameListBeginTime] isKindOfClass:[NSNull class]]){
		self.beginTime = dictionary[kGameListBeginTime];
	}	
	if(![dictionary[kGameListChatDisable] isKindOfClass:[NSNull class]]){
		self.chatDisable = dictionary[kGameListChatDisable];
	}	
	if(![dictionary[kGameListDateTime] isKindOfClass:[NSNull class]]){
		self.dateTime = dictionary[kGameListDateTime];
	}	
	if(![dictionary[kGameListDefaultTab] isKindOfClass:[NSNull class]]){
		self.defaultTab = dictionary[kGameListDefaultTab];
	}	
	if(![dictionary[kGameListGameId] isKindOfClass:[NSNull class]]){
		self.gameId = dictionary[kGameListGameId];
	}	
	if(![dictionary[kGameListGameName] isKindOfClass:[NSNull class]]){
		self.gameName = dictionary[kGameListGameName];
	}	
	if(![dictionary[kGameListGameStyle] isKindOfClass:[NSNull class]]){
		self.gameStyle = dictionary[kGameListGameStyle];
	}	
	if(![dictionary[kGameListGameType] isKindOfClass:[NSNull class]]){
		self.gameType = dictionary[kGameListGameType];
	}	
	if(![dictionary[kGameListGid] isKindOfClass:[NSNull class]]){
		self.gid = dictionary[kGameListGid];
	}	
	if(![dictionary[kGameListHomeFouls] isKindOfClass:[NSNull class]]){
		self.homeFouls = dictionary[kGameListHomeFouls];
	}	
	if(![dictionary[kGameListHomeFoulsColor] isKindOfClass:[NSNull class]]){
		self.homeFoulsColor = dictionary[kGameListHomeFoulsColor];
	}	
	if(![dictionary[kGameListHomeLogo] isKindOfClass:[NSNull class]]){
		self.homeLogo = dictionary[kGameListHomeLogo];
	}	
	if(![dictionary[kGameListHomeName] isKindOfClass:[NSNull class]]){
		self.homeName = dictionary[kGameListHomeName];
	}	
	if(![dictionary[kGameListHomeScore] isKindOfClass:[NSNull class]]){
		self.homeScore = dictionary[kGameListHomeScore];
	}	
	if(![dictionary[kGameListHomeSeries] isKindOfClass:[NSNull class]]){
		self.homeSeries = dictionary[kGameListHomeSeries];
	}	
	if(![dictionary[kGameListHomeTid] isKindOfClass:[NSNull class]]){
		self.homeTid = dictionary[kGameListHomeTid];
	}	
	if(![dictionary[kGameListHomeTimeout] isKindOfClass:[NSNull class]]){
		self.homeTimeout = dictionary[kGameListHomeTimeout];
	}	
	if(![dictionary[kGameListIsOlympic] isKindOfClass:[NSNull class]]){
		self.isOlympic = dictionary[kGameListIsOlympic];
	}	
	if(![dictionary[kGameListLeagueEn] isKindOfClass:[NSNull class]]){
		self.leagueEn = dictionary[kGameListLeagueEn];
	}	
	if(![dictionary[kGameListLeagueName] isKindOfClass:[NSNull class]]){
		self.leagueName = dictionary[kGameListLeagueName];
	}	
	if(![dictionary[kGameListLid] isKindOfClass:[NSNull class]]){
		self.lid = dictionary[kGameListLid];
	}	
	if(![dictionary[kGameListLive] isKindOfClass:[NSNull class]]){
		self.live = dictionary[kGameListLive];
	}	
	if(![dictionary[kGameListLiveInfo] isKindOfClass:[NSNull class]]){
		self.liveInfo = dictionary[kGameListLiveInfo];
	}	
	if(![dictionary[kGameListLiveStatus] isKindOfClass:[NSNull class]]){
		self.liveStatus = dictionary[kGameListLiveStatus];
	}	
	if(![dictionary[kGameListMatchType] isKindOfClass:[NSNull class]]){
		self.matchType = dictionary[kGameListMatchType];
	}	
	if(![dictionary[kGameListOfficalRoomid] isKindOfClass:[NSNull class]]){
		self.officalRoomid = dictionary[kGameListOfficalRoomid];
	}	
	if(![dictionary[kGameListOrderNum] isKindOfClass:[NSNull class]]){
		self.orderNum = dictionary[kGameListOrderNum];
	}	
	if(![dictionary[kGameListProcess] isKindOfClass:[NSNull class]]){
		self.process = dictionary[kGameListProcess];
	}	
	if(![dictionary[kGameListRace] isKindOfClass:[NSNull class]]){
		self.race = dictionary[kGameListRace];
	}	
	if(![dictionary[kGameListRaceV] isKindOfClass:[NSNull class]]){
		self.raceV = dictionary[kGameListRaceV];
	}	
	if(![dictionary[kGameListRelatedLrwId] isKindOfClass:[NSNull class]]){
		self.relatedLrwId = dictionary[kGameListRelatedLrwId];
	}	
	if(![dictionary[kGameListRelationGid] isKindOfClass:[NSNull class]]){
		self.relationGid = dictionary[kGameListRelationGid];
	}	
	if(![dictionary[kGameListSeason] isKindOfClass:[NSNull class]]){
		self.season = dictionary[kGameListSeason];
	}	
	if(![dictionary[kGameListStage] isKindOfClass:[NSNull class]]){
		self.stage = dictionary[kGameListStage];
	}	
	if(![dictionary[kGameListStatus] isKindOfClass:[NSNull class]]){
		self.status = dictionary[kGameListStatus];
	}	
	if(![dictionary[kGameListTvs] isKindOfClass:[NSNull class]]){
		self.tvs = dictionary[kGameListTvs];
	}	
	if(![dictionary[kGameListType] isKindOfClass:[NSNull class]]){
		self.type = dictionary[kGameListType];
	}	
	if(![dictionary[kGameListVideoCollection] isKindOfClass:[NSNull class]]){
		self.videoCollection = dictionary[kGameListVideoCollection];
	}	
	if(![dictionary[kGameListWillStart] isKindOfClass:[NSNull class]]){
		self.willStart = [dictionary[kGameListWillStart] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.awayFouls != nil){
		dictionary[kGameListAwayFouls] = self.awayFouls;
	}
	if(self.awayFoulsColor != nil){
		dictionary[kGameListAwayFoulsColor] = self.awayFoulsColor;
	}
	if(self.awayLogo != nil){
		dictionary[kGameListAwayLogo] = self.awayLogo;
	}
	if(self.awayName != nil){
		dictionary[kGameListAwayName] = self.awayName;
	}
	if(self.awayScore != nil){
		dictionary[kGameListAwayScore] = self.awayScore;
	}
	if(self.awaySeries != nil){
		dictionary[kGameListAwaySeries] = self.awaySeries;
	}
	if(self.awayTid != nil){
		dictionary[kGameListAwayTid] = self.awayTid;
	}
	if(self.awayTimeout != nil){
		dictionary[kGameListAwayTimeout] = self.awayTimeout;
	}
	if(self.beginTime != nil){
		dictionary[kGameListBeginTime] = self.beginTime;
	}
	if(self.chatDisable != nil){
		dictionary[kGameListChatDisable] = self.chatDisable;
	}
	if(self.dateTime != nil){
		dictionary[kGameListDateTime] = self.dateTime;
	}
	if(self.defaultTab != nil){
		dictionary[kGameListDefaultTab] = self.defaultTab;
	}
	if(self.gameId != nil){
		dictionary[kGameListGameId] = self.gameId;
	}
	if(self.gameName != nil){
		dictionary[kGameListGameName] = self.gameName;
	}
	if(self.gameStyle != nil){
		dictionary[kGameListGameStyle] = self.gameStyle;
	}
	if(self.gameType != nil){
		dictionary[kGameListGameType] = self.gameType;
	}
	if(self.gid != nil){
		dictionary[kGameListGid] = self.gid;
	}
	if(self.homeFouls != nil){
		dictionary[kGameListHomeFouls] = self.homeFouls;
	}
	if(self.homeFoulsColor != nil){
		dictionary[kGameListHomeFoulsColor] = self.homeFoulsColor;
	}
	if(self.homeLogo != nil){
		dictionary[kGameListHomeLogo] = self.homeLogo;
	}
	if(self.homeName != nil){
		dictionary[kGameListHomeName] = self.homeName;
	}
	if(self.homeScore != nil){
		dictionary[kGameListHomeScore] = self.homeScore;
	}
	if(self.homeSeries != nil){
		dictionary[kGameListHomeSeries] = self.homeSeries;
	}
	if(self.homeTid != nil){
		dictionary[kGameListHomeTid] = self.homeTid;
	}
	if(self.homeTimeout != nil){
		dictionary[kGameListHomeTimeout] = self.homeTimeout;
	}
	if(self.isOlympic != nil){
		dictionary[kGameListIsOlympic] = self.isOlympic;
	}
	if(self.leagueEn != nil){
		dictionary[kGameListLeagueEn] = self.leagueEn;
	}
	if(self.leagueName != nil){
		dictionary[kGameListLeagueName] = self.leagueName;
	}
	if(self.lid != nil){
		dictionary[kGameListLid] = self.lid;
	}
	if(self.live != nil){
		dictionary[kGameListLive] = self.live;
	}
	if(self.liveInfo != nil){
		dictionary[kGameListLiveInfo] = self.liveInfo;
	}
	if(self.liveStatus != nil){
		dictionary[kGameListLiveStatus] = self.liveStatus;
	}
	if(self.matchType != nil){
		dictionary[kGameListMatchType] = self.matchType;
	}
	if(self.officalRoomid != nil){
		dictionary[kGameListOfficalRoomid] = self.officalRoomid;
	}
	if(self.orderNum != nil){
		dictionary[kGameListOrderNum] = self.orderNum;
	}
	if(self.process != nil){
		dictionary[kGameListProcess] = self.process;
	}
	if(self.race != nil){
		dictionary[kGameListRace] = self.race;
	}
	if(self.raceV != nil){
		dictionary[kGameListRaceV] = self.raceV;
	}
	if(self.relatedLrwId != nil){
		dictionary[kGameListRelatedLrwId] = self.relatedLrwId;
	}
	if(self.relationGid != nil){
		dictionary[kGameListRelationGid] = self.relationGid;
	}
	if(self.season != nil){
		dictionary[kGameListSeason] = self.season;
	}
	if(self.stage != nil){
		dictionary[kGameListStage] = self.stage;
	}
	if(self.status != nil){
		dictionary[kGameListStatus] = self.status;
	}
	if(self.tvs != nil){
		dictionary[kGameListTvs] = self.tvs;
	}
	if(self.type != nil){
		dictionary[kGameListType] = self.type;
	}
	if(self.videoCollection != nil){
		dictionary[kGameListVideoCollection] = self.videoCollection;
	}
	dictionary[kGameListWillStart] = @(self.willStart);
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	if(self.awayFouls != nil){
		[aCoder encodeObject:self.awayFouls forKey:kGameListAwayFouls];
	}
	if(self.awayFoulsColor != nil){
		[aCoder encodeObject:self.awayFoulsColor forKey:kGameListAwayFoulsColor];
	}
	if(self.awayLogo != nil){
		[aCoder encodeObject:self.awayLogo forKey:kGameListAwayLogo];
	}
	if(self.awayName != nil){
		[aCoder encodeObject:self.awayName forKey:kGameListAwayName];
	}
	if(self.awayScore != nil){
		[aCoder encodeObject:self.awayScore forKey:kGameListAwayScore];
	}
	if(self.awaySeries != nil){
		[aCoder encodeObject:self.awaySeries forKey:kGameListAwaySeries];
	}
	if(self.awayTid != nil){
		[aCoder encodeObject:self.awayTid forKey:kGameListAwayTid];
	}
	if(self.awayTimeout != nil){
		[aCoder encodeObject:self.awayTimeout forKey:kGameListAwayTimeout];
	}
	if(self.beginTime != nil){
		[aCoder encodeObject:self.beginTime forKey:kGameListBeginTime];
	}
	if(self.chatDisable != nil){
		[aCoder encodeObject:self.chatDisable forKey:kGameListChatDisable];
	}
	if(self.dateTime != nil){
		[aCoder encodeObject:self.dateTime forKey:kGameListDateTime];
	}
	if(self.defaultTab != nil){
		[aCoder encodeObject:self.defaultTab forKey:kGameListDefaultTab];
	}
	if(self.gameId != nil){
		[aCoder encodeObject:self.gameId forKey:kGameListGameId];
	}
	if(self.gameName != nil){
		[aCoder encodeObject:self.gameName forKey:kGameListGameName];
	}
	if(self.gameStyle != nil){
		[aCoder encodeObject:self.gameStyle forKey:kGameListGameStyle];
	}
	if(self.gameType != nil){
		[aCoder encodeObject:self.gameType forKey:kGameListGameType];
	}
	if(self.gid != nil){
		[aCoder encodeObject:self.gid forKey:kGameListGid];
	}
	if(self.homeFouls != nil){
		[aCoder encodeObject:self.homeFouls forKey:kGameListHomeFouls];
	}
	if(self.homeFoulsColor != nil){
		[aCoder encodeObject:self.homeFoulsColor forKey:kGameListHomeFoulsColor];
	}
	if(self.homeLogo != nil){
		[aCoder encodeObject:self.homeLogo forKey:kGameListHomeLogo];
	}
	if(self.homeName != nil){
		[aCoder encodeObject:self.homeName forKey:kGameListHomeName];
	}
	if(self.homeScore != nil){
		[aCoder encodeObject:self.homeScore forKey:kGameListHomeScore];
	}
	if(self.homeSeries != nil){
		[aCoder encodeObject:self.homeSeries forKey:kGameListHomeSeries];
	}
	if(self.homeTid != nil){
		[aCoder encodeObject:self.homeTid forKey:kGameListHomeTid];
	}
	if(self.homeTimeout != nil){
		[aCoder encodeObject:self.homeTimeout forKey:kGameListHomeTimeout];
	}
	if(self.isOlympic != nil){
		[aCoder encodeObject:self.isOlympic forKey:kGameListIsOlympic];
	}
	if(self.leagueEn != nil){
		[aCoder encodeObject:self.leagueEn forKey:kGameListLeagueEn];
	}
	if(self.leagueName != nil){
		[aCoder encodeObject:self.leagueName forKey:kGameListLeagueName];
	}
	if(self.lid != nil){
		[aCoder encodeObject:self.lid forKey:kGameListLid];
	}
	if(self.live != nil){
		[aCoder encodeObject:self.live forKey:kGameListLive];
	}
	if(self.liveInfo != nil){
		[aCoder encodeObject:self.liveInfo forKey:kGameListLiveInfo];
	}
	if(self.liveStatus != nil){
		[aCoder encodeObject:self.liveStatus forKey:kGameListLiveStatus];
	}
	if(self.matchType != nil){
		[aCoder encodeObject:self.matchType forKey:kGameListMatchType];
	}
	if(self.officalRoomid != nil){
		[aCoder encodeObject:self.officalRoomid forKey:kGameListOfficalRoomid];
	}
	if(self.orderNum != nil){
		[aCoder encodeObject:self.orderNum forKey:kGameListOrderNum];
	}
	if(self.process != nil){
		[aCoder encodeObject:self.process forKey:kGameListProcess];
	}
	if(self.race != nil){
		[aCoder encodeObject:self.race forKey:kGameListRace];
	}
	if(self.raceV != nil){
		[aCoder encodeObject:self.raceV forKey:kGameListRaceV];
	}
	if(self.relatedLrwId != nil){
		[aCoder encodeObject:self.relatedLrwId forKey:kGameListRelatedLrwId];
	}
	if(self.relationGid != nil){
		[aCoder encodeObject:self.relationGid forKey:kGameListRelationGid];
	}
	if(self.season != nil){
		[aCoder encodeObject:self.season forKey:kGameListSeason];
	}
	if(self.stage != nil){
		[aCoder encodeObject:self.stage forKey:kGameListStage];
	}
	if(self.status != nil){
		[aCoder encodeObject:self.status forKey:kGameListStatus];
	}
	if(self.tvs != nil){
		[aCoder encodeObject:self.tvs forKey:kGameListTvs];
	}
	if(self.type != nil){
		[aCoder encodeObject:self.type forKey:kGameListType];
	}
	if(self.videoCollection != nil){
		[aCoder encodeObject:self.videoCollection forKey:kGameListVideoCollection];
	}
	[aCoder encodeObject:@(self.willStart) forKey:kGameListWillStart];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.awayFouls = [aDecoder decodeObjectForKey:kGameListAwayFouls];
	self.awayFoulsColor = [aDecoder decodeObjectForKey:kGameListAwayFoulsColor];
	self.awayLogo = [aDecoder decodeObjectForKey:kGameListAwayLogo];
	self.awayName = [aDecoder decodeObjectForKey:kGameListAwayName];
	self.awayScore = [aDecoder decodeObjectForKey:kGameListAwayScore];
	self.awaySeries = [aDecoder decodeObjectForKey:kGameListAwaySeries];
	self.awayTid = [aDecoder decodeObjectForKey:kGameListAwayTid];
	self.awayTimeout = [aDecoder decodeObjectForKey:kGameListAwayTimeout];
	self.beginTime = [aDecoder decodeObjectForKey:kGameListBeginTime];
	self.chatDisable = [aDecoder decodeObjectForKey:kGameListChatDisable];
	self.dateTime = [aDecoder decodeObjectForKey:kGameListDateTime];
	self.defaultTab = [aDecoder decodeObjectForKey:kGameListDefaultTab];
	self.gameId = [aDecoder decodeObjectForKey:kGameListGameId];
	self.gameName = [aDecoder decodeObjectForKey:kGameListGameName];
	self.gameStyle = [aDecoder decodeObjectForKey:kGameListGameStyle];
	self.gameType = [aDecoder decodeObjectForKey:kGameListGameType];
	self.gid = [aDecoder decodeObjectForKey:kGameListGid];
	self.homeFouls = [aDecoder decodeObjectForKey:kGameListHomeFouls];
	self.homeFoulsColor = [aDecoder decodeObjectForKey:kGameListHomeFoulsColor];
	self.homeLogo = [aDecoder decodeObjectForKey:kGameListHomeLogo];
	self.homeName = [aDecoder decodeObjectForKey:kGameListHomeName];
	self.homeScore = [aDecoder decodeObjectForKey:kGameListHomeScore];
	self.homeSeries = [aDecoder decodeObjectForKey:kGameListHomeSeries];
	self.homeTid = [aDecoder decodeObjectForKey:kGameListHomeTid];
	self.homeTimeout = [aDecoder decodeObjectForKey:kGameListHomeTimeout];
	self.isOlympic = [aDecoder decodeObjectForKey:kGameListIsOlympic];
	self.leagueEn = [aDecoder decodeObjectForKey:kGameListLeagueEn];
	self.leagueName = [aDecoder decodeObjectForKey:kGameListLeagueName];
	self.lid = [aDecoder decodeObjectForKey:kGameListLid];
	self.live = [aDecoder decodeObjectForKey:kGameListLive];
	self.liveInfo = [aDecoder decodeObjectForKey:kGameListLiveInfo];
	self.liveStatus = [aDecoder decodeObjectForKey:kGameListLiveStatus];
	self.matchType = [aDecoder decodeObjectForKey:kGameListMatchType];
	self.officalRoomid = [aDecoder decodeObjectForKey:kGameListOfficalRoomid];
	self.orderNum = [aDecoder decodeObjectForKey:kGameListOrderNum];
	self.process = [aDecoder decodeObjectForKey:kGameListProcess];
	self.race = [aDecoder decodeObjectForKey:kGameListRace];
	self.raceV = [aDecoder decodeObjectForKey:kGameListRaceV];
	self.relatedLrwId = [aDecoder decodeObjectForKey:kGameListRelatedLrwId];
	self.relationGid = [aDecoder decodeObjectForKey:kGameListRelationGid];
	self.season = [aDecoder decodeObjectForKey:kGameListSeason];
	self.stage = [aDecoder decodeObjectForKey:kGameListStage];
	self.status = [aDecoder decodeObjectForKey:kGameListStatus];
	self.tvs = [aDecoder decodeObjectForKey:kGameListTvs];
	self.type = [aDecoder decodeObjectForKey:kGameListType];
	self.videoCollection = [aDecoder decodeObjectForKey:kGameListVideoCollection];
	self.willStart = [[aDecoder decodeObjectForKey:kGameListWillStart] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	GameList *copy = [GameList new];

	copy.awayFouls = [self.awayFouls copy];
	copy.awayFoulsColor = [self.awayFoulsColor copy];
	copy.awayLogo = [self.awayLogo copy];
	copy.awayName = [self.awayName copy];
	copy.awayScore = [self.awayScore copy];
	copy.awaySeries = [self.awaySeries copy];
	copy.awayTid = [self.awayTid copy];
	copy.awayTimeout = [self.awayTimeout copy];
	copy.beginTime = [self.beginTime copy];
	copy.chatDisable = [self.chatDisable copy];
	copy.dateTime = [self.dateTime copy];
	copy.defaultTab = [self.defaultTab copy];
	copy.gameId = [self.gameId copy];
	copy.gameName = [self.gameName copy];
	copy.gameStyle = [self.gameStyle copy];
	copy.gameType = [self.gameType copy];
	copy.gid = [self.gid copy];
	copy.homeFouls = [self.homeFouls copy];
	copy.homeFoulsColor = [self.homeFoulsColor copy];
	copy.homeLogo = [self.homeLogo copy];
	copy.homeName = [self.homeName copy];
	copy.homeScore = [self.homeScore copy];
	copy.homeSeries = [self.homeSeries copy];
	copy.homeTid = [self.homeTid copy];
	copy.homeTimeout = [self.homeTimeout copy];
	copy.isOlympic = [self.isOlympic copy];
	copy.leagueEn = [self.leagueEn copy];
	copy.leagueName = [self.leagueName copy];
	copy.lid = [self.lid copy];
	copy.live = [self.live copy];
	copy.liveInfo = [self.liveInfo copy];
	copy.liveStatus = [self.liveStatus copy];
	copy.matchType = [self.matchType copy];
	copy.officalRoomid = [self.officalRoomid copy];
	copy.orderNum = [self.orderNum copy];
	copy.process = [self.process copy];
	copy.race = [self.race copy];
	copy.raceV = [self.raceV copy];
	copy.relatedLrwId = [self.relatedLrwId copy];
	copy.relationGid = [self.relationGid copy];
	copy.season = [self.season copy];
	copy.stage = [self.stage copy];
	copy.status = [self.status copy];
	copy.tvs = [self.tvs copy];
	copy.type = [self.type copy];
	copy.videoCollection = [self.videoCollection copy];
	copy.willStart = self.willStart;

	return copy;
}
@end