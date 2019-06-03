//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "PhotoCellModel.h"

NSString *const kPhotoCellModelAd = @"ad";
NSString *const kPhotoCellModelAdvId = @"advId";
NSString *const kPhotoCellModelAllCount = @"allCount";
NSString *const kPhotoCellModelAuthorPuid = @"authorPuid";
NSString *const kPhotoCellModelCanScoreSort = @"canScoreSort";
NSString *const kPhotoCellModelCheckReplyUrl = @"check_reply_url";
NSString *const kPhotoCellModelClient = @"client";
NSString *const kPhotoCellModelDefOrder = @"defOrder";
NSString *const kPhotoCellModelDomainList = @"domain_list";
NSString *const kPhotoCellModelFid = @"fid";
NSString *const kPhotoCellModelForumLogo = @"forum_logo";
NSString *const kPhotoCellModelForumName = @"forum_name";
NSString *const kPhotoCellModelIsrec = @"isrec";
NSString *const kPhotoCellModelJiangjiStatus = @"jiangji_status";
NSString *const kPhotoCellModelLights = @"lights";
NSString *const kPhotoCellModelNps = @"nps";
NSString *const kPhotoCellModelOfflinePhotoCell = @"offline_data";
NSString *const kPhotoCellModelPage = @"page";
NSString *const kPhotoCellModelPageSize = @"pageSize";
NSString *const kPhotoCellModelPuid = @"puid";
NSString *const kPhotoCellModelRecommendNum = @"recommend_num";
NSString *const kPhotoCellModelReplies = @"replies";
NSString *const kPhotoCellModelSharePhotoCell = @"share";
NSString *const kPhotoCellModelShareNum = @"share_num";
NSString *const kPhotoCellModelTid = @"tid";
NSString *const kPhotoCellModelTitle = @"title";
NSString *const kPhotoCellModelTopicPhotoCell = @"topic";
NSString *const kPhotoCellModelUrl = @"url";
NSString *const kPhotoCellModelUserName = @"userName";
NSString *const kPhotoCellModelVideoInfo = @"video_info";
NSString *const kPhotoCellModelVideoPublish = @"video_publish";
NSString *const kPhotoCellModelVideoUrl = @"video_url";

