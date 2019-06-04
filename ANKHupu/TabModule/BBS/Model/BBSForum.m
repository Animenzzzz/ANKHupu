//
//	Forum.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BBSForum.h"

NSString *const kBBSForumFid = @"fid";
NSString *const kBBSForumLogo = @"logo";
NSString *const kBBSForumName = @"name";

@interface BBSForum ()
@end
@implementation BBSForum




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBBSForumFid] isKindOfClass:[NSNull class]]){
		self.fid = dictionary[kBBSForumFid];
	}	
	if(![dictionary[kBBSForumLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kBBSForumLogo];
	}	
	if(![dictionary[kBBSForumName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kBBSForumName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.fid != nil){
		dictionary[kBBSForumFid] = self.fid;
	}
	if(self.logo != nil){
		dictionary[kBBSForumLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kBBSForumName] = self.name;
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
	if(self.fid != nil){
		[aCoder encodeObject:self.fid forKey:kBBSForumFid];
	}
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kBBSForumLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kBBSForumName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.fid = [aDecoder decodeObjectForKey:kBBSForumFid];
	self.logo = [aDecoder decodeObjectForKey:kBBSForumLogo];
	self.name = [aDecoder decodeObjectForKey:kBBSForumName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BBSForum *copy = [BBSForum new];

	copy.fid = [self.fid copy];
	copy.logo = [self.logo copy];
	copy.name = [self.name copy];

	return copy;
}
@end
