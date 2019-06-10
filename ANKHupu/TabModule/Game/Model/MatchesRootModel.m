//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MatchesRootModel.h"

NSString *const kMatchesRootModelCrt = @"crt";
NSString *const kMatchesRootModelIsLogin = @"is_login";
NSString *const kMatchesRootModelResult = @"result";

@interface MatchesRootModel ()
@end
@implementation MatchesRootModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMatchesRootModelCrt] isKindOfClass:[NSNull class]]){
		self.crt = [dictionary[kMatchesRootModelCrt] integerValue];
	}

	if(![dictionary[kMatchesRootModelIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kMatchesRootModelIsLogin] integerValue];
	}

	if(![dictionary[kMatchesRootModelResult] isKindOfClass:[NSNull class]]){
		self.result = [[MatchesResult alloc] initWithDictionary:dictionary[kMatchesRootModelResult]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMatchesRootModelCrt] = @(self.crt);
	dictionary[kMatchesRootModelIsLogin] = @(self.isLogin);
	if(self.result != nil){
		dictionary[kMatchesRootModelResult] = [self.result toDictionary];
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
	[aCoder encodeObject:@(self.crt) forKey:kMatchesRootModelCrt];	[aCoder encodeObject:@(self.isLogin) forKey:kMatchesRootModelIsLogin];	if(self.result != nil){
		[aCoder encodeObject:self.result forKey:kMatchesRootModelResult];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.crt = [[aDecoder decodeObjectForKey:kMatchesRootModelCrt] integerValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kMatchesRootModelIsLogin] integerValue];
	self.result = [aDecoder decodeObjectForKey:kMatchesRootModelResult];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MatchesRootModel *copy = [MatchesRootModel new];

	copy.crt = self.crt;
	copy.isLogin = self.isLogin;
	copy.result = [self.result copy];

	return copy;
}
@end
