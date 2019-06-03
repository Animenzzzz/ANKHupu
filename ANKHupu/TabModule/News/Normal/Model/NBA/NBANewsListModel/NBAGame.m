//
//	Game.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAGame.h"

NSString *const kGameGameLists = @"game_lists";
NSString *const kGameRefreshTime = @"refresh_time";

@interface NBAGame ()
@end
@implementation NBAGame




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kGameGameLists] != nil && [dictionary[kGameGameLists] isKindOfClass:[NSArray class]]){
		NSArray * gameListsDictionaries = dictionary[kGameGameLists];
		NSMutableArray * gameListsItems = [NSMutableArray array];
		for(NSDictionary * gameListsDictionary in gameListsDictionaries){
			GameList * gameListsItem = [[GameList alloc] initWithDictionary:gameListsDictionary];
			[gameListsItems addObject:gameListsItem];
		}
		self.gameLists = gameListsItems;
	}
	if(![dictionary[kGameRefreshTime] isKindOfClass:[NSNull class]]){
		self.refreshTime = [dictionary[kGameRefreshTime] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.gameLists != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(GameList * gameListsElement in self.gameLists){
			[dictionaryElements addObject:[gameListsElement toDictionary]];
		}
		dictionary[kGameGameLists] = dictionaryElements;
	}
	dictionary[kGameRefreshTime] = @(self.refreshTime);
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
	if(self.gameLists != nil){
		[aCoder encodeObject:self.gameLists forKey:kGameGameLists];
	}
	[aCoder encodeObject:@(self.refreshTime) forKey:kGameRefreshTime];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.gameLists = [aDecoder decodeObjectForKey:kGameGameLists];
	self.refreshTime = [[aDecoder decodeObjectForKey:kGameRefreshTime] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAGame *copy = [NBAGame new];

	copy.gameLists = [self.gameLists copy];
	copy.refreshTime = self.refreshTime;

	return copy;
}
@end
