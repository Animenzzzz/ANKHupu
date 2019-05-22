//
//	Result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAResult.h"

NSString *const kResultAdGameBorder = @"ad_game_border";
NSString *const kResultAdPoster = @"ad_poster";
NSString *const kResultData = @"data";
NSString *const kResultDisplayNewCount = @"display_new_count";
NSString *const kResultDisplayType = @"display_type";
NSString *const kResultGame = @"game";
NSString *const kResultNextDataExists = @"nextDataExists";
NSString *const kResultRecommendData = @"recommend_data";
NSString *const kResultShowHotNews = @"show_hot_news";
NSString *const kResultShowNewsLights = @"show_news_lights";
NSString *const kResultTabs = @"tabs";

@interface NBAResult ()
@end
@implementation NBAResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kResultAdGameBorder] isKindOfClass:[NSNull class]]){
		self.adGameBorder = [[AdGameBorder alloc] initWithDictionary:dictionary[kResultAdGameBorder]];
	}

	if(![dictionary[kResultAdPoster] isKindOfClass:[NSNull class]]){
		self.adPoster = [[AdGameBorder alloc] initWithDictionary:dictionary[kResultAdPoster]];
	}

	if(dictionary[kResultData] != nil && [dictionary[kResultData] isKindOfClass:[NSArray class]]){
		NSArray * dataDictionaries = dictionary[kResultData];
		NSMutableArray * dataItems = [NSMutableArray array];
		for(NSDictionary * dataDictionary in dataDictionaries){
			NBAData * dataItem = [[NBAData alloc] initWithDictionary:dataDictionary];
			[dataItems addObject:dataItem];
		}
		self.data = dataItems;
	}
	if(![dictionary[kResultDisplayNewCount] isKindOfClass:[NSNull class]]){
		self.displayNewCount = [dictionary[kResultDisplayNewCount] integerValue];
	}

	if(![dictionary[kResultDisplayType] isKindOfClass:[NSNull class]]){
		self.displayType = [dictionary[kResultDisplayType] integerValue];
	}

	if(![dictionary[kResultGame] isKindOfClass:[NSNull class]]){
		self.game = [[NBAGame alloc] initWithDictionary:dictionary[kResultGame]];
	}

	if(![dictionary[kResultNextDataExists] isKindOfClass:[NSNull class]]){
		self.nextDataExists = [dictionary[kResultNextDataExists] integerValue];
	}

	if(dictionary[kResultRecommendData] != nil && [dictionary[kResultRecommendData] isKindOfClass:[NSArray class]]){
		NSArray * recommendDataDictionaries = dictionary[kResultRecommendData];
		NSMutableArray * recommendDataItems = [NSMutableArray array];
		for(NSDictionary * recommendDataDictionary in recommendDataDictionaries){
			RecommendData * recommendDataItem = [[RecommendData alloc] initWithDictionary:recommendDataDictionary];
			[recommendDataItems addObject:recommendDataItem];
		}
		self.recommendData = recommendDataItems;
	}
	if(![dictionary[kResultShowHotNews] isKindOfClass:[NSNull class]]){
		self.showHotNews = [dictionary[kResultShowHotNews] integerValue];
	}

	if(![dictionary[kResultShowNewsLights] isKindOfClass:[NSNull class]]){
		self.showNewsLights = [dictionary[kResultShowNewsLights] integerValue];
	}

	if(dictionary[kResultTabs] != nil && [dictionary[kResultTabs] isKindOfClass:[NSArray class]]){
		NSArray * tabsDictionaries = dictionary[kResultTabs];
		NSMutableArray * tabsItems = [NSMutableArray array];
		for(NSDictionary * tabsDictionary in tabsDictionaries){
			NBATab * tabsItem = [[NBATab alloc] initWithDictionary:tabsDictionary];
			[tabsItems addObject:tabsItem];
		}
		self.tabs = tabsItems;
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
		dictionary[kResultAdGameBorder] = [self.adGameBorder toDictionary];
	}
	if(self.adPoster != nil){
		dictionary[kResultAdPoster] = [self.adPoster toDictionary];
	}
	if(self.data != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(NBAData * dataElement in self.data){
			[dictionaryElements addObject:[dataElement toDictionary]];
		}
		dictionary[kResultData] = dictionaryElements;
	}
	dictionary[kResultDisplayNewCount] = @(self.displayNewCount);
	dictionary[kResultDisplayType] = @(self.displayType);
	if(self.game != nil){
		dictionary[kResultGame] = [self.game toDictionary];
	}
	dictionary[kResultNextDataExists] = @(self.nextDataExists);
	if(self.recommendData != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(RecommendData * recommendDataElement in self.recommendData){
			[dictionaryElements addObject:[recommendDataElement toDictionary]];
		}
		dictionary[kResultRecommendData] = dictionaryElements;
	}
	dictionary[kResultShowHotNews] = @(self.showHotNews);
	dictionary[kResultShowNewsLights] = @(self.showNewsLights);
	if(self.tabs != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(NBATab * tabsElement in self.tabs){
			[dictionaryElements addObject:[tabsElement toDictionary]];
		}
		dictionary[kResultTabs] = dictionaryElements;
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
		[aCoder encodeObject:self.adGameBorder forKey:kResultAdGameBorder];
	}
	if(self.adPoster != nil){
		[aCoder encodeObject:self.adPoster forKey:kResultAdPoster];
	}
	if(self.data != nil){
		[aCoder encodeObject:self.data forKey:kResultData];
	}
	[aCoder encodeObject:@(self.displayNewCount) forKey:kResultDisplayNewCount];	[aCoder encodeObject:@(self.displayType) forKey:kResultDisplayType];	if(self.game != nil){
		[aCoder encodeObject:self.game forKey:kResultGame];
	}
	[aCoder encodeObject:@(self.nextDataExists) forKey:kResultNextDataExists];	if(self.recommendData != nil){
		[aCoder encodeObject:self.recommendData forKey:kResultRecommendData];
	}
	[aCoder encodeObject:@(self.showHotNews) forKey:kResultShowHotNews];	[aCoder encodeObject:@(self.showNewsLights) forKey:kResultShowNewsLights];	if(self.tabs != nil){
		[aCoder encodeObject:self.tabs forKey:kResultTabs];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adGameBorder = [aDecoder decodeObjectForKey:kResultAdGameBorder];
	self.adPoster = [aDecoder decodeObjectForKey:kResultAdPoster];
	self.data = [aDecoder decodeObjectForKey:kResultData];
	self.displayNewCount = [[aDecoder decodeObjectForKey:kResultDisplayNewCount] integerValue];
	self.displayType = [[aDecoder decodeObjectForKey:kResultDisplayType] integerValue];
	self.game = [aDecoder decodeObjectForKey:kResultGame];
	self.nextDataExists = [[aDecoder decodeObjectForKey:kResultNextDataExists] integerValue];
	self.recommendData = [aDecoder decodeObjectForKey:kResultRecommendData];
	self.showHotNews = [[aDecoder decodeObjectForKey:kResultShowHotNews] integerValue];
	self.showNewsLights = [[aDecoder decodeObjectForKey:kResultShowNewsLights] integerValue];
	self.tabs = [aDecoder decodeObjectForKey:kResultTabs];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAResult *copy = [NBAResult new];

	copy.adGameBorder = [self.adGameBorder copy];
	copy.adPoster = [self.adPoster copy];
	copy.data = [self.data copy];
	copy.displayNewCount = self.displayNewCount;
	copy.displayType = self.displayType;
	copy.game = [self.game copy];
	copy.nextDataExists = self.nextDataExists;
	copy.recommendData = [self.recommendData copy];
	copy.showHotNews = self.showHotNews;
	copy.showNewsLights = self.showNewsLights;
	copy.tabs = [self.tabs copy];

	return copy;
}
@end
