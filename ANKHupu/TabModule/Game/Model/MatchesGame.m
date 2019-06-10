//
//	Game.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesGame.h"

NSString *const kMatchesGameData = @"data";
NSString *const kMatchesGameDateBlock = @"date_block";
NSString *const kMatchesGameDay = @"day";

@interface MatchesGame ()
@end
@implementation MatchesGame




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kMatchesGameData] != nil && [dictionary[kMatchesGameData] isKindOfClass:[NSArray class]]){
		NSArray * dataDictionaries = dictionary[kMatchesGameData];
		NSMutableArray * dataItems = [NSMutableArray array];
		for(NSDictionary * dataDictionary in dataDictionaries){
			MatchesData * dataItem = [[MatchesData alloc] initWithDictionary:dataDictionary];
			[dataItems addObject:dataItem];
		}
		self.data = dataItems;
	}
	if(![dictionary[kMatchesGameDateBlock] isKindOfClass:[NSNull class]]){
		self.dateBlock = dictionary[kMatchesGameDateBlock];
	}	
	if(![dictionary[kMatchesGameDay] isKindOfClass:[NSNull class]]){
		self.day = dictionary[kMatchesGameDay];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.data != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(MatchesData * dataElement in self.data){
			[dictionaryElements addObject:[dataElement toDictionary]];
		}
		dictionary[kMatchesGameData] = dictionaryElements;
	}
	if(self.dateBlock != nil){
		dictionary[kMatchesGameDateBlock] = self.dateBlock;
	}
	if(self.day != nil){
		dictionary[kMatchesGameDay] = self.day;
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
	if(self.data != nil){
		[aCoder encodeObject:self.data forKey:kMatchesGameData];
	}
	if(self.dateBlock != nil){
		[aCoder encodeObject:self.dateBlock forKey:kMatchesGameDateBlock];
	}
	if(self.day != nil){
		[aCoder encodeObject:self.day forKey:kMatchesGameDay];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.data = [aDecoder decodeObjectForKey:kMatchesGameData];
	self.dateBlock = [aDecoder decodeObjectForKey:kMatchesGameDateBlock];
	self.day = [aDecoder decodeObjectForKey:kMatchesGameDay];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesGame *copy = [MatchesGame new];

	copy.data = [self.data copy];
	copy.dateBlock = [self.dateBlock copy];
	copy.day = [self.day copy];

	return copy;
}
@end
