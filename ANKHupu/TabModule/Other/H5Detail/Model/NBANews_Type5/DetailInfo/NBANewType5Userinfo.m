//
//	Userinfo.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBANewType5Userinfo.h"

NSString *const kUserinfoHeader = @"header";
NSString *const kUserinfoNickname = @"nickname";
NSString *const kUserinfoUid = @"uid";

@interface NBANewType5Userinfo ()
@end
@implementation NBANewType5Userinfo




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kUserinfoHeader] isKindOfClass:[NSNull class]]){
		self.header = dictionary[kUserinfoHeader];
	}	
	if(![dictionary[kUserinfoNickname] isKindOfClass:[NSNull class]]){
		self.nickname = dictionary[kUserinfoNickname];
	}	
	if(![dictionary[kUserinfoUid] isKindOfClass:[NSNull class]]){
		self.uid = [dictionary[kUserinfoUid] integerValue];
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
		dictionary[kUserinfoHeader] = self.header;
	}
	if(self.nickname != nil){
		dictionary[kUserinfoNickname] = self.nickname;
	}
	dictionary[kUserinfoUid] = @(self.uid);
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
		[aCoder encodeObject:self.header forKey:kUserinfoHeader];
	}
	if(self.nickname != nil){
		[aCoder encodeObject:self.nickname forKey:kUserinfoNickname];
	}
	[aCoder encodeObject:@(self.uid) forKey:kUserinfoUid];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.header = [aDecoder decodeObjectForKey:kUserinfoHeader];
	self.nickname = [aDecoder decodeObjectForKey:kUserinfoNickname];
	self.uid = [[aDecoder decodeObjectForKey:kUserinfoUid] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBANewType5Userinfo *copy = [NBANewType5Userinfo new];

	copy.header = [self.header copy];
	copy.nickname = [self.nickname copy];
	copy.uid = self.uid;

	return copy;
}
@end
