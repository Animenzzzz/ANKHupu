//
//	NBANews5.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBANewsType5Model.h"

NSString *const kNBANews5NBAType5offlineData = @"offline_data";
NSString *const kNBANews5NBAType5share = @"share";
NSString *const kNBANews5NBAType5topic1 = @"topic";
NSString *const kNBANews5Ad = @"ad";
NSString *const kNBANews5AdvId = @"advId";
NSString *const kNBANews5AllCount = @"allCount";
NSString *const kNBANews5AuthorPuid = @"authorPuid";
NSString *const kNBANews5CanScoreSort = @"canScoreSort";
NSString *const kNBANews5CheckReplyUrl = @"check_reply_url";
NSString *const kNBANews5Client = @"client";
NSString *const kNBANews5DefOrder = @"defOrder";
NSString *const kNBANews5DomainList = @"domain_list";
NSString *const kNBANews5Fid = @"fid";
NSString *const kNBANews5ForumLogo = @"forum_logo";
NSString *const kNBANews5ForumName = @"forum_name";
NSString *const kNBANews5Isrec = @"isrec";
NSString *const kNBANews5JiangjiStatus = @"jiangji_status";
NSString *const kNBANews5Lights = @"lights";
NSString *const kNBANews5Nps = @"nps";
NSString *const kNBANews5Page = @"page";
NSString *const kNBANews5PageSize = @"pageSize";
NSString *const kNBANews5Puid = @"puid";
NSString *const kNBANews5RecommendNum = @"recommend_num";
NSString *const kNBANews5Replies = @"replies";
NSString *const kNBANews5ShareNum = @"share_num";
NSString *const kNBANews5Tid = @"tid";
NSString *const kNBANews5Title = @"title";
NSString *const kNBANews5Url = @"url";
NSString *const kNBANews5UserName = @"userName";
NSString *const kNBANews5VideoInfo = @"video_info";
NSString *const kNBANews5VideoPublish = @"video_publish";
NSString *const kNBANews5VideoUrl = @"video_url";

