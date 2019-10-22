//
//	Attr.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "HotListAttr.h"

NSString *const kHotListAttrAuditStatus = @"audit_status";
NSString *const kHotListAttrClient = @"client";

@interface HotListAttr ()
@end
@implementation HotListAttr




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kHotListAttrAuditStatus] isKindOfClass:[NSNull class]]){
		self.auditStatus = dictionary[kHotListAttrAuditStatus];
	}	
	if(![dictionary[kHotListAttrClient] isKindOfClass:[NSNull class]]){
		self.client = dictionary[kHotListAttrClient];
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
		dictionary[kHotListAttrAuditStatus] = self.auditStatus;
	}
	if(self.client != nil){
		dictionary[kHotListAttrClient] = self.client;
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
		[aCoder encodeObject:self.auditStatus forKey:kHotListAttrAuditStatus];
	}
	if(self.client != nil){
		[aCoder encodeObject:self.client forKey:kHotListAttrClient];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.auditStatus = [aDecoder decodeObjectForKey:kHotListAttrAuditStatus];
	self.client = [aDecoder decodeObjectForKey:kHotListAttrClient];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	HotListAttr *copy = [HotListAttr new];

	copy.auditStatus = [self.auditStatus copy];
	copy.client = [self.client copy];

	return copy;
}
@end
