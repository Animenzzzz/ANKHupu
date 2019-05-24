//
//	RecommendData.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RecommendData.h"

NSString *const kRecommendDataAdType = @"ad_type";
NSString *const kRecommendDataBadge = @"badge";
NSString *const kRecommendDataDisplayType = @"display_type";
NSString *const kRecommendDataIsAd = @"is_ad";
NSString *const kRecommendDataIsRecommend = @"is_recommend";
NSString *const kRecommendDataPosition = @"position";
NSString *const kRecommendDataType = @"type";

@interface RecommendData ()
@end
@implementation RecommendData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRecommendDataAdType] isKindOfClass:[NSNull class]]){
		self.adType = [dictionary[kRecommendDataAdType] integerValue];
	}

	if(dictionary[kRecommendDataBadge] != nil && [dictionary[kRecommendDataBadge] isKindOfClass:[NSArray class]]){
		NSArray * badgeDictionaries = dictionary[kRecommendDataBadge];
		NSMutableArray * badgeItems = [NSMutableArray array];
		for(NSDictionary * badgeDictionary in badgeDictionaries){
			Badge * badgeItem = [[Badge alloc] initWithDictionary:badgeDictionary];
			[badgeItems addObject:badgeItem];
		}
		self.badge = badgeItems;
	}
	if(![dictionary[kRecommendDataDisplayType] isKindOfClass:[NSNull class]]){
		self.displayType = [dictionary[kRecommendDataDisplayType] integerValue];
	}

	if(![dictionary[kRecommendDataIsAd] isKindOfClass:[NSNull class]]){
		self.isAd = [dictionary[kRecommendDataIsAd] integerValue];
	}

	if(![dictionary[kRecommendDataIsRecommend] isKindOfClass:[NSNull class]]){
		self.isRecommend = [dictionary[kRecommendDataIsRecommend] integerValue];
	}

	if(![dictionary[kRecommendDataPosition] isKindOfClass:[NSNull class]]){
		self.position = [dictionary[kRecommendDataPosition] integerValue];
	}

	if(![dictionary[kRecommendDataType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kRecommendDataType] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kRecommendDataAdType] = @(self.adType);
	if(self.badge != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(Badge * badgeElement in self.badge){
			[dictionaryElements addObject:[badgeElement toDictionary]];
		}
		dictionary[kRecommendDataBadge] = dictionaryElements;
	}
	dictionary[kRecommendDataDisplayType] = @(self.displayType);
	dictionary[kRecommendDataIsAd] = @(self.isAd);
	dictionary[kRecommendDataIsRecommend] = @(self.isRecommend);
	dictionary[kRecommendDataPosition] = @(self.position);
	dictionary[kRecommendDataType] = @(self.type);
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
	[aCoder encodeObject:@(self.adType) forKey:kRecommendDataAdType];	if(self.badge != nil){
		[aCoder encodeObject:self.badge forKey:kRecommendDataBadge];
	}
	[aCoder encodeObject:@(self.displayType) forKey:kRecommendDataDisplayType];	[aCoder encodeObject:@(self.isAd) forKey:kRecommendDataIsAd];	[aCoder encodeObject:@(self.isRecommend) forKey:kRecommendDataIsRecommend];	[aCoder encodeObject:@(self.position) forKey:kRecommendDataPosition];	[aCoder encodeObject:@(self.type) forKey:kRecommendDataType];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adType = [[aDecoder decodeObjectForKey:kRecommendDataAdType] integerValue];
	self.badge = [aDecoder decodeObjectForKey:kRecommendDataBadge];
	self.displayType = [[aDecoder decodeObjectForKey:kRecommendDataDisplayType] integerValue];
	self.isAd = [[aDecoder decodeObjectForKey:kRecommendDataIsAd] integerValue];
	self.isRecommend = [[aDecoder decodeObjectForKey:kRecommendDataIsRecommend] integerValue];
	self.position = [[aDecoder decodeObjectForKey:kRecommendDataPosition] integerValue];
	self.type = [[aDecoder decodeObjectForKey:kRecommendDataType] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RecommendData *copy = [RecommendData new];

	copy.adType = self.adType;
	copy.badge = [self.badge copy];
	copy.displayType = self.displayType;
	copy.isAd = self.isAd;
	copy.isRecommend = self.isRecommend;
	copy.position = self.position;
	copy.type = self.type;

	return copy;
}
@end