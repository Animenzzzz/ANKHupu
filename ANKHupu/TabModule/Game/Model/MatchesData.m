//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesData.h"

NSString *const kMatchesDataAway = @"away";
NSString *const kMatchesDataAwayScore = @"away_score";
NSString *const kMatchesDataAwaySeries = @"away_series";
NSString *const kMatchesDataBeginTime = @"begin_time";
NSString *const kMatchesDataCategory = @"category";
NSString *const kMatchesDataDate = @"date";
NSString *const kMatchesDataEn = @"en";
NSString *const kMatchesDataGameType = @"game_type";
NSString *const kMatchesDataGid = @"gid";
NSString *const kMatchesDataHome = @"home";
NSString *const kMatchesDataHomeScore = @"home_score";
NSString *const kMatchesDataHomeSeries = @"home_series";
NSString *const kMatchesDataIcon = @"icon";
NSString *const kMatchesDataLid = @"lid";
NSString *const kMatchesDataOfficalRoomid = @"offical_roomid";
NSString *const kMatchesDataStatus = @"status";
NSString *const kMatchesDataStyle = @"style";
NSString *const kMatchesDataTeamFollows = @"teamFollows";
NSString *const kMatchesDataTvs = @"tvs";
NSString *const kMatchesDataUrl = @"url";