@interface NBANewsType5Model ()
@end
@implementation NBANewsType5Model




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBANews5NBAType5offlineData] isKindOfClass:[NSNull class]]){
		self.nBAType5offlineData = [[NBAType5offlineData alloc] initWithDictionary:dictionary[kNBANews5NBAType5offlineData]];
	}

	if(![dictionary[kNBANews5NBAType5share] isKindOfClass:[NSNull class]]){
		self.nBAType5share = [[NBAType5share alloc] initWithDictionary:dictionary[kNBANews5NBAType5share]];
	}

	if(![dictionary[kNBANews5NBAType5topic1] isKindOfClass:[NSNull class]]){
		self.nBAType5topic1 = [[NBAType5topic alloc] initWithDictionary:dictionary[kNBANews5NBAType5topic1]];
	}

	if(![dictionary[kNBANews5Ad] isKindOfClass:[NSNull class]]){
		self.ad = [dictionary[kNBANews5Ad] integerValue];
	}

	if(![dictionary[kNBANews5AdvId] isKindOfClass:[NSNull class]]){
		self.advId = dictionary[kNBANews5AdvId];
	}	
	if(![dictionary[kNBANews5AllCount] isKindOfClass:[NSNull class]]){
		self.allCount = [dictionary[kNBANews5AllCount] integerValue];
	}

	if(![dictionary[kNBANews5AuthorPuid] isKindOfClass:[NSNull class]]){
		self.authorPuid = dictionary[kNBANews5AuthorPuid];
	}	
	if(![dictionary[kNBANews5CanScoreSort] isKindOfClass:[NSNull class]]){
		self.canScoreSort = [dictionary[kNBANews5CanScoreSort] integerValue];
	}

	if(![dictionary[kNBANews5CheckReplyUrl] isKindOfClass:[NSNull class]]){
		self.checkReplyUrl = dictionary[kNBANews5CheckReplyUrl];
	}	
	if(![dictionary[kNBANews5Client] isKindOfClass:[NSNull class]]){
		self.client = dictionary[kNBANews5Client];
	}	
	if(![dictionary[kNBANews5DefOrder] isKindOfClass:[NSNull class]]){
		self.defOrder = dictionary[kNBANews5DefOrder];
	}	
	if(![dictionary[kNBANews5DomainList] isKindOfClass:[NSNull class]]){
		self.domainList = dictionary[kNBANews5DomainList];
	}	
	if(![dictionary[kNBANews5Fid] isKindOfClass:[NSNull class]]){
		self.fid = dictionary[kNBANews5Fid];
	}	
	if(![dictionary[kNBANews5ForumLogo] isKindOfClass:[NSNull class]]){
		self.forumLogo = dictionary[kNBANews5ForumLogo];
	}	
	if(![dictionary[kNBANews5ForumName] isKindOfClass:[NSNull class]]){
		self.forumName = dictionary[kNBANews5ForumName];
	}	
	if(![dictionary[kNBANews5Isrec] isKindOfClass:[NSNull class]]){
		self.isrec = dictionary[kNBANews5Isrec];
	}	
	if(![dictionary[kNBANews5JiangjiStatus] isKindOfClass:[NSNull class]]){
		self.jiangjiStatus = [dictionary[kNBANews5JiangjiStatus] integerValue];
	}

	if(![dictionary[kNBANews5Lights] isKindOfClass:[NSNull class]]){
		self.lights = [dictionary[kNBANews5Lights] integerValue];
	}

	if(![dictionary[kNBANews5Nps] isKindOfClass:[NSNull class]]){
		self.nps = dictionary[kNBANews5Nps];
	}	
	if(![dictionary[kNBANews5Page] isKindOfClass:[NSNull class]]){
		self.page = dictionary[kNBANews5Page];
	}	
	if(![dictionary[kNBANews5PageSize] isKindOfClass:[NSNull class]]){
		self.pageSize = [dictionary[kNBANews5PageSize] integerValue];
	}

	if(![dictionary[kNBANews5Puid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kNBANews5Puid];
	}	
	if(![dictionary[kNBANews5RecommendNum] isKindOfClass:[NSNull class]]){
		self.recommendNum = dictionary[kNBANews5RecommendNum];
	}	
	if(![dictionary[kNBANews5Replies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kNBANews5Replies];
	}	
	if(![dictionary[kNBANews5ShareNum] isKindOfClass:[NSNull class]]){
		self.shareNum = [dictionary[kNBANews5ShareNum] integerValue];
	}

	if(![dictionary[kNBANews5Tid] isKindOfClass:[NSNull class]]){
		self.tid = dictionary[kNBANews5Tid];
	}	
	if(![dictionary[kNBANews5Title] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kNBANews5Title];
	}	
	if(![dictionary[kNBANews5Url] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kNBANews5Url];
	}	
	if(![dictionary[kNBANews5UserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kNBANews5UserName];
	}	
	if(![dictionary[kNBANews5VideoInfo] isKindOfClass:[NSNull class]]){
		self.videoInfo = dictionary[kNBANews5VideoInfo];
	}	
	if(![dictionary[kNBANews5VideoPublish] isKindOfClass:[NSNull class]]){
		self.videoPublish = [dictionary[kNBANews5VideoPublish] integerValue];
	}

	if(![dictionary[kNBANews5VideoUrl] isKindOfClass:[NSNull class]]){
		self.videoUrl = dictionary[kNBANews5VideoUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.nBAType5offlineData != nil){
		dictionary[kNBANews5NBAType5offlineData] = [self.nBAType5offlineData toDictionary];
	}
	if(self.nBAType5share != nil){
		dictionary[kNBANews5NBAType5share] = [self.nBAType5share toDictionary];
	}
	if(self.nBAType5topic1 != nil){
		dictionary[kNBANews5NBAType5topic1] = [self.nBAType5topic1 toDictionary];
	}
	dictionary[kNBANews5Ad] = @(self.ad);
	if(self.advId != nil){
		dictionary[kNBANews5AdvId] = self.advId;
	}
	dictionary[kNBANews5AllCount] = @(self.allCount);
	if(self.authorPuid != nil){
		dictionary[kNBANews5AuthorPuid] = self.authorPuid;
	}
	dictionary[kNBANews5CanScoreSort] = @(self.canScoreSort);
	if(self.checkReplyUrl != nil){
		dictionary[kNBANews5CheckReplyUrl] = self.checkReplyUrl;
	}
	if(self.client != nil){
		dictionary[kNBANews5Client] = self.client;
	}
	if(self.defOrder != nil){
		dictionary[kNBANews5DefOrder] = self.defOrder;
	}
	if(self.domainList != nil){
		dictionary[kNBANews5DomainList] = self.domainList;
	}
	if(self.fid != nil){
		dictionary[kNBANews5Fid] = self.fid;
	}
	if(self.forumLogo != nil){
		dictionary[kNBANews5ForumLogo] = self.forumLogo;
	}
	if(self.forumName != nil){
		dictionary[kNBANews5ForumName] = self.forumName;
	}
	if(self.isrec != nil){
		dictionary[kNBANews5Isrec] = self.isrec;
	}
	dictionary[kNBANews5JiangjiStatus] = @(self.jiangjiStatus);
	dictionary[kNBANews5Lights] = @(self.lights);
	if(self.nps != nil){
		dictionary[kNBANews5Nps] = self.nps;
	}
	if(self.page != nil){
		dictionary[kNBANews5Page] = self.page;
	}
	dictionary[kNBANews5PageSize] = @(self.pageSize);
	if(self.puid != nil){
		dictionary[kNBANews5Puid] = self.puid;
	}
	if(self.recommendNum != nil){
		dictionary[kNBANews5RecommendNum] = self.recommendNum;
	}
	if(self.replies != nil){
		dictionary[kNBANews5Replies] = self.replies;
	}
	dictionary[kNBANews5ShareNum] = @(self.shareNum);
	if(self.tid != nil){
		dictionary[kNBANews5Tid] = self.tid;
	}
	if(self.title != nil){
		dictionary[kNBANews5Title] = self.title;
	}
	if(self.url != nil){
		dictionary[kNBANews5Url] = self.url;
	}
	if(self.userName != nil){
		dictionary[kNBANews5UserName] = self.userName;
	}
	if(self.videoInfo != nil){
		dictionary[kNBANews5VideoInfo] = self.videoInfo;
	}
	dictionary[kNBANews5VideoPublish] = @(self.videoPublish);
	if(self.videoUrl != nil){
		dictionary[kNBANews5VideoUrl] = self.videoUrl;
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
	if(self.nBAType5offlineData != nil){
		[aCoder encodeObject:self.nBAType5offlineData forKey:kNBANews5NBAType5offlineData];
	}
	if(self.nBAType5share != nil){
		[aCoder encodeObject:self.nBAType5share forKey:kNBANews5NBAType5share];
	}
	if(self.nBAType5topic1 != nil){
		[aCoder encodeObject:self.nBAType5topic1 forKey:kNBANews5NBAType5topic1];
	}
	[aCoder encodeObject:@(self.ad) forKey:kNBANews5Ad];	if(self.advId != nil){
		[aCoder encodeObject:self.advId forKey:kNBANews5AdvId];
	}
	[aCoder encodeObject:@(self.allCount) forKey:kNBANews5AllCount];	if(self.authorPuid != nil){
		[aCoder encodeObject:self.authorPuid forKey:kNBANews5AuthorPuid];
	}
	[aCoder encodeObject:@(self.canScoreSort) forKey:kNBANews5CanScoreSort];	if(self.checkReplyUrl != nil){
		[aCoder encodeObject:self.checkReplyUrl forKey:kNBANews5CheckReplyUrl];
	}
	if(self.client != nil){
		[aCoder encodeObject:self.client forKey:kNBANews5Client];
	}
	if(self.defOrder != nil){
		[aCoder encodeObject:self.defOrder forKey:kNBANews5DefOrder];
	}
	if(self.domainList != nil){
		[aCoder encodeObject:self.domainList forKey:kNBANews5DomainList];
	}
	if(self.fid != nil){
		[aCoder encodeObject:self.fid forKey:kNBANews5Fid];
	}
	if(self.forumLogo != nil){
		[aCoder encodeObject:self.forumLogo forKey:kNBANews5ForumLogo];
	}
	if(self.forumName != nil){
		[aCoder encodeObject:self.forumName forKey:kNBANews5ForumName];
	}
	if(self.isrec != nil){
		[aCoder encodeObject:self.isrec forKey:kNBANews5Isrec];
	}
	[aCoder encodeObject:@(self.jiangjiStatus) forKey:kNBANews5JiangjiStatus];	[aCoder encodeObject:@(self.lights) forKey:kNBANews5Lights];	if(self.nps != nil){
		[aCoder encodeObject:self.nps forKey:kNBANews5Nps];
	}
	if(self.page != nil){
		[aCoder encodeObject:self.page forKey:kNBANews5Page];
	}
	[aCoder encodeObject:@(self.pageSize) forKey:kNBANews5PageSize];	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kNBANews5Puid];
	}
	if(self.recommendNum != nil){
		[aCoder encodeObject:self.recommendNum forKey:kNBANews5RecommendNum];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kNBANews5Replies];
	}
	[aCoder encodeObject:@(self.shareNum) forKey:kNBANews5ShareNum];	if(self.tid != nil){
		[aCoder encodeObject:self.tid forKey:kNBANews5Tid];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kNBANews5Title];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kNBANews5Url];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kNBANews5UserName];
	}
	if(self.videoInfo != nil){
		[aCoder encodeObject:self.videoInfo forKey:kNBANews5VideoInfo];
	}
	[aCoder encodeObject:@(self.videoPublish) forKey:kNBANews5VideoPublish];	if(self.videoUrl != nil){
		[aCoder encodeObject:self.videoUrl forKey:kNBANews5VideoUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.nBAType5offlineData = [aDecoder decodeObjectForKey:kNBANews5NBAType5offlineData];
	self.nBAType5share = [aDecoder decodeObjectForKey:kNBANews5NBAType5share];
	self.nBAType5topic1 = [aDecoder decodeObjectForKey:kNBANews5NBAType5topic1];
	self.ad = [[aDecoder decodeObjectForKey:kNBANews5Ad] integerValue];
	self.advId = [aDecoder decodeObjectForKey:kNBANews5AdvId];
	self.allCount = [[aDecoder decodeObjectForKey:kNBANews5AllCount] integerValue];
	self.authorPuid = [aDecoder decodeObjectForKey:kNBANews5AuthorPuid];
	self.canScoreSort = [[aDecoder decodeObjectForKey:kNBANews5CanScoreSort] integerValue];
	self.checkReplyUrl = [aDecoder decodeObjectForKey:kNBANews5CheckReplyUrl];
	self.client = [aDecoder decodeObjectForKey:kNBANews5Client];
	self.defOrder = [aDecoder decodeObjectForKey:kNBANews5DefOrder];
	self.domainList = [aDecoder decodeObjectForKey:kNBANews5DomainList];
	self.fid = [aDecoder decodeObjectForKey:kNBANews5Fid];
	self.forumLogo = [aDecoder decodeObjectForKey:kNBANews5ForumLogo];
	self.forumName = [aDecoder decodeObjectForKey:kNBANews5ForumName];
	self.isrec = [aDecoder decodeObjectForKey:kNBANews5Isrec];
	self.jiangjiStatus = [[aDecoder decodeObjectForKey:kNBANews5JiangjiStatus] integerValue];
	self.lights = [[aDecoder decodeObjectForKey:kNBANews5Lights] integerValue];
	self.nps = [aDecoder decodeObjectForKey:kNBANews5Nps];
	self.page = [aDecoder decodeObjectForKey:kNBANews5Page];
	self.pageSize = [[aDecoder decodeObjectForKey:kNBANews5PageSize] integerValue];
	self.puid = [aDecoder decodeObjectForKey:kNBANews5Puid];
	self.recommendNum = [aDecoder decodeObjectForKey:kNBANews5RecommendNum];
	self.replies = [aDecoder decodeObjectForKey:kNBANews5Replies];
	self.shareNum = [[aDecoder decodeObjectForKey:kNBANews5ShareNum] integerValue];
	self.tid = [aDecoder decodeObjectForKey:kNBANews5Tid];
	self.title = [aDecoder decodeObjectForKey:kNBANews5Title];
	self.url = [aDecoder decodeObjectForKey:kNBANews5Url];
	self.userName = [aDecoder decodeObjectForKey:kNBANews5UserName];
	self.videoInfo = [aDecoder decodeObjectForKey:kNBANews5VideoInfo];
	self.videoPublish = [[aDecoder decodeObjectForKey:kNBANews5VideoPublish] integerValue];
	self.videoUrl = [aDecoder decodeObjectForKey:kNBANews5VideoUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBANewsType5Model *copy = [NBANewsType5Model new];

	copy.nBAType5offlineData = [self.nBAType5offlineData copy];
	copy.nBAType5share = [self.nBAType5share copy];
	copy.nBAType5topic1 = [self.nBAType5topic1 copy];
	copy.ad = self.ad;
	copy.advId = [self.advId copy];
	copy.allCount = self.allCount;
	copy.authorPuid = [self.authorPuid copy];
	copy.canScoreSort = self.canScoreSort;
	copy.checkReplyUrl = [self.checkReplyUrl copy];
	copy.client = [self.client copy];
	copy.defOrder = [self.defOrder copy];
	copy.domainList = [self.domainList copy];
	copy.fid = [self.fid copy];
	copy.forumLogo = [self.forumLogo copy];
	copy.forumName = [self.forumName copy];
	copy.isrec = [self.isrec copy];
	copy.jiangjiStatus = self.jiangjiStatus;
	copy.lights = self.lights;
	copy.nps = [self.nps copy];
	copy.page = [self.page copy];
	copy.pageSize = self.pageSize;
	copy.puid = [self.puid copy];
	copy.recommendNum = [self.recommendNum copy];
	copy.replies = [self.replies copy];
	copy.shareNum = self.shareNum;
	copy.tid = [self.tid copy];
	copy.title = [self.title copy];
	copy.url = [self.url copy];
	copy.userName = [self.userName copy];
	copy.videoInfo = [self.videoInfo copy];
	copy.videoPublish = self.videoPublish;
	copy.videoUrl = [self.videoUrl copy];

	return copy;
}
@end
