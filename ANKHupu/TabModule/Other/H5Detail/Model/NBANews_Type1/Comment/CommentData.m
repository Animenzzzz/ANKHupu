//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentData.h"

NSString *const kCommnetDataAuditStatus = @"audit_status";
NSString *const kCommnetDataCid = @"cid";
NSString *const kCommnetDataContent = @"content";
NSString *const kCommnetDataCreateTime = @"create_time";
NSString *const kCommnetDataFormatTime = @"format_time";
NSString *const kCommnetDataFrom = @"from";
NSString *const kCommnetDataHeader = @"header";
NSString *const kCommnetDataLightCount = @"light_count";
NSString *const kCommnetDataLighted = @"lighted";
NSString *const kCommnetDataNcid = @"ncid";
NSString *const kCommnetDataPuid = @"puid";
NSString *const kCommnetDataQuoteData = @"quote_data";
NSString *const kCommnetDataUid = @"uid";
NSString *const kCommnetDataUnlightCount = @"unlight_count";
NSString *const kCommnetDataUserName = @"user_name";

@interface CommentData ()
@end
@implementation CommentData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommnetDataAuditStatus] isKindOfClass:[NSNull class]]){
		self.auditStatus = dictionary[kCommnetDataAuditStatus];
	}	
	if(![dictionary[kCommnetDataCid] isKindOfClass:[NSNull class]]){
		self.cid = dictionary[kCommnetDataCid];
	}	
	if(![dictionary[kCommnetDataContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kCommnetDataContent];
	}	
	if(![dictionary[kCommnetDataCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kCommnetDataCreateTime];
	}	
	if(![dictionary[kCommnetDataFormatTime] isKindOfClass:[NSNull class]]){
		self.formatTime = dictionary[kCommnetDataFormatTime];
	}	
	if(![dictionary[kCommnetDataFrom] isKindOfClass:[NSNull class]]){
		self.from = dictionary[kCommnetDataFrom];
	}	
	if(![dictionary[kCommnetDataHeader] isKindOfClass:[NSNull class]]){
		self.header = dictionary[kCommnetDataHeader];
	}	
	if(![dictionary[kCommnetDataLightCount] isKindOfClass:[NSNull class]]){
		self.lightCount = dictionary[kCommnetDataLightCount];
	}	
	if(![dictionary[kCommnetDataLighted] isKindOfClass:[NSNull class]]){
		self.lighted = [dictionary[kCommnetDataLighted] integerValue];
	}

	if(![dictionary[kCommnetDataNcid] isKindOfClass:[NSNull class]]){
		self.ncid = dictionary[kCommnetDataNcid];
	}	
	if(![dictionary[kCommnetDataPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kCommnetDataPuid];
	}	
	if(![dictionary[kCommnetDataQuoteData] isKindOfClass:[NSNull class]]){
		self.quoteData = [[CommentQuoteData alloc] initWithDictionary:dictionary[kCommnetDataQuoteData]];
	}

	if(![dictionary[kCommnetDataUid] isKindOfClass:[NSNull class]]){
		self.uid = dictionary[kCommnetDataUid];
	}	
	if(![dictionary[kCommnetDataUnlightCount] isKindOfClass:[NSNull class]]){
		self.unlightCount = dictionary[kCommnetDataUnlightCount];
	}	
	if(![dictionary[kCommnetDataUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kCommnetDataUserName];
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
		dictionary[kCommnetDataAuditStatus] = self.auditStatus;
	}
	if(self.cid != nil){
		dictionary[kCommnetDataCid] = self.cid;
	}
	if(self.content != nil){
		dictionary[kCommnetDataContent] = self.content;
	}
	if(self.createTime != nil){
		dictionary[kCommnetDataCreateTime] = self.createTime;
	}
	if(self.formatTime != nil){
		dictionary[kCommnetDataFormatTime] = self.formatTime;
	}
	if(self.from != nil){
		dictionary[kCommnetDataFrom] = self.from;
	}
	if(self.header != nil){
		dictionary[kCommnetDataHeader] = self.header;
	}
	if(self.lightCount != nil){
		dictionary[kCommnetDataLightCount] = self.lightCount;
	}
	dictionary[kCommnetDataLighted] = @(self.lighted);
	if(self.ncid != nil){
		dictionary[kCommnetDataNcid] = self.ncid;
	}
	if(self.puid != nil){
		dictionary[kCommnetDataPuid] = self.puid;
	}
	if(self.quoteData != nil){
		dictionary[kCommnetDataQuoteData] = [self.quoteData toDictionary];
	}
	if(self.uid != nil){
		dictionary[kCommnetDataUid] = self.uid;
	}
	if(self.unlightCount != nil){
		dictionary[kCommnetDataUnlightCount] = self.unlightCount;
	}
	if(self.userName != nil){
		dictionary[kCommnetDataUserName] = self.userName;
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
		[aCoder encodeObject:self.auditStatus forKey:kCommnetDataAuditStatus];
	}
	if(self.cid != nil){
		[aCoder encodeObject:self.cid forKey:kCommnetDataCid];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kCommnetDataContent];
	}
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kCommnetDataCreateTime];
	}
	if(self.formatTime != nil){
		[aCoder encodeObject:self.formatTime forKey:kCommnetDataFormatTime];
	}
	if(self.from != nil){
		[aCoder encodeObject:self.from forKey:kCommnetDataFrom];
	}
	if(self.header != nil){
		[aCoder encodeObject:self.header forKey:kCommnetDataHeader];
	}
	if(self.lightCount != nil){
		[aCoder encodeObject:self.lightCount forKey:kCommnetDataLightCount];
	}
	[aCoder encodeObject:@(self.lighted) forKey:kCommnetDataLighted];	if(self.ncid != nil){
		[aCoder encodeObject:self.ncid forKey:kCommnetDataNcid];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kCommnetDataPuid];
	}
	if(self.quoteData != nil){
		[aCoder encodeObject:self.quoteData forKey:kCommnetDataQuoteData];
	}
	if(self.uid != nil){
		[aCoder encodeObject:self.uid forKey:kCommnetDataUid];
	}
	if(self.unlightCount != nil){
		[aCoder encodeObject:self.unlightCount forKey:kCommnetDataUnlightCount];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kCommnetDataUserName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.auditStatus = [aDecoder decodeObjectForKey:kCommnetDataAuditStatus];
	self.cid = [aDecoder decodeObjectForKey:kCommnetDataCid];
	self.content = [aDecoder decodeObjectForKey:kCommnetDataContent];
	self.createTime = [aDecoder decodeObjectForKey:kCommnetDataCreateTime];
	self.formatTime = [aDecoder decodeObjectForKey:kCommnetDataFormatTime];
	self.from = [aDecoder decodeObjectForKey:kCommnetDataFrom];
	self.header = [aDecoder decodeObjectForKey:kCommnetDataHeader];
	self.lightCount = [aDecoder decodeObjectForKey:kCommnetDataLightCount];
	self.lighted = [[aDecoder decodeObjectForKey:kCommnetDataLighted] integerValue];
	self.ncid = [aDecoder decodeObjectForKey:kCommnetDataNcid];
	self.puid = [aDecoder decodeObjectForKey:kCommnetDataPuid];
	self.quoteData = [aDecoder decodeObjectForKey:kCommnetDataQuoteData];
	self.uid = [aDecoder decodeObjectForKey:kCommnetDataUid];
	self.unlightCount = [aDecoder decodeObjectForKey:kCommnetDataUnlightCount];
	self.userName = [aDecoder decodeObjectForKey:kCommnetDataUserName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentData *copy = [CommentData new];

	copy.auditStatus = [self.auditStatus copy];
	copy.cid = [self.cid copy];
	copy.content = [self.content copy];
	copy.createTime = [self.createTime copy];
	copy.formatTime = [self.formatTime copy];
	copy.from = [self.from copy];
	copy.header = [self.header copy];
	copy.lightCount = [self.lightCount copy];
	copy.lighted = self.lighted;
	copy.ncid = [self.ncid copy];
	copy.puid = [self.puid copy];
	copy.quoteData = [self.quoteData copy];
	copy.uid = [self.uid copy];
	copy.unlightCount = [self.unlightCount copy];
	copy.userName = [self.userName copy];

	return copy;
}
@end
