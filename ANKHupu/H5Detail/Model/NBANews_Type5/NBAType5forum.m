//
//	NBAType5forum.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAType5forum.h"

NSString *const kNBAType5forumCategory = @"category";
NSString *const kNBAType5forumDescriptionField = @"description";
NSString *const kNBAType5forumFid = @"fid";
NSString *const kNBAType5forumForumadmin = @"forumadmin";
NSString *const kNBAType5forumLogo = @"logo";
NSString *const kNBAType5forumName = @"name";
NSString *const kNBAType5forumUnlightsEnable = @"unlights_enable";

@interface NBAType5forum ()
@end
@implementation NBAType5forum




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBAType5forumCategory] isKindOfClass:[NSNull class]]){
		self.category = dictionary[kNBAType5forumCategory];
	}	
	if(![dictionary[kNBAType5forumDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = dictionary[kNBAType5forumDescriptionField];
	}	
	if(![dictionary[kNBAType5forumFid] isKindOfClass:[NSNull class]]){
		self.fid = [dictionary[kNBAType5forumFid] integerValue];
	}

	if(![dictionary[kNBAType5forumForumadmin] isKindOfClass:[NSNull class]]){
		self.forumadmin = dictionary[kNBAType5forumForumadmin];
	}	
	if(![dictionary[kNBAType5forumLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kNBAType5forumLogo];
	}	
	if(![dictionary[kNBAType5forumName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kNBAType5forumName];
	}	
	if(![dictionary[kNBAType5forumUnlightsEnable] isKindOfClass:[NSNull class]]){
		self.unlightsEnable = [dictionary[kNBAType5forumUnlightsEnable] integerValue];
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
		dictionary[kNBAType5forumCategory] = self.category;
	}
	if(self.descriptionField != nil){
		dictionary[kNBAType5forumDescriptionField] = self.descriptionField;
	}
	dictionary[kNBAType5forumFid] = @(self.fid);
	if(self.forumadmin != nil){
		dictionary[kNBAType5forumForumadmin] = self.forumadmin;
	}
	if(self.logo != nil){
		dictionary[kNBAType5forumLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kNBAType5forumName] = self.name;
	}
	dictionary[kNBAType5forumUnlightsEnable] = @(self.unlightsEnable);
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
		[aCoder encodeObject:self.category forKey:kNBAType5forumCategory];
	}
	if(self.descriptionField != nil){
		[aCoder encodeObject:self.descriptionField forKey:kNBAType5forumDescriptionField];
	}
	[aCoder encodeObject:@(self.fid) forKey:kNBAType5forumFid];	if(self.forumadmin != nil){
		[aCoder encodeObject:self.forumadmin forKey:kNBAType5forumForumadmin];
	}
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kNBAType5forumLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kNBAType5forumName];
	}
	[aCoder encodeObject:@(self.unlightsEnable) forKey:kNBAType5forumUnlightsEnable];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.category = [aDecoder decodeObjectForKey:kNBAType5forumCategory];
	self.descriptionField = [aDecoder decodeObjectForKey:kNBAType5forumDescriptionField];
	self.fid = [[aDecoder decodeObjectForKey:kNBAType5forumFid] integerValue];
	self.forumadmin = [aDecoder decodeObjectForKey:kNBAType5forumForumadmin];
	self.logo = [aDecoder decodeObjectForKey:kNBAType5forumLogo];
	self.name = [aDecoder decodeObjectForKey:kNBAType5forumName];
	self.unlightsEnable = [[aDecoder decodeObjectForKey:kNBAType5forumUnlightsEnable] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAType5forum *copy = [NBAType5forum new];

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