//
//	Day.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesDay.h"

NSString *const kMatchesDayAnchor = @"anchor";
NSString *const kMatchesDayCurrent = @"current";
NSString *const kMatchesDayMax = @"max";
NSString *const kMatchesDayMin = @"min";

@interface MatchesDay ()
@end
@implementation MatchesDay




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesDayAnchor] isKindOfClass:[NSNull class]]){
		self.anchor = [dictionary[kMatchesDayAnchor] integerValue];
	}

	if(![dictionary[kMatchesDayCurrent] isKindOfClass:[NSNull class]]){
		self.current = dictionary[kMatchesDayCurrent];
	}	
	if(![dictionary[kMatchesDayMax] isKindOfClass:[NSNull class]]){
		self.max = dictionary[kMatchesDayMax];
	}	
	if(![dictionary[kMatchesDayMin] isKindOfClass:[NSNull class]]){
		self.min = dictionary[kMatchesDayMin];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMatchesDayAnchor] = @(self.anchor);
	if(self.current != nil){
		dictionary[kMatchesDayCurrent] = self.current;
	}
	if(self.max != nil){
		dictionary[kMatchesDayMax] = self.max;
	}
	if(self.min != nil){
		dictionary[kMatchesDayMin] = self.min;
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
	[aCoder encodeObject:@(self.anchor) forKey:kMatchesDayAnchor];	if(self.current != nil){
		[aCoder encodeObject:self.current forKey:kMatchesDayCurrent];
	}
	if(self.max != nil){
		[aCoder encodeObject:self.max forKey:kMatchesDayMax];
	}
	if(self.min != nil){
		[aCoder encodeObject:self.min forKey:kMatchesDayMin];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.anchor = [[aDecoder decodeObjectForKey:kMatchesDayAnchor] integerValue];
	self.current = [aDecoder decodeObjectForKey:kMatchesDayCurrent];
	self.max = [aDecoder decodeObjectForKey:kMatchesDayMax];
	self.min = [aDecoder decodeObjectForKey:kMatchesDayMin];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesDay *copy = [MatchesDay new];

	copy.anchor = self.anchor;
	copy.current = [self.current copy];
	copy.max = [self.max copy];
	copy.min = [self.min copy];

	return copy;
}
@end
