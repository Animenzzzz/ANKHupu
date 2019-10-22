//
//	LightComment.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LightComment.h"

NSString *const kLightCommentAuditStatus = @"audit_status";
NSString *const kLightCommentCid = @"cid";
NSString *const kLightCommentContent = @"content";
NSString *const kLightCommentCreateTime = @"create_time";
NSString *const kLightCommentFormatTime = @"format_time";
NSString *const kLightCommentHeader = @"header";
NSString *const kLightCommentLightCount = @"light_count";
NSString *const kLightCommentLighted = @"lighted";
NSString *const kLightCommentNcid = @"ncid";
NSString *const kLightCommentPuid = @"puid";
NSString *const kLightCommentScore = @"score";
NSString *const kLightCommentUid = @"uid";
NSString *const kLightCommentUnlightCount = @"unlight_count";
NSString *const kLightCommentUserName = @"user_name";

@interface LightComment ()
@end
@implementation LightComment




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLightCommentAuditStatus] isKindOfClass:[NSNull class]]){
		self.auditStatus = dictionary[kLightCommentAuditStatus];
	}	
	if(![dictionary[kLightCommentCid] isKindOfClass:[NSNull class]]){
		self.cid = dictionary[kLightCommentCid];
	}	
	if(![dictionary[kLightCommentContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kLightCommentContent];
	}	
	if(![dictionary[kLightCommentCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kLightCommentCreateTime];
	}	
	if(![dictionary[kLightCommentFormatTime] isKindOfClass:[NSNull class]]){
		self.formatTime = dictionary[kLightCommentFormatTime];
	}	
	if(![dictionary[kLightCommentHeader] isKindOfClass:[NSNull class]]){
		self.header = dictionary[kLightCommentHeader];
	}	
	if(![dictionary[kLightCommentLightCount] isKindOfClass:[NSNull class]]){
		self.lightCount = dictionary[kLightCommentLightCount];
	}	
	if(![dictionary[kLightCommentLighted] isKindOfClass:[NSNull class]]){
		self.lighted = [dictionary[kLightCommentLighted] integerValue];
	}

	if(![dictionary[kLightCommentNcid] isKindOfClass:[NSNull class]]){
		self.ncid = dictionary[kLightCommentNcid];
	}	
	if(![dictionary[kLightCommentPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kLightCommentPuid];
	}	
	if(![dictionary[kLightCommentScore] isKindOfClass:[NSNull class]]){
		self.score = dictionary[kLightCommentScore];
	}	
	if(![dictionary[kLightCommentUid] isKindOfClass:[NSNull class]]){
		self.uid = dictionary[kLightCommentUid];
	}	
	if(![dictionary[kLightCommentUnlightCount] isKindOfClass:[NSNull class]]){
		self.unlightCount = dictionary[kLightCommentUnlightCount];
	}	
	if(![dictionary[kLightCommentUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kLightCommentUserName];
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
		dictionary[kLightCommentAuditStatus] = self.auditStatus;
	}
	if(self.cid != nil){
		dictionary[kLightCommentCid] = self.cid;
	}
	if(self.content != nil){
		dictionary[kLightCommentContent] = self.content;
	}
	if(self.createTime != nil){
		dictionary[kLightCommentCreateTime] = self.createTime;
	}
	if(self.formatTime != nil){
		dictionary[kLightCommentFormatTime] = self.formatTime;
	}
	if(self.header != nil){
		dictionary[kLightCommentHeader] = self.header;
	}
	if(self.lightCount != nil){
		dictionary[kLightCommentLightCount] = self.lightCount;
	}
	dictionary[kLightCommentLighted] = @(self.lighted);
	if(self.ncid != nil){
		dictionary[kLightCommentNcid] = self.ncid;
	}
	if(self.puid != nil){
		dictionary[kLightCommentPuid] = self.puid;
	}
	if(self.score != nil){
		dictionary[kLightCommentScore] = self.score;
	}
	if(self.uid != nil){
		dictionary[kLightCommentUid] = self.uid;
	}
	if(self.unlightCount != nil){
		dictionary[kLightCommentUnlightCount] = self.unlightCount;
	}
	if(self.userName != nil){
		dictionary[kLightCommentUserName] = self.userName;
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
		[aCoder encodeObject:self.auditStatus forKey:kLightCommentAuditStatus];
	}
	if(self.cid != nil){
		[aCoder encodeObject:self.cid forKey:kLightCommentCid];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kLightCommentContent];
	}
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kLightCommentCreateTime];
	}
	if(self.formatTime != nil){
		[aCoder encodeObject:self.formatTime forKey:kLightCommentFormatTime];
	}
	if(self.header != nil){
		[aCoder encodeObject:self.header forKey:kLightCommentHeader];
	}
	if(self.lightCount != nil){
		[aCoder encodeObject:self.lightCount forKey:kLightCommentLightCount];
	}
	[aCoder encodeObject:@(self.lighted) forKey:kLightCommentLighted];	if(self.ncid != nil){
		[aCoder encodeObject:self.ncid forKey:kLightCommentNcid];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kLightCommentPuid];
	}
	if(self.score != nil){
		[aCoder encodeObject:self.score forKey:kLightCommentScore];
	}
	if(self.uid != nil){
		[aCoder encodeObject:self.uid forKey:kLightCommentUid];
	}
	if(self.unlightCount != nil){
		[aCoder encodeObject:self.unlightCount forKey:kLightCommentUnlightCount];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kLightCommentUserName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.auditStatus = [aDecoder decodeObjectForKey:kLightCommentAuditStatus];
	self.cid = [aDecoder decodeObjectForKey:kLightCommentCid];
	self.content = [aDecoder decodeObjectForKey:kLightCommentContent];
	self.createTime = [aDecoder decodeObjectForKey:kLightCommentCreateTime];
	self.formatTime = [aDecoder decodeObjectForKey:kLightCommentFormatTime];
	self.header = [aDecoder decodeObjectForKey:kLightCommentHeader];
	self.lightCount = [aDecoder decodeObjectForKey:kLightCommentLightCount];
	self.lighted = [[aDecoder decodeObjectForKey:kLightCommentLighted] integerValue];
	self.ncid = [aDecoder decodeObjectForKey:kLightCommentNcid];
	self.puid = [aDecoder decodeObjectForKey:kLightCommentPuid];
	self.score = [aDecoder decodeObjectForKey:kLightCommentScore];
	self.uid = [aDecoder decodeObjectForKey:kLightCommentUid];
	self.unlightCount = [aDecoder decodeObjectForKey:kLightCommentUnlightCount];
	self.userName = [aDecoder decodeObjectForKey:kLightCommentUserName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LightComment *copy = [LightComment new];

	copy.auditStatus = [self.auditStatus copy];
	copy.cid = [self.cid copy];
	copy.content = [self.content copy];
	copy.createTime = [self.createTime copy];
	copy.formatTime = [self.formatTime copy];
	copy.header = [self.header copy];
	copy.lightCount = [self.lightCount copy];
	copy.lighted = self.lighted;
	copy.ncid = [self.ncid copy];
	copy.puid = [self.puid copy];
	copy.score = [self.score copy];
	copy.uid = [self.uid copy];
	copy.unlightCount = [self.unlightCount copy];
	copy.userName = [self.userName copy];

	return copy;
}
@end