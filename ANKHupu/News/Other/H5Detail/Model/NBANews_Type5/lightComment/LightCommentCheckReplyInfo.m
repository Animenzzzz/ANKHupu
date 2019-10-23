//
//	CheckReplyInfo.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LightCommentCheckReplyInfo.h"

NSString *const kLightCommentCheckReplyInfoNum = @"num";
NSString *const kLightCommentCheckReplyInfoType = @"type";

@interface LightCommentCheckReplyInfo ()
@end
@implementation LightCommentCheckReplyInfo




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLightCommentCheckReplyInfoNum] isKindOfClass:[NSNull class]]){
		self.num = [dictionary[kLightCommentCheckReplyInfoNum] integerValue];
	}

	if(![dictionary[kLightCommentCheckReplyInfoType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kLightCommentCheckReplyInfoType] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kLightCommentCheckReplyInfoNum] = @(self.num);
	dictionary[kLightCommentCheckReplyInfoType] = @(self.type);
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
	[aCoder encodeObject:@(self.num) forKey:kLightCommentCheckReplyInfoNum];	[aCoder encodeObject:@(self.type) forKey:kLightCommentCheckReplyInfoType];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.num = [[aDecoder decodeObjectForKey:kLightCommentCheckReplyInfoNum] integerValue];
	self.type = [[aDecoder decodeObjectForKey:kLightCommentCheckReplyInfoType] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LightCommentCheckReplyInfo *copy = [LightCommentCheckReplyInfo new];

	copy.num = self.num;
	copy.type = self.type;

	return copy;
}
@end
