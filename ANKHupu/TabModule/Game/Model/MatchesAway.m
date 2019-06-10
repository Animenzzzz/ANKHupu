//
//	Away.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesAway.h"

NSString *const kMatchesAwayIdField = @"id";
NSString *const kMatchesAwayLogo = @"logo";
NSString *const kMatchesAwayName = @"name";

@interface MatchesAway ()
@end
@implementation MatchesAway




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesAwayIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kMatchesAwayIdField] integerValue];
	}

	if(![dictionary[kMatchesAwayLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kMatchesAwayLogo];
	}	
	if(![dictionary[kMatchesAwayName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kMatchesAwayName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMatchesAwayIdField] = @(self.idField);
	if(self.logo != nil){
		dictionary[kMatchesAwayLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kMatchesAwayName] = self.name;
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
	[aCoder encodeObject:@(self.idField) forKey:kMatchesAwayIdField];	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kMatchesAwayLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kMatchesAwayName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.idField = [[aDecoder decodeObjectForKey:kMatchesAwayIdField] integerValue];
	self.logo = [aDecoder decodeObjectForKey:kMatchesAwayLogo];
	self.name = [aDecoder decodeObjectForKey:kMatchesAwayName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesAway *copy = [MatchesAway new];

	copy.idField = self.idField;
	copy.logo = [self.logo copy];
	copy.name = [self.name copy];

	return copy;
}
@end
