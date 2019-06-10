//
//	Icon.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesIcon.h"

NSString *const kMatchesIconCasino = @"casino";
NSString *const kMatchesIconLive = @"live";
NSString *const kMatchesIconRecape = @"recape";

@interface MatchesIcon ()
@end
@implementation MatchesIcon




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesIconCasino] isKindOfClass:[NSNull class]]){
		self.casino = [dictionary[kMatchesIconCasino] integerValue];
	}

	if(![dictionary[kMatchesIconLive] isKindOfClass:[NSNull class]]){
		self.live = dictionary[kMatchesIconLive];
	}	
	if(![dictionary[kMatchesIconRecape] isKindOfClass:[NSNull class]]){
		self.recape = dictionary[kMatchesIconRecape];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMatchesIconCasino] = @(self.casino);
	if(self.live != nil){
		dictionary[kMatchesIconLive] = self.live;
	}
	if(self.recape != nil){
		dictionary[kMatchesIconRecape] = self.recape;
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
	[aCoder encodeObject:@(self.casino) forKey:kMatchesIconCasino];	if(self.live != nil){
		[aCoder encodeObject:self.live forKey:kMatchesIconLive];
	}
	if(self.recape != nil){
		[aCoder encodeObject:self.recape forKey:kMatchesIconRecape];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.casino = [[aDecoder decodeObjectForKey:kMatchesIconCasino] integerValue];
	self.live = [aDecoder decodeObjectForKey:kMatchesIconLive];
	self.recape = [aDecoder decodeObjectForKey:kMatchesIconRecape];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesIcon *copy = [MatchesIcon new];

	copy.casino = self.casino;
	copy.live = [self.live copy];
	copy.recape = [self.recape copy];

	return copy;
}
@end
