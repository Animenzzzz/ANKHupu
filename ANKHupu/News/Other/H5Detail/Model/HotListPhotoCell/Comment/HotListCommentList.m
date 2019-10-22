//
//	List.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "HotListCommentList.h"

NSString *const kHotListCommentListAttr = @"attr";
NSString *const kHotListCommentListCheckReplyInfo = @"check_reply_info";
NSString *const kHotListCommentListContent = @"content";
NSString *const kHotListCommentListCreateTime = @"create_time";
NSString *const kHotListCommentListFloor = @"floor";
NSString *const kHotListCommentListGroupid = @"groupid";
NSString *const kHotListCommentListLightCount = @"light_count";
NSString *const kHotListCommentListPid = @"pid";
NSString *const kHotListCommentListPuid = @"puid";
NSString *const kHotListCommentListQuote = @"quote";
NSString *const kHotListCommentListQuoteDeleted = @"quote_deleted";
NSString *const kHotListCommentListQuoteLightCount = @"quote_light_count";
NSString *const kHotListCommentListSmallcontent = @"smallcontent";
NSString *const kHotListCommentListTime = @"time";
NSString *const kHotListCommentListTogglecontent = @"togglecontent";
NSString *const kHotListCommentListUserImg = @"userImg";
NSString *const kHotListCommentListUserName = @"userName";
NSString *const kHotListCommentListVia = @"via";

