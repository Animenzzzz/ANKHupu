//
//	TopicPhotoCell.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "TopicPhotoCell.h"

NSString *const kTopicPhotoCellLogo = @"logo";
NSString *const kTopicPhotoCellName = @"name";
NSString *const kTopicPhotoCellTopicCategory = @"topic_category";
NSString *const kTopicPhotoCellTopicId = @"topic_id";

@interface TopicPhotoCell ()
@end
@implementation TopicPhotoCell




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTopicPhotoCellLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kTopicPhotoCellLogo];
	}	
	if(![dictionary[kTopicPhotoCellName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kTopicPhotoCellName];
	}	
	if(![dictionary[kTopicPhotoCellTopicCategory] isKindOfClass:[NSNull class]]){
		self.topicCategory = dictionary[kTopicPhotoCellTopicCategory];
	}	
	if(![dictionary[kTopicPhotoCellTopicId] isKindOfClass:[NSNull class]]){
		self.topicId = [dictionary[kTopicPhotoCellTopicId] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.logo != nil){
		dictionary[kTopicPhotoCellLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kTopicPhotoCellName] = self.name;
	}
	if(self.topicCategory != nil){
		dictionary[kTopicPhotoCellTopicCategory] = self.topicCategory;
	}
	dictionary[kTopicPhotoCellTopicId] = @(self.topicId);
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
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kTopicPhotoCellLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kTopicPhotoCellName];
	}
	if(self.topicCategory != nil){
		[aCoder encodeObject:self.topicCategory forKey:kTopicPhotoCellTopicCategory];
	}
	[aCoder encodeObject:@(self.topicId) forKey:kTopicPhotoCellTopicId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.logo = [aDecoder decodeObjectForKey:kTopicPhotoCellLogo];
	self.name = [aDecoder decodeObjectForKey:kTopicPhotoCellName];
	self.topicCategory = [aDecoder decodeObjectForKey:kTopicPhotoCellTopicCategory];
	self.topicId = [[aDecoder decodeObjectForKey:kTopicPhotoCellTopicId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	TopicPhotoCell *copy = [TopicPhotoCell new];

	copy.logo = [self.logo copy];
	copy.name = [self.name copy];
	copy.topicCategory = [self.topicCategory copy];
	copy.topicId = self.topicId;

	return copy;
}
@end