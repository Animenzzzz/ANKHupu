//
//	NBAType5offlineData.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAType5offlineData.h"

NSString *const kNBAType5offlineDataNBAType5data = @"data";
NSString *const kNBAType5offlineDataStatus = @"status";

@interface NBAType5offlineData ()
@end
@implementation NBAType5offlineData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBAType5offlineDataNBAType5data] isKindOfClass:[NSNull class]]){
		self.nBAType5data = [[NBAType5data alloc] initWithDictionary:dictionary[kNBAType5offlineDataNBAType5data]];
	}

	if(![dictionary[kNBAType5offlineDataStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kNBAType5offlineDataStatus] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.nBAType5data != nil){
		dictionary[kNBAType5offlineDataNBAType5data] = [self.nBAType5data toDictionary];
	}
	dictionary[kNBAType5offlineDataStatus] = @(self.status);
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
	if(self.nBAType5data != nil){
		[aCoder encodeObject:self.nBAType5data forKey:kNBAType5offlineDataNBAType5data];
	}
	[aCoder encodeObject:@(self.status) forKey:kNBAType5offlineDataStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.nBAType5data = [aDecoder decodeObjectForKey:kNBAType5offlineDataNBAType5data];
	self.status = [[aDecoder decodeObjectForKey:kNBAType5offlineDataStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAType5offlineData *copy = [NBAType5offlineData new];

	copy.nBAType5data = [self.nBAType5data copy];
	copy.status = self.status;

	return copy;
}
@end
