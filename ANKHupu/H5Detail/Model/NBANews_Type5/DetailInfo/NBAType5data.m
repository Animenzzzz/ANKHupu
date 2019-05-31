//
//	NBAType5data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAType5data.h"

NSString *const kNBAType5dataNBAType5forum = @"forum";
NSString *const kNBAType5dataNBAType5praise = @"praise";
NSString *const kNBAType5dataNBAType5topic = @"topic";
NSString *const kNBAType5dataAd = @"ad";
NSString *const kNBAType5dataAllPage = @"allPage";
NSString *const kNBAType5dataAuthorPuid = @"author_puid";
NSString *const kNBAType5dataBottomAd = @"bottom_ad";
NSString *const kNBAType5dataCheckReplyUrl = @"check_reply_url";
NSString *const kNBAType5dataContent = @"content";
NSString *const kNBAType5dataCreateTime = @"create_time";
NSString *const kNBAType5dataDefOrder = @"defOrder";
NSString *const kNBAType5dataDigest = @"digest";
NSString *const kNBAType5dataFVideo = @"f_video";
NSString *const kNBAType5dataFid = @"fid";
NSString *const kNBAType5dataGroupid = @"groupid";
NSString *const kNBAType5dataHits = @"hits";
NSString *const kNBAType5dataIsRegularized = @"isRegularized";
NSString *const kNBAType5dataIsLock = @"is_lock";
NSString *const kNBAType5dataIsLogin = @"is_login";
NSString *const kNBAType5dataIsRecommendFilter = @"is_recommend_filter";
NSString *const kNBAType5dataIsrec = @"isrec";
NSString *const kNBAType5dataJfbStyle = @"jfb_style";
NSString *const kNBAType5dataJiangjiStatus = @"jiangji_status";
NSString *const kNBAType5dataLastpostTime = @"lastpost_time";
NSString *const kNBAType5dataLights = @"lights";
NSString *const kNBAType5dataMergeTitle = @"merge_title";
NSString *const kNBAType5dataNopic = @"nopic";
NSString *const kNBAType5dataNps = @"nps";
NSString *const kNBAType5dataPage = @"page";
NSString *const kNBAType5dataPid = @"pid";
NSString *const kNBAType5dataPostAuthorPuid = @"postAuthorPuid";
NSString *const kNBAType5dataPuid = @"puid";
NSString *const kNBAType5dataRecommendNum = @"recommend_num";
NSString *const kNBAType5dataReplies = @"replies";
NSString *const kNBAType5dataShareNum = @"share_num";
NSString *const kNBAType5dataShareStyle = @"share_style";
NSString *const kNBAType5dataShowPostPraise = @"show_post_praise";
NSString *const kNBAType5dataTid = @"tid";
NSString *const kNBAType5dataTime = @"time";
NSString *const kNBAType5dataTitle = @"title";
NSString *const kNBAType5dataTopicId = @"topic_id";
NSString *const kNBAType5dataTotalPage = @"totalPage";
NSString *const kNBAType5dataUpdateInfo = @"update_info";
NSString *const kNBAType5dataUserImg = @"userImg";
NSString *const kNBAType5dataUserBanned = @"user_banned";
NSString *const kNBAType5dataUsername = @"username";
NSString *const kNBAType5dataVia = @"via";
NSString *const kNBAType5dataVideoInfo = @"video_info";
NSString *const kNBAType5dataVisits = @"visits";

