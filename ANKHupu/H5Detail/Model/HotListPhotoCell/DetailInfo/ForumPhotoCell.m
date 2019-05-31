//
//	ForumPhotoCell.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "ForumPhotoCell.h"

NSString *const kForumPhotoCellCategory = @"category";
NSString *const kForumPhotoCellDescriptionField = @"description";
NSString *const kForumPhotoCellFid = @"fid";
NSString *const kForumPhotoCellForumadmin = @"forumadmin";
NSString *const kForumPhotoCellLogo = @"logo";
NSString *const kForumPhotoCellName = @"name";
NSString *const kForumPhotoCellUnlightsEnable = @"unlights_enable";

@interface ForumPhotoCell ()
@end
@implementation ForumPhotoCell




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kForumPhotoCellCategory] isKindOfClass:[NSNull class]]){
		self.category = dictionary[kForumPhotoCellCategory];
	}	
	if(![dictionary[kForumPhotoCellDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = dictionary[kForumPhotoCellDescriptionField];
	}	
	if(![dictionary[kForumPhotoCellFid] isKindOfClass:[NSNull class]]){
		self.fid = [dictionary[kForumPhotoCellFid] integerValue];
	}

	if(![dictionary[kForumPhotoCellForumadmin] isKindOfClass:[NSNull class]]){
		self.forumadmin = dictionary[kForumPhotoCellForumadmin];
	}	
	if(![dictionary[kForumPhotoCellLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kForumPhotoCellLogo];
	}	
	if(![dictionary[kForumPhotoCellName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kForumPhotoCellName];
	}	
	if(![dictionary[kForumPhotoCellUnlightsEnable] isKindOfClass:[NSNull class]]){
		self.unlightsEnable = [dictionary[kForumPhotoCellUnlightsEnable] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.category != nil){
		dictionary[kForumPhotoCellCategory] = self.category;
	}
	if(self.descriptionField != nil){
		dictionary[kForumPhotoCellDescriptionField] = self.descriptionField;
	}
	dictionary[kForumPhotoCellFid] = @(self.fid);
	if(self.forumadmin != nil){
		dictionary[kForumPhotoCellForumadmin] = self.forumadmin;
	}
	if(self.logo != nil){
		dictionary[kForumPhotoCellLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kForumPhotoCellName] = self.name;
	}
	dictionary[kForumPhotoCellUnlightsEnable] = @(self.unlightsEnable);
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
	if(self.category != nil){
		[aCoder encodeObject:self.category forKey:kForumPhotoCellCategory];
	}
	if(self.descriptionField != nil){
		[aCoder encodeObject:self.descriptionField forKey:kForumPhotoCellDescriptionField];
	}
	[aCoder encodeObject:@(self.fid) forKey:kForumPhotoCellFid];	if(self.forumadmin != nil){
		[aCoder encodeObject:self.forumadmin forKey:kForumPhotoCellForumadmin];
	}
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kForumPhotoCellLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kForumPhotoCellName];
	}
	[aCoder encodeObject:@(self.unlightsEnable) forKey:kForumPhotoCellUnlightsEnable];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.category = [aDecoder decodeObjectForKey:kForumPhotoCellCategory];
	self.descriptionField = [aDecoder decodeObjectForKey:kForumPhotoCellDescriptionField];
	self.fid = [[aDecoder decodeObjectForKey:kForumPhotoCellFid] integerValue];
	self.forumadmin = [aDecoder decodeObjectForKey:kForumPhotoCellForumadmin];
	self.logo = [aDecoder decodeObjectForKey:kForumPhotoCellLogo];
	self.name = [aDecoder decodeObjectForKey:kForumPhotoCellName];
	self.unlightsEnable = [[aDecoder decodeObjectForKey:kForumPhotoCellUnlightsEnable] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	ForumPhotoCell *copy = [ForumPhotoCell new];

	copy.category = [self.category copy];
	copy.descriptionField = [self.descriptionField copy];
	copy.fid = self.fid;
	copy.forumadmin = [self.forumadmin copy];
	copy.logo = [self.logo copy];
	copy.name = [self.name copy];
	copy.unlightsEnable = self.unlightsEnable;

	return copy;
}
@end