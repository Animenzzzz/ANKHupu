//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NewsDetailModel.h"

NSString *const kRootClassData = @"data";
NSString *const kRootClassStatus = @"status";

@interface NewsDetailModel ()
@end
@implementation NewsDetailModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRootClassData] isKindOfClass:[NSNull class]]){
		self.data = [[DetailData alloc] initWithDictionary:dictionary[kRootClassData]];
	}

	if(![dictionary[kRootClassStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kRootClassStatus] integerValue];
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
		dictionary[kRootClassData] = [self.data toDictionary];
	}
	dictionary[kRootClassStatus] = @(self.status);
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
		[aCoder encodeObject:self.data forKey:kRootClassData];
	}
	[aCoder encodeObject:@(self.status) forKey:kRootClassStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.data = [aDecoder decodeObjectForKey:kRootClassData];
	self.status = [[aDecoder decodeObjectForKey:kRootClassStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NewsDetailModel *copy = [NewsDetailModel new];

	copy.data = [self.data copy];
	copy.status = self.status;

	return copy;
}
@end
