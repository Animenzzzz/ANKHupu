//
//	CheckReplyInfo.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CheckReplyInfo.h"

NSString *const kCheckReplyInfoNum = @"num";
NSString *const kCheckReplyInfoType = @"type";

@interface CheckReplyInfo ()
@end
@implementation CheckReplyInfo




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCheckReplyInfoNum] isKindOfClass:[NSNull class]]){
		self.num = [dictionary[kCheckReplyInfoNum] integerValue];
	}

	if(![dictionary[kCheckReplyInfoType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kCheckReplyInfoType] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kCheckReplyInfoNum] = @(self.num);
	dictionary[kCheckReplyInfoType] = @(self.type);
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
	[aCoder encodeObject:@(self.num) forKey:kCheckReplyInfoNum];	[aCoder encodeObject:@(self.type) forKey:kCheckReplyInfoType];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.num = [[aDecoder decodeObjectForKey:kCheckReplyInfoNum] integerValue];
	self.type = [[aDecoder decodeObjectForKey:kCheckReplyInfoType] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CheckReplyInfo *copy = [CheckReplyInfo new];

	copy.num = self.num;
	copy.type = self.type;

	return copy;
}
@end