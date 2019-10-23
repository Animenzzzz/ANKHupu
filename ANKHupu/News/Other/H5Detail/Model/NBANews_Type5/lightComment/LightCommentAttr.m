//
//	Attr.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LightCommentAttr.h"

NSString *const kLightCommentAttrAuditStatus = @"audit_status";
NSString *const kAttrClient = @"client";

@interface LightCommentAttr ()
@end
@implementation LightCommentAttr




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLightCommentAttrAuditStatus] isKindOfClass:[NSNull class]]){
		self.auditStatus = dictionary[kLightCommentAttrAuditStatus];
	}	
	if(![dictionary[kAttrClient] isKindOfClass:[NSNull class]]){
		self.client = dictionary[kAttrClient];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.auditStatus != nil){
		dictionary[kLightCommentAttrAuditStatus] = self.auditStatus;
	}
	if(self.client != nil){
		dictionary[kAttrClient] = self.client;
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
	if(self.auditStatus != nil){
		[aCoder encodeObject:self.auditStatus forKey:kLightCommentAttrAuditStatus];
	}
	if(self.client != nil){
		[aCoder encodeObject:self.client forKey:kAttrClient];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.auditStatus = [aDecoder decodeObjectForKey:kLightCommentAttrAuditStatus];
	self.client = [aDecoder decodeObjectForKey:kAttrClient];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LightCommentAttr *copy = [LightCommentAttr new];

	copy.auditStatus = [self.auditStatus copy];
	copy.client = [self.client copy];

	return copy;
}
@end
