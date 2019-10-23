//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LightCommentRoot.h"

NSString *const kLightCommentRootClassData = @"data";
NSString *const kLightCommentRootClassStatus = @"status";

@interface LightCommentRoot ()
@end
@implementation LightCommentRoot




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLightCommentRootClassData] isKindOfClass:[NSNull class]]){
		self.data = [[LightCommentData alloc] initWithDictionary:dictionary[kLightCommentRootClassData]];
	}

	if(![dictionary[kLightCommentRootClassStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kLightCommentRootClassStatus] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.data != nil){
		dictionary[kLightCommentRootClassData] = [self.data toDictionary];
	}
	dictionary[kLightCommentRootClassStatus] = @(self.status);
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
	if(self.data != nil){
		[aCoder encodeObject:self.data forKey:kLightCommentRootClassData];
	}
	[aCoder encodeObject:@(self.status) forKey:kLightCommentRootClassStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.data = [aDecoder decodeObjectForKey:kLightCommentRootClassData];
	self.status = [[aDecoder decodeObjectForKey:kLightCommentRootClassStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LightCommentRoot *copy = [LightCommentRoot new];

	copy.data = [self.data copy];
	copy.status = self.status;

	return copy;
}
@end
