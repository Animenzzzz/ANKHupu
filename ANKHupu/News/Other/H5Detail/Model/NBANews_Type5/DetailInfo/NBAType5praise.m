//
//	NBAType5praise.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAType5praise.h"

NSString *const kNBAType5praiseList = @"list";
NSString *const kNBAType5praiseStatus = @"status";
NSString *const kNBAType5praiseTips = @"tips";
NSString *const kNBAType5praiseUserinfo = @"userinfo";

@interface NBAType5praise ()
@end
@implementation NBAType5praise




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBAType5praiseList] isKindOfClass:[NSNull class]]){
		self.list = dictionary[kNBAType5praiseList];
	}	
	if(![dictionary[kNBAType5praiseStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kNBAType5praiseStatus] integerValue];
	}

	if(![dictionary[kNBAType5praiseTips] isKindOfClass:[NSNull class]]){
		self.tips = dictionary[kNBAType5praiseTips];
	}	
	if(![dictionary[kNBAType5praiseUserinfo] isKindOfClass:[NSNull class]]){
		self.userinfo = [[NBANewType5Userinfo alloc] initWithDictionary:dictionary[kNBAType5praiseUserinfo]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.list != nil){
		dictionary[kNBAType5praiseList] = self.list;
	}
	dictionary[kNBAType5praiseStatus] = @(self.status);
	if(self.tips != nil){
		dictionary[kNBAType5praiseTips] = self.tips;
	}
	if(self.userinfo != nil){
		dictionary[kNBAType5praiseUserinfo] = [self.userinfo toDictionary];
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
	if(self.list != nil){
		[aCoder encodeObject:self.list forKey:kNBAType5praiseList];
	}
	[aCoder encodeObject:@(self.status) forKey:kNBAType5praiseStatus];	if(self.tips != nil){
		[aCoder encodeObject:self.tips forKey:kNBAType5praiseTips];
	}
	if(self.userinfo != nil){
		[aCoder encodeObject:self.userinfo forKey:kNBAType5praiseUserinfo];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.list = [aDecoder decodeObjectForKey:kNBAType5praiseList];
	self.status = [[aDecoder decodeObjectForKey:kNBAType5praiseStatus] integerValue];
	self.tips = [aDecoder decodeObjectForKey:kNBAType5praiseTips];
	self.userinfo = [aDecoder decodeObjectForKey:kNBAType5praiseUserinfo];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAType5praise *copy = [NBAType5praise new];

	copy.list = [self.list copy];
	copy.status = self.status;
	copy.tips = [self.tips copy];
	copy.userinfo = [self.userinfo copy];

	return copy;
}
@end
