//
//	CommentDatalist.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentDatalist.h"

NSString *const kCommentDatalistAttr = @"attr";
NSString *const kCommentDatalistCerturl = @"certurl";
NSString *const kCommentDatalistCertuser = @"certuser";
NSString *const kCommentDatalistCheckReplyInfo = @"check_reply_info";
NSString *const kCommentDatalistContent = @"content";
NSString *const kCommentDatalistCreateTime = @"create_time";
NSString *const kCommentDatalistFloor = @"floor";
NSString *const kCommentDatalistGroupid = @"groupid";
NSString *const kCommentDatalistLightCount = @"light_count";
NSString *const kCommentDatalistPid = @"pid";
NSString *const kCommentDatalistPuid = @"puid";
NSString *const kCommentDatalistQuote = @"quote";
NSString *const kCommentDatalistQuoteDeleted = @"quote_deleted";
NSString *const kCommentDatalistQuoteLightCount = @"quote_light_count";
NSString *const kCommentDatalistSmallcontent = @"smallcontent";
NSString *const kCommentDatalistTime = @"time";
NSString *const kCommentDatalistTogglecontent = @"togglecontent";
NSString *const kCommentDatalistUserImg = @"userImg";
NSString *const kCommentDatalistUserName = @"userName";
NSString *const kCommentDatalistVia = @"via";

