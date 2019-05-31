//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "HotListCommentRoot.h"

NSString *const kHotListCommentRootData = @"data";
NSString *const kHotListCommentRootStatus = @"status";

@interface HotListCommentRoot ()
@end
@implementation HotListCommentRoot




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kHotListCommentRootData] isKindOfClass:[NSNull class]]){
		self.data = [[HotListCellData alloc] initWithDictionary:dictionary[kHotListCommentRootData]];
	}

	if(![dictionary[kHotListCommentRootStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kHotListCommentRootStatus] integerValue];
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
		dictionary[kHotListCommentRootData] = [self.data toDictionary];
	}
	dictionary[kHotListCommentRootStatus] = @(self.status);
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
		[aCoder encodeObject:self.data forKey:kHotListCommentRootData];
	}
	[aCoder encodeObject:@(self.status) forKey:kHotListCommentRootStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.data = [aDecoder decodeObjectForKey:kHotListCommentRootData];
	self.status = [[aDecoder decodeObjectForKey:kHotListCommentRootStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	HotListCommentRoot *copy = [HotListCommentRoot new];

	copy.data = [self.data copy];
	copy.status = self.status;

	return copy;
}
@end
