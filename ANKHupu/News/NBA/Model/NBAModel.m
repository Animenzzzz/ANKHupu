//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAModel.h"

NSString *const kRootClassCrt = @"crt";
NSString *const kRootClassIsLogin = @"is_login";
NSString *const kRootClassResult = @"result";

@interface NBAModel ()
@end
@implementation NBAModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRootClassCrt] isKindOfClass:[NSNull class]]){
		self.crt = [dictionary[kRootClassCrt] integerValue];
	}

	if(![dictionary[kRootClassIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kRootClassIsLogin] integerValue];
	}

	if(![dictionary[kRootClassResult] isKindOfClass:[NSNull class]]){
		self.result = [[NBAResult alloc] initWithDictionary:dictionary[kRootClassResult]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kRootClassCrt] = @(self.crt);
	dictionary[kRootClassIsLogin] = @(self.isLogin);
	if(self.result != nil){
		dictionary[kRootClassResult] = [self.result toDictionary];
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
	[aCoder encodeObject:@(self.crt) forKey:kRootClassCrt];	[aCoder encodeObject:@(self.isLogin) forKey:kRootClassIsLogin];	if(self.result != nil){
		[aCoder encodeObject:self.result forKey:kRootClassResult];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.crt = [[aDecoder decodeObjectForKey:kRootClassCrt] integerValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kRootClassIsLogin] integerValue];
	self.result = [aDecoder decodeObjectForKey:kRootClassResult];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAModel *copy = [NBAModel new];

	copy.crt = self.crt;
	copy.isLogin = self.isLogin;
	copy.result = [self.result copy];

	return copy;
}
@end