@interface CommentDatalist ()
@end
@implementation CommentDatalist




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommentDatalistAttr] isKindOfClass:[NSNull class]]){
		self.attr = [[CommentAttr alloc] initWithDictionary:dictionary[kCommentDatalistAttr]];
	}

	if(![dictionary[kCommentDatalistCerturl] isKindOfClass:[NSNull class]]){
		self.certurl = dictionary[kCommentDatalistCerturl];
	}	
	if(![dictionary[kCommentDatalistCertuser] isKindOfClass:[NSNull class]]){
		self.certuser = [[Certuser alloc] initWithDictionary:dictionary[kCommentDatalistCertuser]];
	}

	if(![dictionary[kCommentDatalistCheckReplyInfo] isKindOfClass:[NSNull class]]){
		self.checkReplyInfo = [[CheckReplyInfo alloc] initWithDictionary:dictionary[kCommentDatalistCheckReplyInfo]];
	}

	if(![dictionary[kCommentDatalistContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kCommentDatalistContent];
	}	
	if(![dictionary[kCommentDatalistCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kCommentDatalistCreateTime];
	}	
	if(![dictionary[kCommentDatalistFloor] isKindOfClass:[NSNull class]]){
		self.floor = [dictionary[kCommentDatalistFloor] integerValue];
	}

	if(![dictionary[kCommentDatalistGroupid] isKindOfClass:[NSNull class]]){
		self.groupid = dictionary[kCommentDatalistGroupid];
	}	
	if(![dictionary[kCommentDatalistLightCount] isKindOfClass:[NSNull class]]){
		self.lightCount = [dictionary[kCommentDatalistLightCount] integerValue];
	}

	if(![dictionary[kCommentDatalistPid] isKindOfClass:[NSNull class]]){
		self.pid = dictionary[kCommentDatalistPid];
	}	
	if(![dictionary[kCommentDatalistPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kCommentDatalistPuid];
	}	
	if(dictionary[kCommentDatalistQuote] != nil && [dictionary[kCommentDatalistQuote] isKindOfClass:[NSArray class]]){
		NSArray * quoteDictionaries = dictionary[kCommentDatalistQuote];
		NSMutableArray * quoteItems = [NSMutableArray array];
		for(NSDictionary * quoteDictionary in quoteDictionaries){
			CommentType5Quote * quoteItem = [[CommentType5Quote alloc] initWithDictionary:quoteDictionary];
			[quoteItems addObject:quoteItem];
		}
		self.quote = quoteItems;
	}
	if(![dictionary[kCommentDatalistQuoteDeleted] isKindOfClass:[NSNull class]]){
		self.quoteDeleted = [dictionary[kCommentDatalistQuoteDeleted] integerValue];
	}

	if(![dictionary[kCommentDatalistQuoteLightCount] isKindOfClass:[NSNull class]]){
		self.quoteLightCount = [dictionary[kCommentDatalistQuoteLightCount] integerValue];
	}

	if(![dictionary[kCommentDatalistSmallcontent] isKindOfClass:[NSNull class]]){
		self.smallcontent = dictionary[kCommentDatalistSmallcontent];
	}	
	if(![dictionary[kCommentDatalistTime] isKindOfClass:[NSNull class]]){
		self.time = dictionary[kCommentDatalistTime];
	}	
	if(![dictionary[kCommentDatalistTogglecontent] isKindOfClass:[NSNull class]]){
		self.togglecontent = dictionary[kCommentDatalistTogglecontent];
	}	
	if(![dictionary[kCommentDatalistUserImg] isKindOfClass:[NSNull class]]){
		self.userImg = dictionary[kCommentDatalistUserImg];
	}	
	if(![dictionary[kCommentDatalistUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kCommentDatalistUserName];
	}	
	if(![dictionary[kCommentDatalistVia] isKindOfClass:[NSNull class]]){
		self.via = dictionary[kCommentDatalistVia];
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
		dictionary[kCommentDatalistAttr] = [self.attr toDictionary];
	}
	if(self.certurl != nil){
		dictionary[kCommentDatalistCerturl] = self.certurl;
	}
	if(self.certuser != nil){
		dictionary[kCommentDatalistCertuser] = [self.certuser toDictionary];
	}
	if(self.checkReplyInfo != nil){
		dictionary[kCommentDatalistCheckReplyInfo] = [self.checkReplyInfo toDictionary];
	}
	if(self.content != nil){
		dictionary[kCommentDatalistContent] = self.content;
	}
	if(self.createTime != nil){
		dictionary[kCommentDatalistCreateTime] = self.createTime;
	}
	dictionary[kCommentDatalistFloor] = @(self.floor);
	if(self.groupid != nil){
		dictionary[kCommentDatalistGroupid] = self.groupid;
	}
	dictionary[kCommentDatalistLightCount] = @(self.lightCount);
	if(self.pid != nil){
		dictionary[kCommentDatalistPid] = self.pid;
	}
	if(self.puid != nil){
		dictionary[kCommentDatalistPuid] = self.puid;
	}
	if(self.quote != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(CommentType5Quote * quoteElement in self.quote){
			[dictionaryElements addObject:[quoteElement toDictionary]];
		}
		dictionary[kCommentDatalistQuote] = dictionaryElements;
	}
	dictionary[kCommentDatalistQuoteDeleted] = @(self.quoteDeleted);
	dictionary[kCommentDatalistQuoteLightCount] = @(self.quoteLightCount);
	if(self.smallcontent != nil){
		dictionary[kCommentDatalistSmallcontent] = self.smallcontent;
	}
	if(self.time != nil){
		dictionary[kCommentDatalistTime] = self.time;
	}
	if(self.togglecontent != nil){
		dictionary[kCommentDatalistTogglecontent] = self.togglecontent;
	}
	if(self.userImg != nil){
		dictionary[kCommentDatalistUserImg] = self.userImg;
	}
	if(self.userName != nil){
		dictionary[kCommentDatalistUserName] = self.userName;
	}
	if(self.via != nil){
		dictionary[kCommentDatalistVia] = self.via;
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
		[aCoder encodeObject:self.attr forKey:kCommentDatalistAttr];
	}
	if(self.certurl != nil){
		[aCoder encodeObject:self.certurl forKey:kCommentDatalistCerturl];
	}
	if(self.certuser != nil){
		[aCoder encodeObject:self.certuser forKey:kCommentDatalistCertuser];
	}
	if(self.checkReplyInfo != nil){
		[aCoder encodeObject:self.checkReplyInfo forKey:kCommentDatalistCheckReplyInfo];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kCommentDatalistContent];
	}
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kCommentDatalistCreateTime];
	}
	[aCoder encodeObject:@(self.floor) forKey:kCommentDatalistFloor];	if(self.groupid != nil){
		[aCoder encodeObject:self.groupid forKey:kCommentDatalistGroupid];
	}
	[aCoder encodeObject:@(self.lightCount) forKey:kCommentDatalistLightCount];	if(self.pid != nil){
		[aCoder encodeObject:self.pid forKey:kCommentDatalistPid];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kCommentDatalistPuid];
	}
	if(self.quote != nil){
		[aCoder encodeObject:self.quote forKey:kCommentDatalistQuote];
	}
	[aCoder encodeObject:@(self.quoteDeleted) forKey:kCommentDatalistQuoteDeleted];	[aCoder encodeObject:@(self.quoteLightCount) forKey:kCommentDatalistQuoteLightCount];	if(self.smallcontent != nil){
		[aCoder encodeObject:self.smallcontent forKey:kCommentDatalistSmallcontent];
	}
	if(self.time != nil){
		[aCoder encodeObject:self.time forKey:kCommentDatalistTime];
	}
	if(self.togglecontent != nil){
		[aCoder encodeObject:self.togglecontent forKey:kCommentDatalistTogglecontent];
	}
	if(self.userImg != nil){
		[aCoder encodeObject:self.userImg forKey:kCommentDatalistUserImg];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kCommentDatalistUserName];
	}
	if(self.via != nil){
		[aCoder encodeObject:self.via forKey:kCommentDatalistVia];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.attr = [aDecoder decodeObjectForKey:kCommentDatalistAttr];
	self.certurl = [aDecoder decodeObjectForKey:kCommentDatalistCerturl];
	self.certuser = [aDecoder decodeObjectForKey:kCommentDatalistCertuser];
	self.checkReplyInfo = [aDecoder decodeObjectForKey:kCommentDatalistCheckReplyInfo];
	self.content = [aDecoder decodeObjectForKey:kCommentDatalistContent];
	self.createTime = [aDecoder decodeObjectForKey:kCommentDatalistCreateTime];
	self.floor = [[aDecoder decodeObjectForKey:kCommentDatalistFloor] integerValue];
	self.groupid = [aDecoder decodeObjectForKey:kCommentDatalistGroupid];
	self.lightCount = [[aDecoder decodeObjectForKey:kCommentDatalistLightCount] integerValue];
	self.pid = [aDecoder decodeObjectForKey:kCommentDatalistPid];
	self.puid = [aDecoder decodeObjectForKey:kCommentDatalistPuid];
	self.quote = [aDecoder decodeObjectForKey:kCommentDatalistQuote];
	self.quoteDeleted = [[aDecoder decodeObjectForKey:kCommentDatalistQuoteDeleted] integerValue];
	self.quoteLightCount = [[aDecoder decodeObjectForKey:kCommentDatalistQuoteLightCount] integerValue];
	self.smallcontent = [aDecoder decodeObjectForKey:kCommentDatalistSmallcontent];
	self.time = [aDecoder decodeObjectForKey:kCommentDatalistTime];
	self.togglecontent = [aDecoder decodeObjectForKey:kCommentDatalistTogglecontent];
	self.userImg = [aDecoder decodeObjectForKey:kCommentDatalistUserImg];
	self.userName = [aDecoder decodeObjectForKey:kCommentDatalistUserName];
	self.via = [aDecoder decodeObjectForKey:kCommentDatalistVia];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentDatalist *copy = [CommentDatalist new];

	copy.attr = [self.attr copy];
	copy.certurl = [self.certurl copy];
	copy.certuser = [self.certuser copy];
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
