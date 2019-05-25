//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MoreModel.h"

NSString *const kMoreModelCrt = @"crt";
NSString *const kMoreModelIsLogin = @"is_login";
NSString *const kMoreModelResult = @"result";

@interface MoreModel ()
@end
@implementation MoreModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMoreModelCrt] isKindOfClass:[NSNull class]]){
		self.crt = [dictionary[kMoreModelCrt] integerValue];
	}

	if(![dictionary[kMoreModelIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kMoreModelIsLogin] integerValue];
	}

	if(![dictionary[kMoreModelResult] isKindOfClass:[NSNull class]]){
		self.result = [[MoreModelResult alloc] initWithDictionary:dictionary[kMoreModelResult]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kMoreModelCrt] = @(self.crt);
	dictionary[kMoreModelIsLogin] = @(self.isLogin);
	if(self.result != nil){
		dictionary[kMoreModelResult] = [self.result toDictionary];
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
	[aCoder encodeObject:@(self.crt) forKey:kMoreModelCrt];	[aCoder encodeObject:@(self.isLogin) forKey:kMoreModelIsLogin];	if(self.result != nil){
		[aCoder encodeObject:self.result forKey:kMoreModelResult];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.crt = [[aDecoder decodeObjectForKey:kMoreModelCrt] integerValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kMoreModelIsLogin] integerValue];
	self.result = [aDecoder decodeObjectForKey:kMoreModelResult];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MoreModel *copy = [MoreModel new];

	copy.crt = self.crt;
	copy.isLogin = self.isLogin;
	copy.result = [self.result copy];

	return copy;
}
@end
