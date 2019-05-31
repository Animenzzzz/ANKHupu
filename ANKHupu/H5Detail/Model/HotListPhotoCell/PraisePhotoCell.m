//
//	PraisePhotoCell.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "PraisePhotoCell.h"

NSString *const kPraisePhotoCellList = @"list";
NSString *const kPraisePhotoCellStatus = @"status";
NSString *const kPraisePhotoCellTips = @"tips";
NSString *const kPraisePhotoCellUserinfo = @"userinfo";

@interface PraisePhotoCell ()
@end
@implementation PraisePhotoCell




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kPraisePhotoCellList] isKindOfClass:[NSNull class]]){
		self.list = dictionary[kPraisePhotoCellList];
	}	
	if(![dictionary[kPraisePhotoCellStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kPraisePhotoCellStatus] integerValue];
	}

	if(![dictionary[kPraisePhotoCellTips] isKindOfClass:[NSNull class]]){
		self.tips = dictionary[kPraisePhotoCellTips];
	}	
	if(![dictionary[kPraisePhotoCellUserinfo] isKindOfClass:[NSNull class]]){
		self.userinfo = [[Userinfo1 alloc] initWithDictionary:dictionary[kPraisePhotoCellUserinfo]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.list != nil){
		dictionary[kPraisePhotoCellList] = self.list;
	}
	dictionary[kPraisePhotoCellStatus] = @(self.status);
	if(self.tips != nil){
		dictionary[kPraisePhotoCellTips] = self.tips;
	}
	if(self.userinfo != nil){
		dictionary[kPraisePhotoCellUserinfo] = [self.userinfo toDictionary];
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
	if(self.list != nil){
		[aCoder encodeObject:self.list forKey:kPraisePhotoCellList];
	}
	[aCoder encodeObject:@(self.status) forKey:kPraisePhotoCellStatus];	if(self.tips != nil){
		[aCoder encodeObject:self.tips forKey:kPraisePhotoCellTips];
	}
	if(self.userinfo != nil){
		[aCoder encodeObject:self.userinfo forKey:kPraisePhotoCellUserinfo];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.list = [aDecoder decodeObjectForKey:kPraisePhotoCellList];
	self.status = [[aDecoder decodeObjectForKey:kPraisePhotoCellStatus] integerValue];
	self.tips = [aDecoder decodeObjectForKey:kPraisePhotoCellTips];
	self.userinfo = [aDecoder decodeObjectForKey:kPraisePhotoCellUserinfo];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	PraisePhotoCell *copy = [PraisePhotoCell new];

	copy.list = [self.list copy];
	copy.status = self.status;
	copy.tips = [self.tips copy];
	copy.userinfo = [self.userinfo copy];

	return copy;
}
@end
