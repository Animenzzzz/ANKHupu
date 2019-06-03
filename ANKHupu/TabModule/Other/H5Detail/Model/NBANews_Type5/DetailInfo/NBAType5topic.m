//
//	NBAType5topic.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAType5topic.h"

NSString *const kNBAType5topicLogo = @"logo";
NSString *const kNBAType5topicName = @"name";
NSString *const kNBAType5topicTopicCategory = @"topic_category";
NSString *const kNBAType5topicTopicId = @"topic_id";

@interface NBAType5topic ()
@end
@implementation NBAType5topic




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBAType5topicLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kNBAType5topicLogo];
	}	
	if(![dictionary[kNBAType5topicName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kNBAType5topicName];
	}	
	if(![dictionary[kNBAType5topicTopicCategory] isKindOfClass:[NSNull class]]){
		self.topicCategory = dictionary[kNBAType5topicTopicCategory];
	}	
	if(![dictionary[kNBAType5topicTopicId] isKindOfClass:[NSNull class]]){
		self.topicId = [dictionary[kNBAType5topicTopicId] integerValue];
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
		dictionary[kNBAType5topicLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kNBAType5topicName] = self.name;
	}
	if(self.topicCategory != nil){
		dictionary[kNBAType5topicTopicCategory] = self.topicCategory;
	}
	dictionary[kNBAType5topicTopicId] = @(self.topicId);
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
		[aCoder encodeObject:self.logo forKey:kNBAType5topicLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kNBAType5topicName];
	}
	if(self.topicCategory != nil){
		[aCoder encodeObject:self.topicCategory forKey:kNBAType5topicTopicCategory];
	}
	[aCoder encodeObject:@(self.topicId) forKey:kNBAType5topicTopicId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.logo = [aDecoder decodeObjectForKey:kNBAType5topicLogo];
	self.name = [aDecoder decodeObjectForKey:kNBAType5topicName];
	self.topicCategory = [aDecoder decodeObjectForKey:kNBAType5topicTopicCategory];
	self.topicId = [[aDecoder decodeObjectForKey:kNBAType5topicTopicId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAType5topic *copy = [NBAType5topic new];

	copy.logo = [self.logo copy];
	copy.name = [self.name copy];
	copy.topicCategory = [self.topicCategory copy];
	copy.topicId = self.topicId;

	return copy;
}
@end