@interface HotListCommentList ()
@end
@implementation HotListCommentList




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kHotListCommentListAttr] isKindOfClass:[NSNull class]]){
		self.attr = [[HotListAttr alloc] initWithDictionary:dictionary[kHotListCommentListAttr]];
	}

	if(![dictionary[kHotListCommentListCheckReplyInfo] isKindOfClass:[NSNull class]]){
		self.checkReplyInfo = [[HotCheckReplyInfo alloc] initWithDictionary:dictionary[kHotListCommentListCheckReplyInfo]];
	}

	if(![dictionary[kHotListCommentListContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kHotListCommentListContent];
	}	
	if(![dictionary[kHotListCommentListCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kHotListCommentListCreateTime];
	}	
	if(![dictionary[kHotListCommentListFloor] isKindOfClass:[NSNull class]]){
		self.floor = [dictionary[kHotListCommentListFloor] integerValue];
	}

	if(![dictionary[kHotListCommentListGroupid] isKindOfClass:[NSNull class]]){
		self.groupid = dictionary[kHotListCommentListGroupid];
	}	
	if(![dictionary[kHotListCommentListLightCount] isKindOfClass:[NSNull class]]){
		self.lightCount = [dictionary[kHotListCommentListLightCount] integerValue];
	}

	if(![dictionary[kHotListCommentListPid] isKindOfClass:[NSNull class]]){
		self.pid = dictionary[kHotListCommentListPid];
	}	
	if(![dictionary[kHotListCommentListPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kHotListCommentListPuid];
	}	
	if(![dictionary[kHotListCommentListQuote] isKindOfClass:[NSNull class]]){
		self.quote = dictionary[kHotListCommentListQuote];
	}	
	if(![dictionary[kHotListCommentListQuoteDeleted] isKindOfClass:[NSNull class]]){
		self.quoteDeleted = [dictionary[kHotListCommentListQuoteDeleted] integerValue];
	}

	if(![dictionary[kHotListCommentListQuoteLightCount] isKindOfClass:[NSNull class]]){
		self.quoteLightCount = [dictionary[kHotListCommentListQuoteLightCount] integerValue];
	}

	if(![dictionary[kHotListCommentListSmallcontent] isKindOfClass:[NSNull class]]){
		self.smallcontent = dictionary[kHotListCommentListSmallcontent];
	}	
	if(![dictionary[kHotListCommentListTime] isKindOfClass:[NSNull class]]){
		self.time = dictionary[kHotListCommentListTime];
	}	
	if(![dictionary[kHotListCommentListTogglecontent] isKindOfClass:[NSNull class]]){
		self.togglecontent = dictionary[kHotListCommentListTogglecontent];
	}	
	if(![dictionary[kHotListCommentListUserImg] isKindOfClass:[NSNull class]]){
		self.userImg = dictionary[kHotListCommentListUserImg];
	}	
	if(![dictionary[kHotListCommentListUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kHotListCommentListUserName];
	}	
	if(![dictionary[kHotListCommentListVia] isKindOfClass:[NSNull class]]){
		self.via = dictionary[kHotListCommentListVia];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.attr != nil){
		dictionary[kHotListCommentListAttr] = [self.attr toDictionary];
	}
	if(self.checkReplyInfo != nil){
		dictionary[kHotListCommentListCheckReplyInfo] = [self.checkReplyInfo toDictionary];
	}
	if(self.content != nil){
		dictionary[kHotListCommentListContent] = self.content;
	}
	if(self.createTime != nil){
		dictionary[kHotListCommentListCreateTime] = self.createTime;
	}
	dictionary[kHotListCommentListFloor] = @(self.floor);
	if(self.groupid != nil){
		dictionary[kHotListCommentListGroupid] = self.groupid;
	}
	dictionary[kHotListCommentListLightCount] = @(self.lightCount);
	if(self.pid != nil){
		dictionary[kHotListCommentListPid] = self.pid;
	}
	if(self.puid != nil){
		dictionary[kHotListCommentListPuid] = self.puid;
	}
	if(self.quote != nil){
		dictionary[kHotListCommentListQuote] = self.quote;
	}
	dictionary[kHotListCommentListQuoteDeleted] = @(self.quoteDeleted);
	dictionary[kHotListCommentListQuoteLightCount] = @(self.quoteLightCount);
	if(self.smallcontent != nil){
		dictionary[kHotListCommentListSmallcontent] = self.smallcontent;
	}
	if(self.time != nil){
		dictionary[kHotListCommentListTime] = self.time;
	}
	if(self.togglecontent != nil){
		dictionary[kHotListCommentListTogglecontent] = self.togglecontent;
	}
	if(self.userImg != nil){
		dictionary[kHotListCommentListUserImg] = self.userImg;
	}
	if(self.userName != nil){
		dictionary[kHotListCommentListUserName] = self.userName;
	}
	if(self.via != nil){
		dictionary[kHotListCommentListVia] = self.via;
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
	if(self.attr != nil){
		[aCoder encodeObject:self.attr forKey:kHotListCommentListAttr];
	}
	if(self.checkReplyInfo != nil){
		[aCoder encodeObject:self.checkReplyInfo forKey:kHotListCommentListCheckReplyInfo];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kHotListCommentListContent];
	}
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kHotListCommentListCreateTime];
	}
	[aCoder encodeObject:@(self.floor) forKey:kHotListCommentListFloor];	if(self.groupid != nil){
		[aCoder encodeObject:self.groupid forKey:kHotListCommentListGroupid];
	}
	[aCoder encodeObject:@(self.lightCount) forKey:kHotListCommentListLightCount];	if(self.pid != nil){
		[aCoder encodeObject:self.pid forKey:kHotListCommentListPid];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kHotListCommentListPuid];
	}
	if(self.quote != nil){
		[aCoder encodeObject:self.quote forKey:kHotListCommentListQuote];
	}
	[aCoder encodeObject:@(self.quoteDeleted) forKey:kHotListCommentListQuoteDeleted];	[aCoder encodeObject:@(self.quoteLightCount) forKey:kHotListCommentListQuoteLightCount];	if(self.smallcontent != nil){
		[aCoder encodeObject:self.smallcontent forKey:kHotListCommentListSmallcontent];
	}
	if(self.time != nil){
		[aCoder encodeObject:self.time forKey:kHotListCommentListTime];
	}
	if(self.togglecontent != nil){
		[aCoder encodeObject:self.togglecontent forKey:kHotListCommentListTogglecontent];
	}
	if(self.userImg != nil){
		[aCoder encodeObject:self.userImg forKey:kHotListCommentListUserImg];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kHotListCommentListUserName];
	}
	if(self.via != nil){
		[aCoder encodeObject:self.via forKey:kHotListCommentListVia];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.attr = [aDecoder decodeObjectForKey:kHotListCommentListAttr];
	self.checkReplyInfo = [aDecoder decodeObjectForKey:kHotListCommentListCheckReplyInfo];
	self.content = [aDecoder decodeObjectForKey:kHotListCommentListContent];
	self.createTime = [aDecoder decodeObjectForKey:kHotListCommentListCreateTime];
	self.floor = [[aDecoder decodeObjectForKey:kHotListCommentListFloor] integerValue];
	self.groupid = [aDecoder decodeObjectForKey:kHotListCommentListGroupid];
	self.lightCount = [[aDecoder decodeObjectForKey:kHotListCommentListLightCount] integerValue];
	self.pid = [aDecoder decodeObjectForKey:kHotListCommentListPid];
	self.puid = [aDecoder decodeObjectForKey:kHotListCommentListPuid];
	self.quote = [aDecoder decodeObjectForKey:kHotListCommentListQuote];
	self.quoteDeleted = [[aDecoder decodeObjectForKey:kHotListCommentListQuoteDeleted] integerValue];
	self.quoteLightCount = [[aDecoder decodeObjectForKey:kHotListCommentListQuoteLightCount] integerValue];
	self.smallcontent = [aDecoder decodeObjectForKey:kHotListCommentListSmallcontent];
	self.time = [aDecoder decodeObjectForKey:kHotListCommentListTime];
	self.togglecontent = [aDecoder decodeObjectForKey:kHotListCommentListTogglecontent];
	self.userImg = [aDecoder decodeObjectForKey:kHotListCommentListUserImg];
	self.userName = [aDecoder decodeObjectForKey:kHotListCommentListUserName];
	self.via = [aDecoder decodeObjectForKey:kHotListCommentListVia];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	HotListCommentList *copy = [HotListCommentList new];

	copy.attr = [self.attr copy];
	copy.checkReplyInfo = [self.checkReplyInfo copy];
	copy.content = [self.content copy];
	copy.createTime = [self.createTime copy];
	copy.floor = self.floor;
	copy.groupid = [self.groupid copy];
	copy.lightCount = self.lightCount;
	copy.pid = [self.pid copy];
	copy.puid = [self.puid copy];
	copy.quote = [self.quote copy];
	copy.quoteDeleted = self.quoteDeleted;
	copy.quoteLightCount = self.quoteLightCount;
	copy.smallcontent = [self.smallcontent copy];
	copy.time = [self.time copy];
	copy.togglecontent = [self.togglecontent copy];
	copy.userImg = [self.userImg copy];
	copy.userName = [self.userName copy];
	copy.via = [self.via copy];

	return copy;
}
@end
