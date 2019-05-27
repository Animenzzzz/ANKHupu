//
//	CommetType5Modl.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommetType5Modl.h"

NSString *const kCommetType5ModlCommetType5result = @"result";
NSString *const kCommetType5ModlStatus = @"status";

@interface CommetType5Modl ()
@end
@implementation CommetType5Modl




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommetType5ModlCommetType5result] isKindOfClass:[NSNull class]]){
		self.commetType5result = [[CommetType5result alloc] initWithDictionary:dictionary[kCommetType5ModlCommetType5result]];
	}

	if(![dictionary[kCommetType5ModlStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kCommetType5ModlStatus] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.commetType5result != nil){
		dictionary[kCommetType5ModlCommetType5result] = [self.commetType5result toDictionary];
	}
	dictionary[kCommetType5ModlStatus] = @(self.status);
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
	if(self.commetType5result != nil){
		[aCoder encodeObject:self.commetType5result forKey:kCommetType5ModlCommetType5result];
	}
	[aCoder encodeObject:@(self.status) forKey:kCommetType5ModlStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.commetType5result = [aDecoder decodeObjectForKey:kCommetType5ModlCommetType5result];
	self.status = [[aDecoder decodeObjectForKey:kCommetType5ModlStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommetType5Modl *copy = [CommetType5Modl new];

	copy.commetType5result = [self.commetType5result copy];
	copy.status = self.status;

	return copy;
}
@end
