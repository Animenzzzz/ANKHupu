//
//	AdInsidePop.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BBSAdInsidePop.h"

NSString *const kBBSAdInsidePopAdType = @"ad_type";
NSString *const kBBSAdInsidePopIsAd = @"is_ad";
NSString *const kBBSAdInsidePopPosition = @"position";

@interface BBSAdInsidePop ()
@end
@implementation BBSAdInsidePop




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBBSAdInsidePopAdType] isKindOfClass:[NSNull class]]){
		self.adType = [dictionary[kBBSAdInsidePopAdType] integerValue];
	}

	if(![dictionary[kBBSAdInsidePopIsAd] isKindOfClass:[NSNull class]]){
		self.isAd = [dictionary[kBBSAdInsidePopIsAd] integerValue];
	}

	if(![dictionary[kBBSAdInsidePopPosition] isKindOfClass:[NSNull class]]){
		self.position = [dictionary[kBBSAdInsidePopPosition] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kBBSAdInsidePopAdType] = @(self.adType);
	dictionary[kBBSAdInsidePopIsAd] = @(self.isAd);
	dictionary[kBBSAdInsidePopPosition] = @(self.position);
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
	[aCoder encodeObject:@(self.adType) forKey:kBBSAdInsidePopAdType];	[aCoder encodeObject:@(self.isAd) forKey:kBBSAdInsidePopIsAd];	[aCoder encodeObject:@(self.position) forKey:kBBSAdInsidePopPosition];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adType = [[aDecoder decodeObjectForKey:kBBSAdInsidePopAdType] integerValue];
	self.isAd = [[aDecoder decodeObjectForKey:kBBSAdInsidePopIsAd] integerValue];
	self.position = [[aDecoder decodeObjectForKey:kBBSAdInsidePopPosition] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BBSAdInsidePop *copy = [BBSAdInsidePop new];

	copy.adType = self.adType;
	copy.isAd = self.isAd;
	copy.position = self.position;

	return copy;
}
@end
