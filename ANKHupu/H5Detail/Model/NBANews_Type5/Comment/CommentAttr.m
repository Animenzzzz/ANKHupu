//
//	Attr.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentAttr.h"

NSString *const kCommentAttrAuditStatus = @"audit_status";
NSString *const kCommentAttrClient = @"client";

@interface CommentAttr ()
@end
@implementation CommentAttr




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommentAttrAuditStatus] isKindOfClass:[NSNull class]]){
		self.auditStatus = dictionary[kCommentAttrAuditStatus];
	}	
	if(![dictionary[kCommentAttrClient] isKindOfClass:[NSNull class]]){
		self.client = dictionary[kCommentAttrClient];
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
		dictionary[kCommentAttrAuditStatus] = self.auditStatus;
	}
	if(self.client != nil){
		dictionary[kCommentAttrClient] = self.client;
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
		[aCoder encodeObject:self.auditStatus forKey:kCommentAttrAuditStatus];
	}
	if(self.client != nil){
		[aCoder encodeObject:self.client forKey:kCommentAttrClient];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.auditStatus = [aDecoder decodeObjectForKey:kCommentAttrAuditStatus];
	self.client = [aDecoder decodeObjectForKey:kCommentAttrClient];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentAttr *copy = [CommentAttr new];

	copy.auditStatus = [self.auditStatus copy];
	copy.client = [self.client copy];

	return copy;
}
@end
