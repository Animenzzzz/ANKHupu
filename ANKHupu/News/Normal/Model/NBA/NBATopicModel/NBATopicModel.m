//
//	NBATopicModel.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBATopicModel.h"

NSString *const kNBATopicModelCrt = @"crt";
NSString *const kNBATopicModelIsLogin = @"is_login";
NSString *const kNBATopicModelResult = @"result";

@interface NBATopicModel ()
@end
@implementation NBATopicModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBATopicModelCrt] isKindOfClass:[NSNull class]]){
		self.crt = [dictionary[kNBATopicModelCrt] integerValue];
	}

	if(![dictionary[kNBATopicModelIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kNBATopicModelIsLogin] integerValue];
	}

	if(![dictionary[kNBATopicModelResult] isKindOfClass:[NSNull class]]){
		self.result = [[NBATopicResult alloc] initWithDictionary:dictionary[kNBATopicModelResult]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kNBATopicModelCrt] = @(self.crt);
	dictionary[kNBATopicModelIsLogin] = @(self.isLogin);
	if(self.result != nil){
		dictionary[kNBATopicModelResult] = [self.result toDictionary];
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
	[aCoder encodeObject:@(self.crt) forKey:kNBATopicModelCrt];	[aCoder encodeObject:@(self.isLogin) forKey:kNBATopicModelIsLogin];	if(self.result != nil){
		[aCoder encodeObject:self.result forKey:kNBATopicModelResult];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.crt = [[aDecoder decodeObjectForKey:kNBATopicModelCrt] integerValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kNBATopicModelIsLogin] integerValue];
	self.result = [aDecoder decodeObjectForKey:kNBATopicModelResult];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBATopicModel *copy = [NBATopicModel new];

	copy.crt = self.crt;
	copy.isLogin = self.isLogin;
	copy.result = [self.result copy];

	return copy;
}
@end
