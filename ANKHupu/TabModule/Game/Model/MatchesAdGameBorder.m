//
//	AdGameBorder.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesAdGameBorder.h"

NSString *const kMatchesAdGameBorderAdType = @"ad_type";
NSString *const kMatchesAdGameBorderIsAd = @"is_ad";
NSString *const kMatchesAdGameBorderPosition = @"position";

@interface MatchesAdGameBorder ()
@end
@implementation MatchesAdGameBorder




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesAdGameBorderAdType] isKindOfClass:[NSNull class]]){
		self.adType = [dictionary[kMatchesAdGameBorderAdType] integerValue];
	}

	if(![dictionary[kMatchesAdGameBorderIsAd] isKindOfClass:[NSNull class]]){
		self.isAd = [dictionary[kMatchesAdGameBorderIsAd] integerValue];
	}

	if(![dictionary[kMatchesAdGameBorderPosition] isKindOfClass:[NSNull class]]){
		self.position = [dictionary[kMatchesAdGameBorderPosition] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMatchesAdGameBorderAdType] = @(self.adType);
	dictionary[kMatchesAdGameBorderIsAd] = @(self.isAd);
	dictionary[kMatchesAdGameBorderPosition] = @(self.position);
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
	[aCoder encodeObject:@(self.adType) forKey:kMatchesAdGameBorderAdType];	[aCoder encodeObject:@(self.isAd) forKey:kMatchesAdGameBorderIsAd];	[aCoder encodeObject:@(self.position) forKey:kMatchesAdGameBorderPosition];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adType = [[aDecoder decodeObjectForKey:kMatchesAdGameBorderAdType] integerValue];
	self.isAd = [[aDecoder decodeObjectForKey:kMatchesAdGameBorderIsAd] integerValue];
	self.position = [[aDecoder decodeObjectForKey:kMatchesAdGameBorderPosition] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesAdGameBorder *copy = [MatchesAdGameBorder new];

	copy.adType = self.adType;
	copy.isAd = self.isAd;
	copy.position = self.position;

	return copy;
}
@end
