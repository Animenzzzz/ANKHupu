//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BBSRootModel.h"

NSString *const kBBSRootModelResult = @"result";

@interface BBSRootModel ()
@end
@implementation BBSRootModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBBSRootModelResult] isKindOfClass:[NSNull class]]){
		self.result = [[BBSResult alloc] initWithDictionary:dictionary[kBBSRootModelResult]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.result != nil){
		dictionary[kBBSRootModelResult] = [self.result toDictionary];
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
	if(self.result != nil){
		[aCoder encodeObject:self.result forKey:kBBSRootModelResult];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.result = [aDecoder decodeObjectForKey:kBBSRootModelResult];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BBSRootModel *copy = [BBSRootModel new];

	copy.result = [self.result copy];

	return copy;
}
@end
