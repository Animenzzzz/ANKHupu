//
//	CheckReplyInfo.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "HotCheckReplyInfo.h"

NSString *const kHotCheckReplyInfoNum = @"num";
NSString *const kHotCheckReplyInfoType = @"type";

@interface HotCheckReplyInfo ()
@end
@implementation HotCheckReplyInfo




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kHotCheckReplyInfoNum] isKindOfClass:[NSNull class]]){
		self.num = [dictionary[kHotCheckReplyInfoNum] integerValue];
	}

	if(![dictionary[kHotCheckReplyInfoType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kHotCheckReplyInfoType] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kHotCheckReplyInfoNum] = @(self.num);
	dictionary[kHotCheckReplyInfoType] = @(self.type);
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
	[aCoder encodeObject:@(self.num) forKey:kHotCheckReplyInfoNum];	[aCoder encodeObject:@(self.type) forKey:kHotCheckReplyInfoType];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.num = [[aDecoder decodeObjectForKey:kHotCheckReplyInfoNum] integerValue];
	self.type = [[aDecoder decodeObjectForKey:kHotCheckReplyInfoType] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	HotCheckReplyInfo *copy = [HotCheckReplyInfo new];

	copy.num = self.num;
	copy.type = self.type;

	return copy;
}
@end