@interface PhotoCellModel ()
@end
@implementation PhotoCellModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kPhotoCellModelAd] isKindOfClass:[NSNull class]]){
		self.ad = [dictionary[kPhotoCellModelAd] integerValue];
	}

	if(![dictionary[kPhotoCellModelAdvId] isKindOfClass:[NSNull class]]){
		self.advId = dictionary[kPhotoCellModelAdvId];
	}	
	if(![dictionary[kPhotoCellModelAllCount] isKindOfClass:[NSNull class]]){
		self.allCount = [dictionary[kPhotoCellModelAllCount] integerValue];
	}

	if(![dictionary[kPhotoCellModelAuthorPuid] isKindOfClass:[NSNull class]]){
		self.authorPuid = dictionary[kPhotoCellModelAuthorPuid];
	}	
	if(![dictionary[kPhotoCellModelCanScoreSort] isKindOfClass:[NSNull class]]){
		self.canScoreSort = [dictionary[kPhotoCellModelCanScoreSort] integerValue];
	}

	if(![dictionary[kPhotoCellModelCheckReplyUrl] isKindOfClass:[NSNull class]]){
		self.checkReplyUrl = dictionary[kPhotoCellModelCheckReplyUrl];
	}	
	if(![dictionary[kPhotoCellModelClient] isKindOfClass:[NSNull class]]){
		self.client = dictionary[kPhotoCellModelClient];
	}	
	if(![dictionary[kPhotoCellModelDefOrder] isKindOfClass:[NSNull class]]){
		self.defOrder = dictionary[kPhotoCellModelDefOrder];
	}	
	if(![dictionary[kPhotoCellModelDomainList] isKindOfClass:[NSNull class]]){
		self.domainList = dictionary[kPhotoCellModelDomainList];
	}	
	if(![dictionary[kPhotoCellModelFid] isKindOfClass:[NSNull class]]){
		self.fid = dictionary[kPhotoCellModelFid];
	}	
	if(![dictionary[kPhotoCellModelForumLogo] isKindOfClass:[NSNull class]]){
		self.forumLogo = dictionary[kPhotoCellModelForumLogo];
	}	
	if(![dictionary[kPhotoCellModelForumName] isKindOfClass:[NSNull class]]){
		self.forumName = dictionary[kPhotoCellModelForumName];
	}	
	if(![dictionary[kPhotoCellModelIsrec] isKindOfClass:[NSNull class]]){
		self.isrec = dictionary[kPhotoCellModelIsrec];
	}	
	if(![dictionary[kPhotoCellModelJiangjiStatus] isKindOfClass:[NSNull class]]){
		self.jiangjiStatus = [dictionary[kPhotoCellModelJiangjiStatus] integerValue];
	}

	if(![dictionary[kPhotoCellModelLights] isKindOfClass:[NSNull class]]){
		self.lights = [dictionary[kPhotoCellModelLights] integerValue];
	}

	if(![dictionary[kPhotoCellModelNps] isKindOfClass:[NSNull class]]){
		self.nps = dictionary[kPhotoCellModelNps];
	}	
	if(![dictionary[kPhotoCellModelOfflinePhotoCell] isKindOfClass:[NSNull class]]){
		self.offlinePhotoCell = [[OfflinePhotoCell alloc] initWithDictionary:dictionary[kPhotoCellModelOfflinePhotoCell]];
	}

	if(![dictionary[kPhotoCellModelPage] isKindOfClass:[NSNull class]]){
		self.page = dictionary[kPhotoCellModelPage];
	}	
	if(![dictionary[kPhotoCellModelPageSize] isKindOfClass:[NSNull class]]){
		self.pageSize = [dictionary[kPhotoCellModelPageSize] integerValue];
	}

	if(![dictionary[kPhotoCellModelPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kPhotoCellModelPuid];
	}	
	if(![dictionary[kPhotoCellModelRecommendNum] isKindOfClass:[NSNull class]]){
		self.recommendNum = dictionary[kPhotoCellModelRecommendNum];
	}	
	if(![dictionary[kPhotoCellModelReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kPhotoCellModelReplies];
	}	
	if(![dictionary[kPhotoCellModelSharePhotoCell] isKindOfClass:[NSNull class]]){
		self.sharePhotoCell = [[SharePhotoCell alloc] initWithDictionary:dictionary[kPhotoCellModelSharePhotoCell]];
	}

	if(![dictionary[kPhotoCellModelShareNum] isKindOfClass:[NSNull class]]){
		self.shareNum = [dictionary[kPhotoCellModelShareNum] integerValue];
	}

	if(![dictionary[kPhotoCellModelTid] isKindOfClass:[NSNull class]]){
		self.tid = dictionary[kPhotoCellModelTid];
	}	
	if(![dictionary[kPhotoCellModelTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kPhotoCellModelTitle];
	}	
	if(![dictionary[kPhotoCellModelTopicPhotoCell] isKindOfClass:[NSNull class]]){
		self.topicPhotoCell = [[TopicPhotoCell alloc] initWithDictionary:dictionary[kPhotoCellModelTopicPhotoCell]];
	}

	if(![dictionary[kPhotoCellModelUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kPhotoCellModelUrl];
	}	
	if(![dictionary[kPhotoCellModelUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kPhotoCellModelUserName];
	}	
	if(![dictionary[kPhotoCellModelVideoInfo] isKindOfClass:[NSNull class]]){
		self.videoInfo = dictionary[kPhotoCellModelVideoInfo];
	}	
	if(![dictionary[kPhotoCellModelVideoPublish] isKindOfClass:[NSNull class]]){
		self.videoPublish = [dictionary[kPhotoCellModelVideoPublish] integerValue];
	}

	if(![dictionary[kPhotoCellModelVideoUrl] isKindOfClass:[NSNull class]]){
		self.videoUrl = dictionary[kPhotoCellModelVideoUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kPhotoCellModelAd] = @(self.ad);
	if(self.advId != nil){
		dictionary[kPhotoCellModelAdvId] = self.advId;
	}
	dictionary[kPhotoCellModelAllCount] = @(self.allCount);
	if(self.authorPuid != nil){
		dictionary[kPhotoCellModelAuthorPuid] = self.authorPuid;
	}
	dictionary[kPhotoCellModelCanScoreSort] = @(self.canScoreSort);
	if(self.checkReplyUrl != nil){
		dictionary[kPhotoCellModelCheckReplyUrl] = self.checkReplyUrl;
	}
	if(self.client != nil){
		dictionary[kPhotoCellModelClient] = self.client;
	}
	if(self.defOrder != nil){
		dictionary[kPhotoCellModelDefOrder] = self.defOrder;
	}
	if(self.domainList != nil){
		dictionary[kPhotoCellModelDomainList] = self.domainList;
	}
	if(self.fid != nil){
		dictionary[kPhotoCellModelFid] = self.fid;
	}
	if(self.forumLogo != nil){
		dictionary[kPhotoCellModelForumLogo] = self.forumLogo;
	}
	if(self.forumName != nil){
		dictionary[kPhotoCellModelForumName] = self.forumName;
	}
	if(self.isrec != nil){
		dictionary[kPhotoCellModelIsrec] = self.isrec;
	}
	dictionary[kPhotoCellModelJiangjiStatus] = @(self.jiangjiStatus);
	dictionary[kPhotoCellModelLights] = @(self.lights);
	if(self.nps != nil){
		dictionary[kPhotoCellModelNps] = self.nps;
	}
	if(self.offlinePhotoCell != nil){
		dictionary[kPhotoCellModelOfflinePhotoCell] = [self.offlinePhotoCell toDictionary];
	}
	if(self.page != nil){
		dictionary[kPhotoCellModelPage] = self.page;
	}
	dictionary[kPhotoCellModelPageSize] = @(self.pageSize);
	if(self.puid != nil){
		dictionary[kPhotoCellModelPuid] = self.puid;
	}
	if(self.recommendNum != nil){
		dictionary[kPhotoCellModelRecommendNum] = self.recommendNum;
	}
	if(self.replies != nil){
		dictionary[kPhotoCellModelReplies] = self.replies;
	}
	if(self.sharePhotoCell != nil){
		dictionary[kPhotoCellModelSharePhotoCell] = [self.sharePhotoCell toDictionary];
	}
	dictionary[kPhotoCellModelShareNum] = @(self.shareNum);
	if(self.tid != nil){
		dictionary[kPhotoCellModelTid] = self.tid;
	}
	if(self.title != nil){
		dictionary[kPhotoCellModelTitle] = self.title;
	}
	if(self.topicPhotoCell != nil){
		dictionary[kPhotoCellModelTopicPhotoCell] = [self.topicPhotoCell toDictionary];
	}
	if(self.url != nil){
		dictionary[kPhotoCellModelUrl] = self.url;
	}
	if(self.userName != nil){
		dictionary[kPhotoCellModelUserName] = self.userName;
	}
	if(self.videoInfo != nil){
		dictionary[kPhotoCellModelVideoInfo] = self.videoInfo;
	}
	dictionary[kPhotoCellModelVideoPublish] = @(self.videoPublish);
	if(self.videoUrl != nil){
		dictionary[kPhotoCellModelVideoUrl] = self.videoUrl;
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
	[aCoder encodeObject:@(self.ad) forKey:kPhotoCellModelAd];	if(self.advId != nil){
		[aCoder encodeObject:self.advId forKey:kPhotoCellModelAdvId];
	}
	[aCoder encodeObject:@(self.allCount) forKey:kPhotoCellModelAllCount];	if(self.authorPuid != nil){
		[aCoder encodeObject:self.authorPuid forKey:kPhotoCellModelAuthorPuid];
	}
	[aCoder encodeObject:@(self.canScoreSort) forKey:kPhotoCellModelCanScoreSort];	if(self.checkReplyUrl != nil){
		[aCoder encodeObject:self.checkReplyUrl forKey:kPhotoCellModelCheckReplyUrl];
	}
	if(self.client != nil){
		[aCoder encodeObject:self.client forKey:kPhotoCellModelClient];
	}
	if(self.defOrder != nil){
		[aCoder encodeObject:self.defOrder forKey:kPhotoCellModelDefOrder];
	}
	if(self.domainList != nil){
		[aCoder encodeObject:self.domainList forKey:kPhotoCellModelDomainList];
	}
	if(self.fid != nil){
		[aCoder encodeObject:self.fid forKey:kPhotoCellModelFid];
	}
	if(self.forumLogo != nil){
		[aCoder encodeObject:self.forumLogo forKey:kPhotoCellModelForumLogo];
	}
	if(self.forumName != nil){
		[aCoder encodeObject:self.forumName forKey:kPhotoCellModelForumName];
	}
	if(self.isrec != nil){
		[aCoder encodeObject:self.isrec forKey:kPhotoCellModelIsrec];
	}
	[aCoder encodeObject:@(self.jiangjiStatus) forKey:kPhotoCellModelJiangjiStatus];	[aCoder encodeObject:@(self.lights) forKey:kPhotoCellModelLights];	if(self.nps != nil){
		[aCoder encodeObject:self.nps forKey:kPhotoCellModelNps];
	}
	if(self.offlinePhotoCell != nil){
		[aCoder encodeObject:self.offlinePhotoCell forKey:kPhotoCellModelOfflinePhotoCell];
	}
	if(self.page != nil){
		[aCoder encodeObject:self.page forKey:kPhotoCellModelPage];
	}
	[aCoder encodeObject:@(self.pageSize) forKey:kPhotoCellModelPageSize];	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kPhotoCellModelPuid];
	}
	if(self.recommendNum != nil){
		[aCoder encodeObject:self.recommendNum forKey:kPhotoCellModelRecommendNum];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kPhotoCellModelReplies];
	}
	if(self.sharePhotoCell != nil){
		[aCoder encodeObject:self.sharePhotoCell forKey:kPhotoCellModelSharePhotoCell];
	}
	[aCoder encodeObject:@(self.shareNum) forKey:kPhotoCellModelShareNum];	if(self.tid != nil){
		[aCoder encodeObject:self.tid forKey:kPhotoCellModelTid];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kPhotoCellModelTitle];
	}
	if(self.topicPhotoCell != nil){
		[aCoder encodeObject:self.topicPhotoCell forKey:kPhotoCellModelTopicPhotoCell];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kPhotoCellModelUrl];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kPhotoCellModelUserName];
	}
	if(self.videoInfo != nil){
		[aCoder encodeObject:self.videoInfo forKey:kPhotoCellModelVideoInfo];
	}
	[aCoder encodeObject:@(self.videoPublish) forKey:kPhotoCellModelVideoPublish];	if(self.videoUrl != nil){
		[aCoder encodeObject:self.videoUrl forKey:kPhotoCellModelVideoUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.ad = [[aDecoder decodeObjectForKey:kPhotoCellModelAd] integerValue];
	self.advId = [aDecoder decodeObjectForKey:kPhotoCellModelAdvId];
	self.allCount = [[aDecoder decodeObjectForKey:kPhotoCellModelAllCount] integerValue];
	self.authorPuid = [aDecoder decodeObjectForKey:kPhotoCellModelAuthorPuid];
	self.canScoreSort = [[aDecoder decodeObjectForKey:kPhotoCellModelCanScoreSort] integerValue];
	self.checkReplyUrl = [aDecoder decodeObjectForKey:kPhotoCellModelCheckReplyUrl];
	self.client = [aDecoder decodeObjectForKey:kPhotoCellModelClient];
	self.defOrder = [aDecoder decodeObjectForKey:kPhotoCellModelDefOrder];
	self.domainList = [aDecoder decodeObjectForKey:kPhotoCellModelDomainList];
	self.fid = [aDecoder decodeObjectForKey:kPhotoCellModelFid];
	self.forumLogo = [aDecoder decodeObjectForKey:kPhotoCellModelForumLogo];
	self.forumName = [aDecoder decodeObjectForKey:kPhotoCellModelForumName];
	self.isrec = [aDecoder decodeObjectForKey:kPhotoCellModelIsrec];
	self.jiangjiStatus = [[aDecoder decodeObjectForKey:kPhotoCellModelJiangjiStatus] integerValue];
	self.lights = [[aDecoder decodeObjectForKey:kPhotoCellModelLights] integerValue];
	self.nps = [aDecoder decodeObjectForKey:kPhotoCellModelNps];
	self.offlinePhotoCell = [aDecoder decodeObjectForKey:kPhotoCellModelOfflinePhotoCell];
	self.page = [aDecoder decodeObjectForKey:kPhotoCellModelPage];
	self.pageSize = [[aDecoder decodeObjectForKey:kPhotoCellModelPageSize] integerValue];
	self.puid = [aDecoder decodeObjectForKey:kPhotoCellModelPuid];
	self.recommendNum = [aDecoder decodeObjectForKey:kPhotoCellModelRecommendNum];
	self.replies = [aDecoder decodeObjectForKey:kPhotoCellModelReplies];
	self.sharePhotoCell = [aDecoder decodeObjectForKey:kPhotoCellModelSharePhotoCell];
	self.shareNum = [[aDecoder decodeObjectForKey:kPhotoCellModelShareNum] integerValue];
	self.tid = [aDecoder decodeObjectForKey:kPhotoCellModelTid];
	self.title = [aDecoder decodeObjectForKey:kPhotoCellModelTitle];
	self.topicPhotoCell = [aDecoder decodeObjectForKey:kPhotoCellModelTopicPhotoCell];
	self.url = [aDecoder decodeObjectForKey:kPhotoCellModelUrl];
	self.userName = [aDecoder decodeObjectForKey:kPhotoCellModelUserName];
	self.videoInfo = [aDecoder decodeObjectForKey:kPhotoCellModelVideoInfo];
	self.videoPublish = [[aDecoder decodeObjectForKey:kPhotoCellModelVideoPublish] integerValue];
	self.videoUrl = [aDecoder decodeObjectForKey:kPhotoCellModelVideoUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	PhotoCellModel *copy = [PhotoCellModel new];

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
	copy.offlinePhotoCell = [self.offlinePhotoCell copy];
	copy.page = [self.page copy];
	copy.pageSize = self.pageSize;
	copy.puid = [self.puid copy];
	copy.recommendNum = [self.recommendNum copy];
	copy.replies = [self.replies copy];
	copy.sharePhotoCell = [self.sharePhotoCell copy];
	copy.shareNum = self.shareNum;
	copy.tid = [self.tid copy];
	copy.title = [self.title copy];
	copy.topicPhotoCell = [self.topicPhotoCell copy];
	copy.url = [self.url copy];
	copy.userName = [self.userName copy];
	copy.videoInfo = [self.videoInfo copy];
	copy.videoPublish = self.videoPublish;
	copy.videoUrl = [self.videoUrl copy];

	return copy;
}
@end
