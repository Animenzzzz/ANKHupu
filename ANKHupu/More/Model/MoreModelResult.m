//
//	Result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MoreModelResult.h"

NSString *const kMoreModelResultBalance = @"balance";
NSString *const kMoreModelResultDiscovery = @"discovery";
NSString *const kMoreModelResultHupuDollorBalance = @"hupuDollor_balance";
NSString *const kMoreModelResultIsPubg = @"is_pubg";

@interface MoreModelResult ()
@end
@implementation MoreModelResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMoreModelResultBalance] isKindOfClass:[NSNull class]]){
		self.balance = [dictionary[kMoreModelResultBalance] integerValue];
	}

	if(dictionary[kMoreModelResultDiscovery] != nil && [dictionary[kMoreModelResultDiscovery] isKindOfClass:[NSArray class]]){
		NSArray * discoveryDictionaries = dictionary[kMoreModelResultDiscovery];
		NSMutableArray * discoveryItems = [NSMutableArray array];
		for(NSDictionary * discoveryDictionary in discoveryDictionaries){
			MoreDiscovery * discoveryItem = [[MoreDiscovery alloc] initWithDictionary:discoveryDictionary];
			[discoveryItems addObject:discoveryItem];
		}
		self.discovery = discoveryItems;
	}
	if(![dictionary[kMoreModelResultHupuDollorBalance] isKindOfClass:[NSNull class]]){
		self.hupuDollorBalance = [dictionary[kMoreModelResultHupuDollorBalance] integerValue];
	}

	if(![dictionary[kMoreModelResultIsPubg] isKindOfClass:[NSNull class]]){
		self.isPubg = [dictionary[kMoreModelResultIsPubg] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMoreModelResultBalance] = @(self.balance);
	if(self.discovery != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(MoreDiscovery * discoveryElement in self.discovery){
			[dictionaryElements addObject:[discoveryElement toDictionary]];
		}
		dictionary[kMoreModelResultDiscovery] = dictionaryElements;
	}
	dictionary[kMoreModelResultHupuDollorBalance] = @(self.hupuDollorBalance);
	dictionary[kMoreModelResultIsPubg] = @(self.isPubg);
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
	[aCoder encodeObject:@(self.balance) forKey:kMoreModelResultBalance];	if(self.discovery != nil){
		[aCoder encodeObject:self.discovery forKey:kMoreModelResultDiscovery];
	}
	[aCoder encodeObject:@(self.hupuDollorBalance) forKey:kMoreModelResultHupuDollorBalance];	[aCoder encodeObject:@(self.isPubg) forKey:kMoreModelResultIsPubg];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.balance = [[aDecoder decodeObjectForKey:kMoreModelResultBalance] integerValue];
	self.discovery = [aDecoder decodeObjectForKey:kMoreModelResultDiscovery];
	self.hupuDollorBalance = [[aDecoder decodeObjectForKey:kMoreModelResultHupuDollorBalance] integerValue];
	self.isPubg = [[aDecoder decodeObjectForKey:kMoreModelResultIsPubg] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MoreModelResult *copy = [MoreModelResult new];

	copy.balance = self.balance;
	copy.discovery = [self.discovery copy];
	copy.hupuDollorBalance = self.hupuDollorBalance;
	copy.isPubg = self.isPubg;

	return copy;
}
@end
