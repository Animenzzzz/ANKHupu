//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "HotListCellData.h"

NSString *const kHotListCellDataResult = @"result";
NSString *const kHotListCellDataStatus = @"status";

@interface HotListCellData ()
@end
@implementation HotListCellData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kHotListCellDataResult] isKindOfClass:[NSNull class]]){
		self.result = [[HotListCommentResult alloc] initWithDictionary:dictionary[kHotListCellDataResult]];
	}

	if(![dictionary[kHotListCellDataStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kHotListCellDataStatus] integerValue];
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
		dictionary[kHotListCellDataResult] = [self.result toDictionary];
	}
	dictionary[kHotListCellDataStatus] = @(self.status);
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
		[aCoder encodeObject:self.result forKey:kHotListCellDataResult];
	}
	[aCoder encodeObject:@(self.status) forKey:kHotListCellDataStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.result = [aDecoder decodeObjectForKey:kHotListCellDataResult];
	self.status = [[aDecoder decodeObjectForKey:kHotListCellDataStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	HotListCellData *copy = [HotListCellData new];

	copy.result = [self.result copy];
	copy.status = self.status;

	return copy;
}
@end
