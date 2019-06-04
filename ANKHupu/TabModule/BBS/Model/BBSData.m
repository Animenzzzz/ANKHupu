//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BBSData.h"

NSString *const kBBSDataAdType = @"ad_type";
NSString *const kBBSDataAddition = @"addition";
NSString *const kBBSDataBadge = @"badge";
NSString *const kBBSDataFid = @"fid";
NSString *const kBBSDataForum = @"forum";
NSString *const kBBSDataForumLogo = @"forum_logo";
NSString *const kBBSDataForumName = @"forum_name";
NSString *const kBBSDataIsAd = @"is_ad";
NSString *const kBBSDataLightReply = @"lightReply";
NSString *const kBBSDataNps = @"nps";
NSString *const kBBSDataPosition = @"position";
NSString *const kBBSDataPuid = @"puid";
NSString *const kBBSDataReplies = @"replies";
NSString *const kBBSDataTid = @"tid";
NSString *const kBBSDataTitle = @"title";
NSString *const kBBSDataTopic = @"topic";
NSString *const kBBSDataTopicId = @"topic_id";
NSString *const kBBSDataType = @"type";
NSString *const kBBSDataUserName = @"userName";

@interface BBSData ()
@end
@implementation BBSData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBBSDataAdType] isKindOfClass:[NSNull class]]){
		self.adType = [dictionary[kBBSDataAdType] integerValue];
	}

	if(![dictionary[kBBSDataAddition] isKindOfClass:[NSNull class]]){
		self.addition = [dictionary[kBBSDataAddition] integerValue];
	}

	if(dictionary[kBBSDataBadge] != nil && [dictionary[kBBSDataBadge] isKindOfClass:[NSArray class]]){
		NSArray * badgeDictionaries = dictionary[kBBSDataBadge];
		NSMutableArray * badgeItems = [NSMutableArray array];
		for(NSDictionary * badgeDictionary in badgeDictionaries){
			BBSBadge * badgeItem = [[BBSBadge alloc] initWithDictionary:badgeDictionary];
			[badgeItems addObject:badgeItem];
		}
		self.badge = badgeItems;
	}
	if(![dictionary[kBBSDataFid] isKindOfClass:[NSNull class]]){
		self.fid = dictionary[kBBSDataFid];
	}	
	if(![dictionary[kBBSDataForum] isKindOfClass:[NSNull class]]){
		self.forum = [[BBSForum alloc] initWithDictionary:dictionary[kBBSDataForum]];
	}

	if(![dictionary[kBBSDataForumLogo] isKindOfClass:[NSNull class]]){
		self.forumLogo = dictionary[kBBSDataForumLogo];
	}	
	if(![dictionary[kBBSDataForumName] isKindOfClass:[NSNull class]]){
		self.forumName = dictionary[kBBSDataForumName];
	}	
	if(![dictionary[kBBSDataIsAd] isKindOfClass:[NSNull class]]){
		self.isAd = [dictionary[kBBSDataIsAd] integerValue];
	}

	if(![dictionary[kBBSDataLightReply] isKindOfClass:[NSNull class]]){
		self.lightReply = [dictionary[kBBSDataLightReply] integerValue];
	}

	if(![dictionary[kBBSDataNps] isKindOfClass:[NSNull class]]){
		self.nps = [dictionary[kBBSDataNps] integerValue];
	}

	if(![dictionary[kBBSDataPosition] isKindOfClass:[NSNull class]]){
		self.position = [dictionary[kBBSDataPosition] integerValue];
	}

	if(![dictionary[kBBSDataPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kBBSDataPuid];
	}	
	if(![dictionary[kBBSDataReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kBBSDataReplies];
	}	
	if(![dictionary[kBBSDataTid] isKindOfClass:[NSNull class]]){
		self.tid = dictionary[kBBSDataTid];
	}	
	if(![dictionary[kBBSDataTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kBBSDataTitle];
	}	
	if(![dictionary[kBBSDataTopic] isKindOfClass:[NSNull class]]){
		self.topic = [[BBSTopic alloc] initWithDictionary:dictionary[kBBSDataTopic]];
	}

	if(![dictionary[kBBSDataTopicId] isKindOfClass:[NSNull class]]){
		self.topicId = [dictionary[kBBSDataTopicId] integerValue];
	}

	if(![dictionary[kBBSDataType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kBBSDataType] integerValue];
	}

	if(![dictionary[kBBSDataUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kBBSDataUserName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kBBSDataAdType] = @(self.adType);
	dictionary[kBBSDataAddition] = @(self.addition);
	if(self.badge != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(BBSBadge * badgeElement in self.badge){
			[dictionaryElements addObject:[badgeElement toDictionary]];
		}
		dictionary[kBBSDataBadge] = dictionaryElements;
	}
	if(self.fid != nil){
		dictionary[kBBSDataFid] = self.fid;
	}
	if(self.forum != nil){
		dictionary[kBBSDataForum] = [self.forum toDictionary];
	}
	if(self.forumLogo != nil){
		dictionary[kBBSDataForumLogo] = self.forumLogo;
	}
	if(self.forumName != nil){
		dictionary[kBBSDataForumName] = self.forumName;
	}
	dictionary[kBBSDataIsAd] = @(self.isAd);
	dictionary[kBBSDataLightReply] = @(self.lightReply);
	dictionary[kBBSDataNps] = @(self.nps);
	dictionary[kBBSDataPosition] = @(self.position);
	if(self.puid != nil){
		dictionary[kBBSDataPuid] = self.puid;
	}
	if(self.replies != nil){
		dictionary[kBBSDataReplies] = self.replies;
	}
	if(self.tid != nil){
		dictionary[kBBSDataTid] = self.tid;
	}
	if(self.title != nil){
		dictionary[kBBSDataTitle] = self.title;
	}
	if(self.topic != nil){
		dictionary[kBBSDataTopic] = [self.topic toDictionary];
	}
	dictionary[kBBSDataTopicId] = @(self.topicId);
	dictionary[kBBSDataType] = @(self.type);
	if(self.userName != nil){
		dictionary[kBBSDataUserName] = self.userName;
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
	[aCoder encodeObject:@(self.adType) forKey:kBBSDataAdType];	[aCoder encodeObject:@(self.addition) forKey:kBBSDataAddition];	if(self.badge != nil){
		[aCoder encodeObject:self.badge forKey:kBBSDataBadge];
	}
	if(self.fid != nil){
		[aCoder encodeObject:self.fid forKey:kBBSDataFid];
	}
	if(self.forum != nil){
		[aCoder encodeObject:self.forum forKey:kBBSDataForum];
	}
	if(self.forumLogo != nil){
		[aCoder encodeObject:self.forumLogo forKey:kBBSDataForumLogo];
	}
	if(self.forumName != nil){
		[aCoder encodeObject:self.forumName forKey:kBBSDataForumName];
	}
	[aCoder encodeObject:@(self.isAd) forKey:kBBSDataIsAd];	[aCoder encodeObject:@(self.lightReply) forKey:kBBSDataLightReply];	[aCoder encodeObject:@(self.nps) forKey:kBBSDataNps];	[aCoder encodeObject:@(self.position) forKey:kBBSDataPosition];	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kBBSDataPuid];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kBBSDataReplies];
	}
	if(self.tid != nil){
		[aCoder encodeObject:self.tid forKey:kBBSDataTid];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kBBSDataTitle];
	}
	if(self.topic != nil){
		[aCoder encodeObject:self.topic forKey:kBBSDataTopic];
	}
	[aCoder encodeObject:@(self.topicId) forKey:kBBSDataTopicId];	[aCoder encodeObject:@(self.type) forKey:kBBSDataType];	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kBBSDataUserName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adType = [[aDecoder decodeObjectForKey:kBBSDataAdType] integerValue];
	self.addition = [[aDecoder decodeObjectForKey:kBBSDataAddition] integerValue];
	self.badge = [aDecoder decodeObjectForKey:kBBSDataBadge];
	self.fid = [aDecoder decodeObjectForKey:kBBSDataFid];
	self.forum = [aDecoder decodeObjectForKey:kBBSDataForum];
	self.forumLogo = [aDecoder decodeObjectForKey:kBBSDataForumLogo];
	self.forumName = [aDecoder decodeObjectForKey:kBBSDataForumName];
	self.isAd = [[aDecoder decodeObjectForKey:kBBSDataIsAd] integerValue];
	self.lightReply = [[aDecoder decodeObjectForKey:kBBSDataLightReply] integerValue];
	self.nps = [[aDecoder decodeObjectForKey:kBBSDataNps] integerValue];
	self.position = [[aDecoder decodeObjectForKey:kBBSDataPosition] integerValue];
	self.puid = [aDecoder decodeObjectForKey:kBBSDataPuid];
	self.replies = [aDecoder decodeObjectForKey:kBBSDataReplies];
	self.tid = [aDecoder decodeObjectForKey:kBBSDataTid];
	self.title = [aDecoder decodeObjectForKey:kBBSDataTitle];
	self.topic = [aDecoder decodeObjectForKey:kBBSDataTopic];
	self.topicId = [[aDecoder decodeObjectForKey:kBBSDataTopicId] integerValue];
	self.type = [[aDecoder decodeObjectForKey:kBBSDataType] integerValue];
	self.userName = [aDecoder decodeObjectForKey:kBBSDataUserName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BBSData *copy = [BBSData new];

	copy.adType = self.adType;
	copy.addition = self.addition;
	copy.badge = [self.badge copy];
	copy.fid = [self.fid copy];
	copy.forum = [self.forum copy];
	copy.forumLogo = [self.forumLogo copy];
	copy.forumName = [self.forumName copy];
	copy.isAd = self.isAd;
	copy.lightReply = self.lightReply;
	copy.nps = self.nps;
	copy.position = self.position;
	copy.puid = [self.puid copy];
	copy.replies = [self.replies copy];
	copy.tid = [self.tid copy];
	copy.title = [self.title copy];
	copy.topic = [self.topic copy];
	copy.topicId = self.topicId;
	copy.type = self.type;
	copy.userName = [self.userName copy];

	return copy;
}
@end
