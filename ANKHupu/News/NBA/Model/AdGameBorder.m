//
//	AdGameBorder.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "AdGameBorder.h"

NSString *const kAdGameBorderAdType = @"ad_type";
NSString *const kAdGameBorderIsAd = @"is_ad";
NSString *const kAdGameBorderPosition = @"position";

@interface AdGameBorder ()
@end
@implementation AdGameBorder




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAdGameBorderAdType] isKindOfClass:[NSNull class]]){
		self.adType = [dictionary[kAdGameBorderAdType] integerValue];
	}

	if(![dictionary[kAdGameBorderIsAd] isKindOfClass:[NSNull class]]){
		self.isAd = [dictionary[kAdGameBorderIsAd] integerValue];
	}

	if(![dictionary[kAdGameBorderPosition] isKindOfClass:[NSNull class]]){
		self.position = [dictionary[kAdGameBorderPosition] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kAdGameBorderAdType] = @(self.adType);
	dictionary[kAdGameBorderIsAd] = @(self.isAd);
	dictionary[kAdGameBorderPosition] = @(self.position);
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
	[aCoder encodeObject:@(self.adType) forKey:kAdGameBorderAdType];	[aCoder encodeObject:@(self.isAd) forKey:kAdGameBorderIsAd];	[aCoder encodeObject:@(self.position) forKey:kAdGameBorderPosition];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adType = [[aDecoder decodeObjectForKey:kAdGameBorderAdType] integerValue];
	self.isAd = [[aDecoder decodeObjectForKey:kAdGameBorderIsAd] integerValue];
	self.position = [[aDecoder decodeObjectForKey:kAdGameBorderPosition] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	AdGameBorder *copy = [AdGameBorder new];

	copy.adType = self.adType;
	copy.isAd = self.isAd;
	copy.position = self.position;

	return copy;
}
@end