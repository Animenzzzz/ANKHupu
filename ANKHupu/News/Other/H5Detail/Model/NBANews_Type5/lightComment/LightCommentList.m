//
//	List.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LightCommentList.h"

NSString *const kListAttr = @"attr";
NSString *const kListCheckReplyInfo = @"check_reply_info";
NSString *const kListContent = @"content";
NSString *const kListGroupid = @"groupid";
NSString *const kListLightCount = @"light_count";
NSString *const kListPid = @"pid";
NSString *const kListPuid = @"puid";
NSString *const kListQuote = @"quote";
NSString *const kListQuoteDeleted = @"quote_deleted";
NSString *const kListSmallcontent = @"smallcontent";
NSString *const kListTime = @"time";
NSString *const kListTogglecontent = @"togglecontent";
NSString *const kListUserImg = @"userImg";
NSString *const kListUserName = @"userName";

@interface LightCommentList ()
@end
@implementation LightCommentList




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kListAttr] isKindOfClass:[NSNull class]]){
		self.attr = [[LightCommentAttr alloc] initWithDictionary:dictionary[kListAttr]];
	}

	if(![dictionary[kListCheckReplyInfo] isKindOfClass:[NSNull class]]){
		self.checkReplyInfo = [[LightCommentCheckReplyInfo alloc] initWithDictionary:dictionary[kListCheckReplyInfo]];
	}

	if(![dictionary[kListContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kListContent];
	}	
	if(![dictionary[kListGroupid] isKindOfClass:[NSNull class]]){
		self.groupid = dictionary[kListGroupid];
	}	
	if(![dictionary[kListLightCount] isKindOfClass:[NSNull class]]){
		self.lightCount = [dictionary[kListLightCount] integerValue];
	}

	if(![dictionary[kListPid] isKindOfClass:[NSNull class]]){
		self.pid = dictionary[kListPid];
	}	
	if(![dictionary[kListPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kListPuid];
	}	
	if(dictionary[kListQuote] != nil && [dictionary[kListQuote] isKindOfClass:[NSArray class]]){
		NSArray * quoteDictionaries = dictionary[kListQuote];
		NSMutableArray * quoteItems = [NSMutableArray array];
		for(NSDictionary * quoteDictionary in quoteDictionaries){
			LightCommentQuote * quoteItem = [[LightCommentQuote alloc] initWithDictionary:quoteDictionary];
			[quoteItems addObject:quoteItem];
		}
		self.quote = quoteItems;
	}
	if(![dictionary[kListQuoteDeleted] isKindOfClass:[NSNull class]]){
		self.quoteDeleted = [dictionary[kListQuoteDeleted] integerValue];
	}

	if(![dictionary[kListSmallcontent] isKindOfClass:[NSNull class]]){
		self.smallcontent = dictionary[kListSmallcontent];
	}	
	if(![dictionary[kListTime] isKindOfClass:[NSNull class]]){
		self.time = dictionary[kListTime];
	}	
	if(![dictionary[kListTogglecontent] isKindOfClass:[NSNull class]]){
		self.togglecontent = dictionary[kListTogglecontent];
	}	
	if(![dictionary[kListUserImg] isKindOfClass:[NSNull class]]){
		self.userImg = dictionary[kListUserImg];
	}	
	if(![dictionary[kListUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kListUserName];
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
		dictionary[kListAttr] = [self.attr toDictionary];
	}
	if(self.checkReplyInfo != nil){
		dictionary[kListCheckReplyInfo] = [self.checkReplyInfo toDictionary];
	}
	if(self.content != nil){
		dictionary[kListContent] = self.content;
	}
	if(self.groupid != nil){
		dictionary[kListGroupid] = self.groupid;
	}
	dictionary[kListLightCount] = @(self.lightCount);
	if(self.pid != nil){
		dictionary[kListPid] = self.pid;
	}
	if(self.puid != nil){
		dictionary[kListPuid] = self.puid;
	}
	if(self.quote != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(LightCommentQuote * quoteElement in self.quote){
			[dictionaryElements addObject:[quoteElement toDictionary]];
		}
		dictionary[kListQuote] = dictionaryElements;
	}
	dictionary[kListQuoteDeleted] = @(self.quoteDeleted);
	if(self.smallcontent != nil){
		dictionary[kListSmallcontent] = self.smallcontent;
	}
	if(self.time != nil){
		dictionary[kListTime] = self.time;
	}
	if(self.togglecontent != nil){
		dictionary[kListTogglecontent] = self.togglecontent;
	}
	if(self.userImg != nil){
		dictionary[kListUserImg] = self.userImg;
	}
	if(self.userName != nil){
		dictionary[kListUserName] = self.userName;
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
		[aCoder encodeObject:self.attr forKey:kListAttr];
	}
	if(self.checkReplyInfo != nil){
		[aCoder encodeObject:self.checkReplyInfo forKey:kListCheckReplyInfo];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kListContent];
	}
	if(self.groupid != nil){
		[aCoder encodeObject:self.groupid forKey:kListGroupid];
	}
	[aCoder encodeObject:@(self.lightCount) forKey:kListLightCount];	if(self.pid != nil){
		[aCoder encodeObject:self.pid forKey:kListPid];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kListPuid];
	}
	if(self.quote != nil){
		[aCoder encodeObject:self.quote forKey:kListQuote];
	}
	[aCoder encodeObject:@(self.quoteDeleted) forKey:kListQuoteDeleted];	if(self.smallcontent != nil){
		[aCoder encodeObject:self.smallcontent forKey:kListSmallcontent];
	}
	if(self.time != nil){
		[aCoder encodeObject:self.time forKey:kListTime];
	}
	if(self.togglecontent != nil){
		[aCoder encodeObject:self.togglecontent forKey:kListTogglecontent];
	}
	if(self.userImg != nil){
		[aCoder encodeObject:self.userImg forKey:kListUserImg];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kListUserName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.attr = [aDecoder decodeObjectForKey:kListAttr];
	self.checkReplyInfo = [aDecoder decodeObjectForKey:kListCheckReplyInfo];
	self.content = [aDecoder decodeObjectForKey:kListContent];
	self.groupid = [aDecoder decodeObjectForKey:kListGroupid];
	self.lightCount = [[aDecoder decodeObjectForKey:kListLightCount] integerValue];
	self.pid = [aDecoder decodeObjectForKey:kListPid];
	self.puid = [aDecoder decodeObjectForKey:kListPuid];
	self.quote = [aDecoder decodeObjectForKey:kListQuote];
	self.quoteDeleted = [[aDecoder decodeObjectForKey:kListQuoteDeleted] integerValue];
	self.smallcontent = [aDecoder decodeObjectForKey:kListSmallcontent];
	self.time = [aDecoder decodeObjectForKey:kListTime];
	self.togglecontent = [aDecoder decodeObjectForKey:kListTogglecontent];
	self.userImg = [aDecoder decodeObjectForKey:kListUserImg];
	self.userName = [aDecoder decodeObjectForKey:kListUserName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LightCommentList *copy = [LightCommentList new];

	copy.attr = [self.attr copy];
	copy.checkReplyInfo = [self.checkReplyInfo copy];
	copy.content = [self.content copy];
	copy.groupid = [self.groupid copy];
	copy.lightCount = self.lightCount;
	copy.pid = [self.pid copy];
	copy.puid = [self.puid copy];
	copy.quote = [self.quote copy];
	copy.quoteDeleted = self.quoteDeleted;
	copy.smallcontent = [self.smallcontent copy];
	copy.time = [self.time copy];
	copy.togglecontent = [self.togglecontent copy];
	copy.userImg = [self.userImg copy];
	copy.userName = [self.userName copy];

	return copy;
}
@end
