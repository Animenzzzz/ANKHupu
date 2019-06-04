//
//	Topic.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BBSTopic.h"

NSString *const kBBSTopicLogo = @"logo";
NSString *const kBBSTopicTopicId = @"topic_id";
NSString *const kBBSTopicTopicName = @"topic_name";

@interface BBSTopic ()
@end
@implementation BBSTopic




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBBSTopicLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kBBSTopicLogo];
	}	
	if(![dictionary[kBBSTopicTopicId] isKindOfClass:[NSNull class]]){
		self.topicId = [dictionary[kBBSTopicTopicId] integerValue];
	}

	if(![dictionary[kBBSTopicTopicName] isKindOfClass:[NSNull class]]){
		self.topicName = dictionary[kBBSTopicTopicName];
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
		dictionary[kBBSTopicLogo] = self.logo;
	}
	dictionary[kBBSTopicTopicId] = @(self.topicId);
	if(self.topicName != nil){
		dictionary[kBBSTopicTopicName] = self.topicName;
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
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kBBSTopicLogo];
	}
	[aCoder encodeObject:@(self.topicId) forKey:kBBSTopicTopicId];	if(self.topicName != nil){
		[aCoder encodeObject:self.topicName forKey:kBBSTopicTopicName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.logo = [aDecoder decodeObjectForKey:kBBSTopicLogo];
	self.topicId = [[aDecoder decodeObjectForKey:kBBSTopicTopicId] integerValue];
	self.topicName = [aDecoder decodeObjectForKey:kBBSTopicTopicName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BBSTopic *copy = [BBSTopic new];

	copy.logo = [self.logo copy];
	copy.topicId = self.topicId;
	copy.topicName = [self.topicName copy];

	return copy;
}
@end
