//
//	Group.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBATopicGroup.h"

NSString *const kNBATopicGroupNews = @"news";
NSString *const kNBATopicGroupOrderby = @"orderby";
NSString *const kNBATopicGroupTitle = @"title";

@interface NBATopicGroup ()
@end
@implementation NBATopicGroup




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kNBATopicGroupNews] != nil && [dictionary[kNBATopicGroupNews] isKindOfClass:[NSArray class]]){
		NSArray * newsDictionaries = dictionary[kNBATopicGroupNews];
		NSMutableArray * newsItems = [NSMutableArray array];
		for(NSDictionary * newsDictionary in newsDictionaries){
			NBATopicNew * newsItem = [[NBATopicNew alloc] initWithDictionary:newsDictionary];
			[newsItems addObject:newsItem];
		}
		self.news = newsItems;
	}
	if(![dictionary[kNBATopicGroupOrderby] isKindOfClass:[NSNull class]]){
		self.orderby = dictionary[kNBATopicGroupOrderby];
	}	
	if(![dictionary[kNBATopicGroupTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kNBATopicGroupTitle];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.news != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(NBATopicNew * newsElement in self.news){
			[dictionaryElements addObject:[newsElement toDictionary]];
		}
		dictionary[kNBATopicGroupNews] = dictionaryElements;
	}
	if(self.orderby != nil){
		dictionary[kNBATopicGroupOrderby] = self.orderby;
	}
	if(self.title != nil){
		dictionary[kNBATopicGroupTitle] = self.title;
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
	if(self.news != nil){
		[aCoder encodeObject:self.news forKey:kNBATopicGroupNews];
	}
	if(self.orderby != nil){
		[aCoder encodeObject:self.orderby forKey:kNBATopicGroupOrderby];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kNBATopicGroupTitle];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.news = [aDecoder decodeObjectForKey:kNBATopicGroupNews];
	self.orderby = [aDecoder decodeObjectForKey:kNBATopicGroupOrderby];
	self.title = [aDecoder decodeObjectForKey:kNBATopicGroupTitle];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBATopicGroup *copy = [NBATopicGroup new];

	copy.news = [self.news copy];
	copy.orderby = [self.orderby copy];
	copy.title = [self.title copy];

	return copy;
}
@end