@interface NBAType5data ()
@end
@implementation NBAType5data




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBAType5dataNBAType5forum] isKindOfClass:[NSNull class]]){
		self.nBAType5forum = [[NBAType5forum alloc] initWithDictionary:dictionary[kNBAType5dataNBAType5forum]];
	}

	if(![dictionary[kNBAType5dataNBAType5praise] isKindOfClass:[NSNull class]]){
		self.nBAType5praise = [[NBAType5praise alloc] initWithDictionary:dictionary[kNBAType5dataNBAType5praise]];
	}

	if(![dictionary[kNBAType5dataNBAType5topic] isKindOfClass:[NSNull class]]){
		self.nBAType5topic = [[NBAType5topic alloc] initWithDictionary:dictionary[kNBAType5dataNBAType5topic]];
	}

	if(![dictionary[kNBAType5dataAd] isKindOfClass:[NSNull class]]){
		self.ad = [dictionary[kNBAType5dataAd] integerValue];
	}

	if(![dictionary[kNBAType5dataAllPage] isKindOfClass:[NSNull class]]){
		self.allPage = [dictionary[kNBAType5dataAllPage] integerValue];
	}

	if(![dictionary[kNBAType5dataAuthorPuid] isKindOfClass:[NSNull class]]){
		self.authorPuid = dictionary[kNBAType5dataAuthorPuid];
	}	
	if(![dictionary[kNBAType5dataBottomAd] isKindOfClass:[NSNull class]]){
		self.bottomAd = [[BottomAd alloc] initWithDictionary:dictionary[kNBAType5dataBottomAd]];
	}

	if(![dictionary[kNBAType5dataCheckReplyUrl] isKindOfClass:[NSNull class]]){
		self.checkReplyUrl = dictionary[kNBAType5dataCheckReplyUrl];
	}	
	if(![dictionary[kNBAType5dataContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kNBAType5dataContent];
	}	
	if(![dictionary[kNBAType5dataCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = [dictionary[kNBAType5dataCreateTime] integerValue];
	}

	if(![dictionary[kNBAType5dataDefOrder] isKindOfClass:[NSNull class]]){
		self.defOrder = dictionary[kNBAType5dataDefOrder];
	}	
	if(![dictionary[kNBAType5dataDigest] isKindOfClass:[NSNull class]]){
		self.digest = [dictionary[kNBAType5dataDigest] integerValue];
	}

	if(![dictionary[kNBAType5dataFVideo] isKindOfClass:[NSNull class]]){
		self.fVideo = [dictionary[kNBAType5dataFVideo] integerValue];
	}

	if(![dictionary[kNBAType5dataFid] isKindOfClass:[NSNull class]]){
		self.fid = dictionary[kNBAType5dataFid];
	}	
	if(![dictionary[kNBAType5dataGroupid] isKindOfClass:[NSNull class]]){
		self.groupid = dictionary[kNBAType5dataGroupid];
	}	
	if(![dictionary[kNBAType5dataHits] isKindOfClass:[NSNull class]]){
		self.hits = [dictionary[kNBAType5dataHits] integerValue];
	}

	if(![dictionary[kNBAType5dataIsRegularized] isKindOfClass:[NSNull class]]){
		self.isRegularized = [dictionary[kNBAType5dataIsRegularized] boolValue];
	}

	if(![dictionary[kNBAType5dataIsLock] isKindOfClass:[NSNull class]]){
		self.isLock = [dictionary[kNBAType5dataIsLock] integerValue];
	}

	if(![dictionary[kNBAType5dataIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kNBAType5dataIsLogin] integerValue];
	}

	if(![dictionary[kNBAType5dataIsRecommendFilter] isKindOfClass:[NSNull class]]){
		self.isRecommendFilter = [dictionary[kNBAType5dataIsRecommendFilter] integerValue];
	}

	if(![dictionary[kNBAType5dataIsrec] isKindOfClass:[NSNull class]]){
		self.isrec = dictionary[kNBAType5dataIsrec];
	}	
	if(![dictionary[kNBAType5dataJfbStyle] isKindOfClass:[NSNull class]]){
		self.jfbStyle = [dictionary[kNBAType5dataJfbStyle] integerValue];
	}

	if(![dictionary[kNBAType5dataJiangjiStatus] isKindOfClass:[NSNull class]]){
		self.jiangjiStatus = [dictionary[kNBAType5dataJiangjiStatus] integerValue];
	}

	if(![dictionary[kNBAType5dataLastpostTime] isKindOfClass:[NSNull class]]){
		self.lastpostTime = [dictionary[kNBAType5dataLastpostTime] integerValue];
	}

	if(![dictionary[kNBAType5dataLights] isKindOfClass:[NSNull class]]){
		self.lights = [dictionary[kNBAType5dataLights] integerValue];
	}

	if(![dictionary[kNBAType5dataMergeTitle] isKindOfClass:[NSNull class]]){
		self.mergeTitle = dictionary[kNBAType5dataMergeTitle];
	}	
	if(![dictionary[kNBAType5dataNopic] isKindOfClass:[NSNull class]]){
		self.nopic = [dictionary[kNBAType5dataNopic] integerValue];
	}

	if(![dictionary[kNBAType5dataNps] isKindOfClass:[NSNull class]]){
		self.nps = [dictionary[kNBAType5dataNps] integerValue];
	}

	if(![dictionary[kNBAType5dataPage] isKindOfClass:[NSNull class]]){
		self.page = dictionary[kNBAType5dataPage];
	}	
	if(![dictionary[kNBAType5dataPid] isKindOfClass:[NSNull class]]){
		self.pid = [dictionary[kNBAType5dataPid] integerValue];
	}

	if(![dictionary[kNBAType5dataPostAuthorPuid] isKindOfClass:[NSNull class]]){
		self.postAuthorPuid = [dictionary[kNBAType5dataPostAuthorPuid] integerValue];
	}

	if(![dictionary[kNBAType5dataPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kNBAType5dataPuid];
	}	
	if(![dictionary[kNBAType5dataRecommendNum] isKindOfClass:[NSNull class]]){
		self.recommendNum = dictionary[kNBAType5dataRecommendNum];
	}	
	if(![dictionary[kNBAType5dataReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kNBAType5dataReplies];
	}	
	if(![dictionary[kNBAType5dataShareNum] isKindOfClass:[NSNull class]]){
		self.shareNum = [dictionary[kNBAType5dataShareNum] integerValue];
	}

	if(![dictionary[kNBAType5dataShareStyle] isKindOfClass:[NSNull class]]){
		self.shareStyle = [dictionary[kNBAType5dataShareStyle] integerValue];
	}

	if(![dictionary[kNBAType5dataShowPostPraise] isKindOfClass:[NSNull class]]){
		self.showPostPraise = [dictionary[kNBAType5dataShowPostPraise] integerValue];
	}

	if(![dictionary[kNBAType5dataTid] isKindOfClass:[NSNull class]]){
		self.tid = dictionary[kNBAType5dataTid];
	}	
	if(![dictionary[kNBAType5dataTime] isKindOfClass:[NSNull class]]){
		self.time = dictionary[kNBAType5dataTime];
	}	
	if(![dictionary[kNBAType5dataTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kNBAType5dataTitle];
	}	
	if(![dictionary[kNBAType5dataTopicId] isKindOfClass:[NSNull class]]){
		self.topicId = [dictionary[kNBAType5dataTopicId] integerValue];
	}

	if(![dictionary[kNBAType5dataTotalPage] isKindOfClass:[NSNull class]]){
		self.totalPage = [dictionary[kNBAType5dataTotalPage] integerValue];
	}

	if(![dictionary[kNBAType5dataUpdateInfo] isKindOfClass:[NSNull class]]){
		self.updateInfo = dictionary[kNBAType5dataUpdateInfo];
	}	
	if(![dictionary[kNBAType5dataUserImg] isKindOfClass:[NSNull class]]){
		self.userImg = dictionary[kNBAType5dataUserImg];
	}	
	if(![dictionary[kNBAType5dataUserBanned] isKindOfClass:[NSNull class]]){
		self.userBanned = [dictionary[kNBAType5dataUserBanned] integerValue];
	}

	if(![dictionary[kNBAType5dataUsername] isKindOfClass:[NSNull class]]){
		self.username = dictionary[kNBAType5dataUsername];
	}	
	if(![dictionary[kNBAType5dataVia] isKindOfClass:[NSNull class]]){
		self.via = dictionary[kNBAType5dataVia];
	}	
	if(![dictionary[kNBAType5dataVideoInfo] isKindOfClass:[NSNull class]]){
		self.videoInfo = dictionary[kNBAType5dataVideoInfo];
	}	
	if(![dictionary[kNBAType5dataVisits] isKindOfClass:[NSNull class]]){
		self.visits = dictionary[kNBAType5dataVisits];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.nBAType5forum != nil){
		dictionary[kNBAType5dataNBAType5forum] = [self.nBAType5forum toDictionary];
	}
	if(self.nBAType5praise != nil){
		dictionary[kNBAType5dataNBAType5praise] = [self.nBAType5praise toDictionary];
	}
	if(self.nBAType5topic != nil){
		dictionary[kNBAType5dataNBAType5topic] = [self.nBAType5topic toDictionary];
	}
	dictionary[kNBAType5dataAd] = @(self.ad);
	dictionary[kNBAType5dataAllPage] = @(self.allPage);
	if(self.authorPuid != nil){
		dictionary[kNBAType5dataAuthorPuid] = self.authorPuid;
	}
	if(self.bottomAd != nil){
		dictionary[kNBAType5dataBottomAd] = [self.bottomAd toDictionary];
	}
	if(self.checkReplyUrl != nil){
		dictionary[kNBAType5dataCheckReplyUrl] = self.checkReplyUrl;
	}
	if(self.content != nil){
		dictionary[kNBAType5dataContent] = self.content;
	}
	dictionary[kNBAType5dataCreateTime] = @(self.createTime);
	if(self.defOrder != nil){
		dictionary[kNBAType5dataDefOrder] = self.defOrder;
	}
	dictionary[kNBAType5dataDigest] = @(self.digest);
	dictionary[kNBAType5dataFVideo] = @(self.fVideo);
	if(self.fid != nil){
		dictionary[kNBAType5dataFid] = self.fid;
	}
	if(self.groupid != nil){
		dictionary[kNBAType5dataGroupid] = self.groupid;
	}
	dictionary[kNBAType5dataHits] = @(self.hits);
	dictionary[kNBAType5dataIsRegularized] = @(self.isRegularized);
	dictionary[kNBAType5dataIsLock] = @(self.isLock);
	dictionary[kNBAType5dataIsLogin] = @(self.isLogin);
	dictionary[kNBAType5dataIsRecommendFilter] = @(self.isRecommendFilter);
	if(self.isrec != nil){
		dictionary[kNBAType5dataIsrec] = self.isrec;
	}
	dictionary[kNBAType5dataJfbStyle] = @(self.jfbStyle);
	dictionary[kNBAType5dataJiangjiStatus] = @(self.jiangjiStatus);
	dictionary[kNBAType5dataLastpostTime] = @(self.lastpostTime);
	dictionary[kNBAType5dataLights] = @(self.lights);
	if(self.mergeTitle != nil){
		dictionary[kNBAType5dataMergeTitle] = self.mergeTitle;
	}
	dictionary[kNBAType5dataNopic] = @(self.nopic);
	dictionary[kNBAType5dataNps] = @(self.nps);
	if(self.page != nil){
		dictionary[kNBAType5dataPage] = self.page;
	}
	dictionary[kNBAType5dataPid] = @(self.pid);
	dictionary[kNBAType5dataPostAuthorPuid] = @(self.postAuthorPuid);
	if(self.puid != nil){
		dictionary[kNBAType5dataPuid] = self.puid;
	}
	if(self.recommendNum != nil){
		dictionary[kNBAType5dataRecommendNum] = self.recommendNum;
	}
	if(self.replies != nil){
		dictionary[kNBAType5dataReplies] = self.replies;
	}
	dictionary[kNBAType5dataShareNum] = @(self.shareNum);
	dictionary[kNBAType5dataShareStyle] = @(self.shareStyle);
	dictionary[kNBAType5dataShowPostPraise] = @(self.showPostPraise);
	if(self.tid != nil){
		dictionary[kNBAType5dataTid] = self.tid;
	}
	if(self.time != nil){
		dictionary[kNBAType5dataTime] = self.time;
	}
	if(self.title != nil){
		dictionary[kNBAType5dataTitle] = self.title;
	}
	dictionary[kNBAType5dataTopicId] = @(self.topicId);
	dictionary[kNBAType5dataTotalPage] = @(self.totalPage);
	if(self.updateInfo != nil){
		dictionary[kNBAType5dataUpdateInfo] = self.updateInfo;
	}
	if(self.userImg != nil){
		dictionary[kNBAType5dataUserImg] = self.userImg;
	}
	dictionary[kNBAType5dataUserBanned] = @(self.userBanned);
	if(self.username != nil){
		dictionary[kNBAType5dataUsername] = self.username;
	}
	if(self.via != nil){
		dictionary[kNBAType5dataVia] = self.via;
	}
	if(self.videoInfo != nil){
		dictionary[kNBAType5dataVideoInfo] = self.videoInfo;
	}
	if(self.visits != nil){
		dictionary[kNBAType5dataVisits] = self.visits;
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
	if(self.nBAType5forum != nil){
		[aCoder encodeObject:self.nBAType5forum forKey:kNBAType5dataNBAType5forum];
	}
	if(self.nBAType5praise != nil){
		[aCoder encodeObject:self.nBAType5praise forKey:kNBAType5dataNBAType5praise];
	}
	if(self.nBAType5topic != nil){
		[aCoder encodeObject:self.nBAType5topic forKey:kNBAType5dataNBAType5topic];
	}
	[aCoder encodeObject:@(self.ad) forKey:kNBAType5dataAd];	[aCoder encodeObject:@(self.allPage) forKey:kNBAType5dataAllPage];	if(self.authorPuid != nil){
		[aCoder encodeObject:self.authorPuid forKey:kNBAType5dataAuthorPuid];
	}
	if(self.bottomAd != nil){
		[aCoder encodeObject:self.bottomAd forKey:kNBAType5dataBottomAd];
	}
	if(self.checkReplyUrl != nil){
		[aCoder encodeObject:self.checkReplyUrl forKey:kNBAType5dataCheckReplyUrl];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kNBAType5dataContent];
	}
	[aCoder encodeObject:@(self.createTime) forKey:kNBAType5dataCreateTime];	if(self.defOrder != nil){
		[aCoder encodeObject:self.defOrder forKey:kNBAType5dataDefOrder];
	}
	[aCoder encodeObject:@(self.digest) forKey:kNBAType5dataDigest];	[aCoder encodeObject:@(self.fVideo) forKey:kNBAType5dataFVideo];	if(self.fid != nil){
		[aCoder encodeObject:self.fid forKey:kNBAType5dataFid];
	}
	if(self.groupid != nil){
		[aCoder encodeObject:self.groupid forKey:kNBAType5dataGroupid];
	}
	[aCoder encodeObject:@(self.hits) forKey:kNBAType5dataHits];	[aCoder encodeObject:@(self.isRegularized) forKey:kNBAType5dataIsRegularized];	[aCoder encodeObject:@(self.isLock) forKey:kNBAType5dataIsLock];	[aCoder encodeObject:@(self.isLogin) forKey:kNBAType5dataIsLogin];	[aCoder encodeObject:@(self.isRecommendFilter) forKey:kNBAType5dataIsRecommendFilter];	if(self.isrec != nil){
		[aCoder encodeObject:self.isrec forKey:kNBAType5dataIsrec];
	}
	[aCoder encodeObject:@(self.jfbStyle) forKey:kNBAType5dataJfbStyle];	[aCoder encodeObject:@(self.jiangjiStatus) forKey:kNBAType5dataJiangjiStatus];	[aCoder encodeObject:@(self.lastpostTime) forKey:kNBAType5dataLastpostTime];	[aCoder encodeObject:@(self.lights) forKey:kNBAType5dataLights];	if(self.mergeTitle != nil){
		[aCoder encodeObject:self.mergeTitle forKey:kNBAType5dataMergeTitle];
	}
	[aCoder encodeObject:@(self.nopic) forKey:kNBAType5dataNopic];	[aCoder encodeObject:@(self.nps) forKey:kNBAType5dataNps];	if(self.page != nil){
		[aCoder encodeObject:self.page forKey:kNBAType5dataPage];
	}
	[aCoder encodeObject:@(self.pid) forKey:kNBAType5dataPid];	[aCoder encodeObject:@(self.postAuthorPuid) forKey:kNBAType5dataPostAuthorPuid];	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kNBAType5dataPuid];
	}
	if(self.recommendNum != nil){
		[aCoder encodeObject:self.recommendNum forKey:kNBAType5dataRecommendNum];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kNBAType5dataReplies];
	}
	[aCoder encodeObject:@(self.shareNum) forKey:kNBAType5dataShareNum];	[aCoder encodeObject:@(self.shareStyle) forKey:kNBAType5dataShareStyle];	[aCoder encodeObject:@(self.showPostPraise) forKey:kNBAType5dataShowPostPraise];	if(self.tid != nil){
		[aCoder encodeObject:self.tid forKey:kNBAType5dataTid];
	}
	if(self.time != nil){
		[aCoder encodeObject:self.time forKey:kNBAType5dataTime];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kNBAType5dataTitle];
	}
	[aCoder encodeObject:@(self.topicId) forKey:kNBAType5dataTopicId];	[aCoder encodeObject:@(self.totalPage) forKey:kNBAType5dataTotalPage];	if(self.updateInfo != nil){
		[aCoder encodeObject:self.updateInfo forKey:kNBAType5dataUpdateInfo];
	}
	if(self.userImg != nil){
		[aCoder encodeObject:self.userImg forKey:kNBAType5dataUserImg];
	}
	[aCoder encodeObject:@(self.userBanned) forKey:kNBAType5dataUserBanned];	if(self.username != nil){
		[aCoder encodeObject:self.username forKey:kNBAType5dataUsername];
	}
	if(self.via != nil){
		[aCoder encodeObject:self.via forKey:kNBAType5dataVia];
	}
	if(self.videoInfo != nil){
		[aCoder encodeObject:self.videoInfo forKey:kNBAType5dataVideoInfo];
	}
	if(self.visits != nil){
		[aCoder encodeObject:self.visits forKey:kNBAType5dataVisits];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.nBAType5forum = [aDecoder decodeObjectForKey:kNBAType5dataNBAType5forum];
	self.nBAType5praise = [aDecoder decodeObjectForKey:kNBAType5dataNBAType5praise];
	self.nBAType5topic = [aDecoder decodeObjectForKey:kNBAType5dataNBAType5topic];
	self.ad = [[aDecoder decodeObjectForKey:kNBAType5dataAd] integerValue];
	self.allPage = [[aDecoder decodeObjectForKey:kNBAType5dataAllPage] integerValue];
	self.authorPuid = [aDecoder decodeObjectForKey:kNBAType5dataAuthorPuid];
	self.bottomAd = [aDecoder decodeObjectForKey:kNBAType5dataBottomAd];
	self.checkReplyUrl = [aDecoder decodeObjectForKey:kNBAType5dataCheckReplyUrl];
	self.content = [aDecoder decodeObjectForKey:kNBAType5dataContent];
	self.createTime = [[aDecoder decodeObjectForKey:kNBAType5dataCreateTime] integerValue];
	self.defOrder = [aDecoder decodeObjectForKey:kNBAType5dataDefOrder];
	self.digest = [[aDecoder decodeObjectForKey:kNBAType5dataDigest] integerValue];
	self.fVideo = [[aDecoder decodeObjectForKey:kNBAType5dataFVideo] integerValue];
	self.fid = [aDecoder decodeObjectForKey:kNBAType5dataFid];
	self.groupid = [aDecoder decodeObjectForKey:kNBAType5dataGroupid];
	self.hits = [[aDecoder decodeObjectForKey:kNBAType5dataHits] integerValue];
	self.isRegularized = [[aDecoder decodeObjectForKey:kNBAType5dataIsRegularized] boolValue];
	self.isLock = [[aDecoder decodeObjectForKey:kNBAType5dataIsLock] integerValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kNBAType5dataIsLogin] integerValue];
	self.isRecommendFilter = [[aDecoder decodeObjectForKey:kNBAType5dataIsRecommendFilter] integerValue];
	self.isrec = [aDecoder decodeObjectForKey:kNBAType5dataIsrec];
	self.jfbStyle = [[aDecoder decodeObjectForKey:kNBAType5dataJfbStyle] integerValue];
	self.jiangjiStatus = [[aDecoder decodeObjectForKey:kNBAType5dataJiangjiStatus] integerValue];
	self.lastpostTime = [[aDecoder decodeObjectForKey:kNBAType5dataLastpostTime] integerValue];
	self.lights = [[aDecoder decodeObjectForKey:kNBAType5dataLights] integerValue];
	self.mergeTitle = [aDecoder decodeObjectForKey:kNBAType5dataMergeTitle];
	self.nopic = [[aDecoder decodeObjectForKey:kNBAType5dataNopic] integerValue];
	self.nps = [[aDecoder decodeObjectForKey:kNBAType5dataNps] integerValue];
	self.page = [aDecoder decodeObjectForKey:kNBAType5dataPage];
	self.pid = [[aDecoder decodeObjectForKey:kNBAType5dataPid] integerValue];
	self.postAuthorPuid = [[aDecoder decodeObjectForKey:kNBAType5dataPostAuthorPuid] integerValue];
	self.puid = [aDecoder decodeObjectForKey:kNBAType5dataPuid];
	self.recommendNum = [aDecoder decodeObjectForKey:kNBAType5dataRecommendNum];
	self.replies = [aDecoder decodeObjectForKey:kNBAType5dataReplies];
	self.shareNum = [[aDecoder decodeObjectForKey:kNBAType5dataShareNum] integerValue];
	self.shareStyle = [[aDecoder decodeObjectForKey:kNBAType5dataShareStyle] integerValue];
	self.showPostPraise = [[aDecoder decodeObjectForKey:kNBAType5dataShowPostPraise] integerValue];
	self.tid = [aDecoder decodeObjectForKey:kNBAType5dataTid];
	self.time = [aDecoder decodeObjectForKey:kNBAType5dataTime];
	self.title = [aDecoder decodeObjectForKey:kNBAType5dataTitle];
	self.topicId = [[aDecoder decodeObjectForKey:kNBAType5dataTopicId] integerValue];
	self.totalPage = [[aDecoder decodeObjectForKey:kNBAType5dataTotalPage] integerValue];
	self.updateInfo = [aDecoder decodeObjectForKey:kNBAType5dataUpdateInfo];
	self.userImg = [aDecoder decodeObjectForKey:kNBAType5dataUserImg];
	self.userBanned = [[aDecoder decodeObjectForKey:kNBAType5dataUserBanned] integerValue];
	self.username = [aDecoder decodeObjectForKey:kNBAType5dataUsername];
	self.via = [aDecoder decodeObjectForKey:kNBAType5dataVia];
	self.videoInfo = [aDecoder decodeObjectForKey:kNBAType5dataVideoInfo];
	self.visits = [aDecoder decodeObjectForKey:kNBAType5dataVisits];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAType5data *copy = [NBAType5data new];

	copy.nBAType5forum = [self.nBAType5forum copy];
	copy.nBAType5praise = [self.nBAType5praise copy];
	copy.nBAType5topic = [self.nBAType5topic copy];
	copy.ad = self.ad;
	copy.allPage = self.allPage;
	copy.authorPuid = [self.authorPuid copy];
	copy.bottomAd = [self.bottomAd copy];
	copy.checkReplyUrl = [self.checkReplyUrl copy];
	copy.content = [self.content copy];
	copy.createTime = self.createTime;
	copy.defOrder = [self.defOrder copy];
	copy.digest = self.digest;
	copy.fVideo = self.fVideo;
	copy.fid = [self.fid copy];
	copy.groupid = [self.groupid copy];
	copy.hits = self.hits;
	copy.isRegularized = self.isRegularized;
	copy.isLock = self.isLock;
	copy.isLogin = self.isLogin;
	copy.isRecommendFilter = self.isRecommendFilter;
	copy.isrec = [self.isrec copy];
	copy.jfbStyle = self.jfbStyle;
	copy.jiangjiStatus = self.jiangjiStatus;
	copy.lastpostTime = self.lastpostTime;
	copy.lights = self.lights;
	copy.mergeTitle = [self.mergeTitle copy];
	copy.nopic = self.nopic;
	copy.nps = self.nps;
	copy.page = [self.page copy];
	copy.pid = self.pid;
	copy.postAuthorPuid = self.postAuthorPuid;
	copy.puid = [self.puid copy];
	copy.recommendNum = [self.recommendNum copy];
	copy.replies = [self.replies copy];
	copy.shareNum = self.shareNum;
	copy.shareStyle = self.shareStyle;
	copy.showPostPraise = self.showPostPraise;
	copy.tid = [self.tid copy];
	copy.time = [self.time copy];
	copy.title = [self.title copy];
	copy.topicId = self.topicId;
	copy.totalPage = self.totalPage;
	copy.updateInfo = [self.updateInfo copy];
	copy.userImg = [self.userImg copy];
	copy.userBanned = self.userBanned;
	copy.username = [self.username copy];
	copy.via = [self.via copy];
	copy.videoInfo = [self.videoInfo copy];
	copy.visits = [self.visits copy];

	return copy;
}
@end
