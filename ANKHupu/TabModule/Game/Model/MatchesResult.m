//
//	Result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesResult.h"

NSString *const kMatchesResultAdGameBorder = @"ad_game_border";
NSString *const kMatchesResultDays = @"days";
NSString *const kMatchesResultGames = @"games";

@interface MatchesResult ()
@end
@implementation MatchesResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesResultAdGameBorder] isKindOfClass:[NSNull class]]){
		self.adGameBorder = [[MatchesAdGameBorder alloc] initWithDictionary:dictionary[kMatchesResultAdGameBorder]];
	}

	if(![dictionary[kMatchesResultDays] isKindOfClass:[NSNull class]]){
		self.days = [[MatchesDay alloc] initWithDictionary:dictionary[kMatchesResultDays]];
	}

	if(dictionary[kMatchesResultGames] != nil && [dictionary[kMatchesResultGames] isKindOfClass:[NSArray class]]){
		NSArray * gamesDictionaries = dictionary[kMatchesResultGames];
		NSMutableArray * gamesItems = [NSMutableArray array];
		for(NSDictionary * gamesDictionary in gamesDictionaries){
			MatchesGame * gamesItem = [[MatchesGame alloc] initWithDictionary:gamesDictionary];
			[gamesItems addObject:gamesItem];
		}
		self.games = gamesItems;
	}
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.adGameBorder != nil){
		dictionary[kMatchesResultAdGameBorder] = [self.adGameBorder toDictionary];
	}
	if(self.days != nil){
		dictionary[kMatchesResultDays] = [self.days toDictionary];
	}
	if(self.games != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(MatchesGame * gamesElement in self.games){
			[dictionaryElements addObject:[gamesElement toDictionary]];
		}
		dictionary[kMatchesResultGames] = dictionaryElements;
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
	if(self.adGameBorder != nil){
		[aCoder encodeObject:self.adGameBorder forKey:kMatchesResultAdGameBorder];
	}
	if(self.days != nil){
		[aCoder encodeObject:self.days forKey:kMatchesResultDays];
	}
	if(self.games != nil){
		[aCoder encodeObject:self.games forKey:kMatchesResultGames];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adGameBorder = [aDecoder decodeObjectForKey:kMatchesResultAdGameBorder];
	self.days = [aDecoder decodeObjectForKey:kMatchesResultDays];
	self.games = [aDecoder decodeObjectForKey:kMatchesResultGames];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesResult *copy = [MatchesResult new];

	copy.adGameBorder = [self.adGameBorder copy];
	copy.days = [self.days copy];
	copy.games = [self.games copy];

	return copy;
}
@end
