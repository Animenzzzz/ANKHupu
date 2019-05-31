//
//	Certuser.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Certuser.h"

NSString *const kCertuserLure3 = @"3";

@interface Certuser ()
@end
@implementation Certuser




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCertuserLure3] isKindOfClass:[NSNull class]]){
		self.lure3 = [[Lure3 alloc] initWithDictionary:dictionary[kCertuserLure3]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.lure3 != nil){
		dictionary[kCertuserLure3] = [self.lure3 toDictionary];
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
	if(self.lure3 != nil){
		[aCoder encodeObject:self.lure3 forKey:kCertuserLure3];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.lure3 = [aDecoder decodeObjectForKey:kCertuserLure3];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Certuser *copy = [Certuser new];

	copy.lure3 = [self.lure3 copy];

	return copy;
}
@end
