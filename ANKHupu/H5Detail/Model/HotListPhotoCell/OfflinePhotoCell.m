//
//	OfflinePhotoCell.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "OfflinePhotoCell.h"

NSString *const kOfflinePhotoCellDataPhotoCel = @"data";
NSString *const kOfflinePhotoCellStatus = @"status";

@interface OfflinePhotoCell ()
@end
@implementation OfflinePhotoCell




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kOfflinePhotoCellDataPhotoCel] isKindOfClass:[NSNull class]]){
		self.dataPhotoCel = [[DataPhotoCel alloc] initWithDictionary:dictionary[kOfflinePhotoCellDataPhotoCel]];
	}

	if(![dictionary[kOfflinePhotoCellStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kOfflinePhotoCellStatus] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.dataPhotoCel != nil){
		dictionary[kOfflinePhotoCellDataPhotoCel] = [self.dataPhotoCel toDictionary];
	}
	dictionary[kOfflinePhotoCellStatus] = @(self.status);
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
	if(self.dataPhotoCel != nil){
		[aCoder encodeObject:self.dataPhotoCel forKey:kOfflinePhotoCellDataPhotoCel];
	}
	[aCoder encodeObject:@(self.status) forKey:kOfflinePhotoCellStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.dataPhotoCel = [aDecoder decodeObjectForKey:kOfflinePhotoCellDataPhotoCel];
	self.status = [[aDecoder decodeObjectForKey:kOfflinePhotoCellStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	OfflinePhotoCell *copy = [OfflinePhotoCell new];

	copy.dataPhotoCel = [self.dataPhotoCel copy];
	copy.status = self.status;

	return copy;
}
@end
