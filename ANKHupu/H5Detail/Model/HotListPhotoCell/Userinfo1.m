//
//	Userinfo.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Userinfo1.h"

NSString *const kUserinfo1Header = @"header";
NSString *const kUserinfo1Nickname = @"nickname";
NSString *const kUserinfo1Uid = @"uid";

@interface Userinfo1 ()
@end
@implementation Userinfo1




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kUserinfo1Header] isKindOfClass:[NSNull class]]){
		self.header = dictionary[kUserinfo1Header];
	}	
	if(![dictionary[kUserinfo1Nickname] isKindOfClass:[NSNull class]]){
		self.nickname = dictionary[kUserinfo1Nickname];
	}	
	if(![dictionary[kUserinfo1Uid] isKindOfClass:[NSNull class]]){
		self.uid = [dictionary[kUserinfo1Uid] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.header != nil){
		dictionary[kUserinfo1Header] = self.header;
	}
	if(self.nickname != nil){
		dictionary[kUserinfo1Nickname] = self.nickname;
	}
	dictionary[kUserinfo1Uid] = @(self.uid);
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
	if(self.header != nil){
		[aCoder encodeObject:self.header forKey:kUserinfo1Header];
	}
	if(self.nickname != nil){
		[aCoder encodeObject:self.nickname forKey:kUserinfo1Nickname];
	}
	[aCoder encodeObject:@(self.uid) forKey:kUserinfo1Uid];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.header = [aDecoder decodeObjectForKey:kUserinfo1Header];
	self.nickname = [aDecoder decodeObjectForKey:kUserinfo1Nickname];
	self.uid = [[aDecoder decodeObjectForKey:kUserinfo1Uid] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Userinfo1 *copy = [Userinfo1 new];

	copy.header = [self.header copy];
	copy.nickname = [self.nickname copy];
	copy.uid = self.uid;

	return copy;
}
@end
