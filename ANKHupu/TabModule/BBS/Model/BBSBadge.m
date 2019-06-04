//
//	Badge.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BBSBadge.h"

NSString *const kBBSBadgeColor = @"color";
NSString *const kBBSBadgeName = @"name";

@interface BBSBadge ()
@end
@implementation BBSBadge




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBBSBadgeColor] isKindOfClass:[NSNull class]]){
		self.color = dictionary[kBBSBadgeColor];
	}	
	if(![dictionary[kBBSBadgeName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kBBSBadgeName];
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
		dictionary[kBBSBadgeColor] = self.color;
	}
	if(self.name != nil){
		dictionary[kBBSBadgeName] = self.name;
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
		[aCoder encodeObject:self.color forKey:kBBSBadgeColor];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kBBSBadgeName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.color = [aDecoder decodeObjectForKey:kBBSBadgeColor];
	self.name = [aDecoder decodeObjectForKey:kBBSBadgeName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BBSBadge *copy = [BBSBadge new];

	copy.color = [self.color copy];
	copy.name = [self.name copy];

	return copy;
}
@end
