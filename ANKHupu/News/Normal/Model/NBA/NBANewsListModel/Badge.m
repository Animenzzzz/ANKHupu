//
//	Badge.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Badge.h"

NSString *const kBadgeColor = @"color";
NSString *const kBadgeName = @"name";

@interface Badge ()
@end
@implementation Badge




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBadgeColor] isKindOfClass:[NSNull class]]){
		self.color = dictionary[kBadgeColor];
	}	
	if(![dictionary[kBadgeName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kBadgeName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.color != nil){
		dictionary[kBadgeColor] = self.color;
	}
	if(self.name != nil){
		dictionary[kBadgeName] = self.name;
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
	if(self.color != nil){
		[aCoder encodeObject:self.color forKey:kBadgeColor];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kBadgeName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.color = [aDecoder decodeObjectForKey:kBadgeColor];
	self.name = [aDecoder decodeObjectForKey:kBadgeName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Badge *copy = [Badge new];

	copy.color = [self.color copy];
	copy.name = [self.name copy];

	return copy;
}
@end