@interface MatchesData ()
@end
@implementation MatchesData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesDataAway] isKindOfClass:[NSNull class]]){
		self.away = [[MatchesAway alloc] initWithDictionary:dictionary[kMatchesDataAway]];
	}

	if(![dictionary[kMatchesDataAwayScore] isKindOfClass:[NSNull class]]){
		self.awayScore = [dictionary[kMatchesDataAwayScore] integerValue];
	}

	if(![dictionary[kMatchesDataAwaySeries] isKindOfClass:[NSNull class]]){
		self.awaySeries = dictionary[kMatchesDataAwaySeries];
	}	
	if(![dictionary[kMatchesDataBeginTime] isKindOfClass:[NSNull class]]){
		self.beginTime = [dictionary[kMatchesDataBeginTime] integerValue];
	}

	if(![dictionary[kMatchesDataCategory] isKindOfClass:[NSNull class]]){
		self.category = dictionary[kMatchesDataCategory];
	}	
	if(![dictionary[kMatchesDataDate] isKindOfClass:[NSNull class]]){
		self.date = dictionary[kMatchesDataDate];
	}	
	if(![dictionary[kMatchesDataEn] isKindOfClass:[NSNull class]]){
		self.en = dictionary[kMatchesDataEn];
	}	
	if(![dictionary[kMatchesDataGameType] isKindOfClass:[NSNull class]]){
		self.gameType = dictionary[kMatchesDataGameType];
	}	
	if(![dictionary[kMatchesDataGid] isKindOfClass:[NSNull class]]){
		self.gid = [dictionary[kMatchesDataGid] integerValue];
	}

	if(![dictionary[kMatchesDataHome] isKindOfClass:[NSNull class]]){
		self.home = [[MatchesAway alloc] initWithDictionary:dictionary[kMatchesDataHome]];
	}

	if(![dictionary[kMatchesDataHomeScore] isKindOfClass:[NSNull class]]){
		self.homeScore = [dictionary[kMatchesDataHomeScore] integerValue];
	}

	if(![dictionary[kMatchesDataHomeSeries] isKindOfClass:[NSNull class]]){
		self.homeSeries = dictionary[kMatchesDataHomeSeries];
	}	
	if(![dictionary[kMatchesDataIcon] isKindOfClass:[NSNull class]]){
		self.icon = [[MatchesIcon alloc] initWithDictionary:dictionary[kMatchesDataIcon]];
	}

	if(![dictionary[kMatchesDataLid] isKindOfClass:[NSNull class]]){
		self.lid = [dictionary[kMatchesDataLid] integerValue];
	}

	if(![dictionary[kMatchesDataOfficalRoomid] isKindOfClass:[NSNull class]]){
		self.officalRoomid = [dictionary[kMatchesDataOfficalRoomid] integerValue];
	}

	if(![dictionary[kMatchesDataStatus] isKindOfClass:[NSNull class]]){
		self.status = [[MatchesStatu alloc] initWithDictionary:dictionary[kMatchesDataStatus]];
	}

	if(![dictionary[kMatchesDataStyle] isKindOfClass:[NSNull class]]){
		self.style = dictionary[kMatchesDataStyle];
	}	
	if(![dictionary[kMatchesDataTeamFollows] isKindOfClass:[NSNull class]]){
		self.teamFollows = [dictionary[kMatchesDataTeamFollows] integerValue];
	}

	if(![dictionary[kMatchesDataTvs] isKindOfClass:[NSNull class]]){
		self.tvs = dictionary[kMatchesDataTvs];
	}	
	if(![dictionary[kMatchesDataUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kMatchesDataUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.away != nil){
		dictionary[kMatchesDataAway] = [self.away toDictionary];
	}
	dictionary[kMatchesDataAwayScore] = @(self.awayScore);
	if(self.awaySeries != nil){
		dictionary[kMatchesDataAwaySeries] = self.awaySeries;
	}
	dictionary[kMatchesDataBeginTime] = @(self.beginTime);
	if(self.category != nil){
		dictionary[kMatchesDataCategory] = self.category;
	}
	if(self.date != nil){
		dictionary[kMatchesDataDate] = self.date;
	}
	if(self.en != nil){
		dictionary[kMatchesDataEn] = self.en;
	}
	if(self.gameType != nil){
		dictionary[kMatchesDataGameType] = self.gameType;
	}
	dictionary[kMatchesDataGid] = @(self.gid);
	if(self.home != nil){
		dictionary[kMatchesDataHome] = [self.home toDictionary];
	}
	dictionary[kMatchesDataHomeScore] = @(self.homeScore);
	if(self.homeSeries != nil){
		dictionary[kMatchesDataHomeSeries] = self.homeSeries;
	}
	if(self.icon != nil){
		dictionary[kMatchesDataIcon] = [self.icon toDictionary];
	}
	dictionary[kMatchesDataLid] = @(self.lid);
	dictionary[kMatchesDataOfficalRoomid] = @(self.officalRoomid);
	if(self.status != nil){
		dictionary[kMatchesDataStatus] = [self.status toDictionary];
	}
	if(self.style != nil){
		dictionary[kMatchesDataStyle] = self.style;
	}
	dictionary[kMatchesDataTeamFollows] = @(self.teamFollows);
	if(self.tvs != nil){
		dictionary[kMatchesDataTvs] = self.tvs;
	}
	if(self.url != nil){
		dictionary[kMatchesDataUrl] = self.url;
	}
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
	if(self.away != nil){
		[aCoder encodeObject:self.away forKey:kMatchesDataAway];
	}
	[aCoder encodeObject:@(self.awayScore) forKey:kMatchesDataAwayScore];	if(self.awaySeries != nil){
		[aCoder encodeObject:self.awaySeries forKey:kMatchesDataAwaySeries];
	}
	[aCoder encodeObject:@(self.beginTime) forKey:kMatchesDataBeginTime];	if(self.category != nil){
		[aCoder encodeObject:self.category forKey:kMatchesDataCategory];
	}
	if(self.date != nil){
		[aCoder encodeObject:self.date forKey:kMatchesDataDate];
	}
	if(self.en != nil){
		[aCoder encodeObject:self.en forKey:kMatchesDataEn];
	}
	if(self.gameType != nil){
		[aCoder encodeObject:self.gameType forKey:kMatchesDataGameType];
	}
	[aCoder encodeObject:@(self.gid) forKey:kMatchesDataGid];	if(self.home != nil){
		[aCoder encodeObject:self.home forKey:kMatchesDataHome];
	}
	[aCoder encodeObject:@(self.homeScore) forKey:kMatchesDataHomeScore];	if(self.homeSeries != nil){
		[aCoder encodeObject:self.homeSeries forKey:kMatchesDataHomeSeries];
	}
	if(self.icon != nil){
		[aCoder encodeObject:self.icon forKey:kMatchesDataIcon];
	}
	[aCoder encodeObject:@(self.lid) forKey:kMatchesDataLid];	[aCoder encodeObject:@(self.officalRoomid) forKey:kMatchesDataOfficalRoomid];	if(self.status != nil){
		[aCoder encodeObject:self.status forKey:kMatchesDataStatus];
	}
	if(self.style != nil){
		[aCoder encodeObject:self.style forKey:kMatchesDataStyle];
	}
	[aCoder encodeObject:@(self.teamFollows) forKey:kMatchesDataTeamFollows];	if(self.tvs != nil){
		[aCoder encodeObject:self.tvs forKey:kMatchesDataTvs];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kMatchesDataUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.away = [aDecoder decodeObjectForKey:kMatchesDataAway];
	self.awayScore = [[aDecoder decodeObjectForKey:kMatchesDataAwayScore] integerValue];
	self.awaySeries = [aDecoder decodeObjectForKey:kMatchesDataAwaySeries];
	self.beginTime = [[aDecoder decodeObjectForKey:kMatchesDataBeginTime] integerValue];
	self.category = [aDecoder decodeObjectForKey:kMatchesDataCategory];
	self.date = [aDecoder decodeObjectForKey:kMatchesDataDate];
	self.en = [aDecoder decodeObjectForKey:kMatchesDataEn];
	self.gameType = [aDecoder decodeObjectForKey:kMatchesDataGameType];
	self.gid = [[aDecoder decodeObjectForKey:kMatchesDataGid] integerValue];
	self.home = [aDecoder decodeObjectForKey:kMatchesDataHome];
	self.homeScore = [[aDecoder decodeObjectForKey:kMatchesDataHomeScore] integerValue];
	self.homeSeries = [aDecoder decodeObjectForKey:kMatchesDataHomeSeries];
	self.icon = [aDecoder decodeObjectForKey:kMatchesDataIcon];
	self.lid = [[aDecoder decodeObjectForKey:kMatchesDataLid] integerValue];
	self.officalRoomid = [[aDecoder decodeObjectForKey:kMatchesDataOfficalRoomid] integerValue];
	self.status = [aDecoder decodeObjectForKey:kMatchesDataStatus];
	self.style = [aDecoder decodeObjectForKey:kMatchesDataStyle];
	self.teamFollows = [[aDecoder decodeObjectForKey:kMatchesDataTeamFollows] integerValue];
	self.tvs = [aDecoder decodeObjectForKey:kMatchesDataTvs];
	self.url = [aDecoder decodeObjectForKey:kMatchesDataUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesData *copy = [MatchesData new];

	copy.away = [self.away copy];
	copy.awayScore = self.awayScore;
	copy.awaySeries = [self.awaySeries copy];
	copy.beginTime = self.beginTime;
	copy.category = [self.category copy];
	copy.date = [self.date copy];
	copy.en = [self.en copy];
	copy.gameType = [self.gameType copy];
	copy.gid = self.gid;
	copy.home = [self.home copy];
	copy.homeScore = self.homeScore;
	copy.homeSeries = [self.homeSeries copy];
	copy.icon = [self.icon copy];
	copy.lid = self.lid;
	copy.officalRoomid = self.officalRoomid;
	copy.status = [self.status copy];
	copy.style = [self.style copy];
	copy.teamFollows = self.teamFollows;
	copy.tvs = [self.tvs copy];
	copy.url = [self.url copy];

	return copy;
}
@end
