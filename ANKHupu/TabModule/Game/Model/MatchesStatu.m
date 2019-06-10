//
//	Statu.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesStatu.h"

NSString *const kMatchesStatuIdField = @"id";
NSString *const kMatchesStatuTxt = @"txt";

@interface MatchesStatu ()
@end
@implementation MatchesStatu




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesStatuIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kMatchesStatuIdField] integerValue];
	}

	if(![dictionary[kMatchesStatuTxt] isKindOfClass:[NSNull class]]){
		self.txt = dictionary[kMatchesStatuTxt];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMatchesStatuIdField] = @(self.idField);
	if(self.txt != nil){
		dictionary[kMatchesStatuTxt] = self.txt;
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
	[aCoder encodeObject:@(self.idField) forKey:kMatchesStatuIdField];	if(self.txt != nil){
		[aCoder encodeObject:self.txt forKey:kMatchesStatuTxt];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.idField = [[aDecoder decodeObjectForKey:kMatchesStatuIdField] integerValue];
	self.txt = [aDecoder decodeObjectForKey:kMatchesStatuTxt];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesStatu *copy = [MatchesStatu new];

	copy.idField = self.idField;
	copy.txt = [self.txt copy];

	return copy;
}
@end
