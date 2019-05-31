//
//	DataPhotoCel.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "DataPhotoCel.h"

NSString *const kDataPhotoCelAd = @"ad";
NSString *const kDataPhotoCelAllPage = @"allPage";
NSString *const kDataPhotoCelAuthorPuid = @"author_puid";
NSString *const kDataPhotoCelBottomAd = @"bottom_ad";
NSString *const kDataPhotoCelCheckReplyUrl = @"check_reply_url";
NSString *const kDataPhotoCelContent = @"content";
NSString *const kDataPhotoCelCreateTime = @"create_time";
NSString *const kDataPhotoCelDefOrder = @"defOrder";
NSString *const kDataPhotoCelDigest = @"digest";
NSString *const kDataPhotoCelFVideo = @"f_video";
NSString *const kDataPhotoCelFid = @"fid";
NSString *const kDataPhotoCelForumPhotoCell = @"forum";
NSString *const kDataPhotoCelGroupid = @"groupid";
NSString *const kDataPhotoCelHits = @"hits";
NSString *const kDataPhotoCelIsRegularized = @"isRegularized";
NSString *const kDataPhotoCelIsLock = @"is_lock";
NSString *const kDataPhotoCelIsLogin = @"is_login";
NSString *const kDataPhotoCelIsRecommendFilter = @"is_recommend_filter";
NSString *const kDataPhotoCelIsrec = @"isrec";
NSString *const kDataPhotoCelJfbStyle = @"jfb_style";
NSString *const kDataPhotoCelJiangjiStatus = @"jiangji_status";
NSString *const kDataPhotoCelLastpostTime = @"lastpost_time";
NSString *const kDataPhotoCelLights = @"lights";
NSString *const kDataPhotoCelMergeTitle = @"merge_title";
NSString *const kDataPhotoCelNopic = @"nopic";
NSString *const kDataPhotoCelNps = @"nps";
NSString *const kDataPhotoCelPage = @"page";
NSString *const kDataPhotoCelPid = @"pid";
NSString *const kDataPhotoCelPostAuthorPuid = @"postAuthorPuid";
NSString *const kDataPhotoCelPraisePhotoCell = @"praise";
NSString *const kDataPhotoCelPuid = @"puid";
NSString *const kDataPhotoCelRecommendNum = @"recommend_num";
NSString *const kDataPhotoCelReplies = @"replies";
NSString *const kDataPhotoCelShareNum = @"share_num";
NSString *const kDataPhotoCelShareStyle = @"share_style";
NSString *const kDataPhotoCelShowPostPraise = @"show_post_praise";
NSString *const kDataPhotoCelTid = @"tid";
NSString *const kDataPhotoCelTime = @"time";
NSString *const kDataPhotoCelTitle = @"title";
NSString *const kDataPhotoCelTopicPhotoCell = @"topic";
NSString *const kDataPhotoCelTopicId = @"topic_id";
NSString *const kDataPhotoCelTotalPage = @"totalPage";
NSString *const kDataPhotoCelUpdateInfo = @"update_info";
NSString *const kDataPhotoCelUserImg = @"userImg";
NSString *const kDataPhotoCelUserBanned = @"user_banned";
NSString *const kDataPhotoCelUsername = @"username";
NSString *const kDataPhotoCelVia = @"via";
NSString *const kDataPhotoCelVideoInfo = @"video_info";
NSString *const kDataPhotoCelVisits = @"visits";

@interface DataPhotoCel ()
@end
@implementation DataPhotoCel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kDataPhotoCelAd] isKindOfClass:[NSNull class]]){
		self.ad = [dictionary[kDataPhotoCelAd] integerValue];
	}

	if(![dictionary[kDataPhotoCelAllPage] isKindOfClass:[NSNull class]]){
		self.allPage = [dictionary[kDataPhotoCelAllPage] integerValue];
	}

	if(![dictionary[kDataPhotoCelAuthorPuid] isKindOfClass:[NSNull class]]){
		self.authorPuid = dictionary[kDataPhotoCelAuthorPuid];
	}	
	if(![dictionary[kDataPhotoCelBottomAd] isKindOfClass:[NSNull class]]){
		self.bottomAd = [[BottomAd1 alloc] initWithDictionary:dictionary[kDataPhotoCelBottomAd]];
	}

	if(![dictionary[kDataPhotoCelCheckReplyUrl] isKindOfClass:[NSNull class]]){
		self.checkReplyUrl = dictionary[kDataPhotoCelCheckReplyUrl];
	}	
	if(![dictionary[kDataPhotoCelContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kDataPhotoCelContent];
	}	
	if(![dictionary[kDataPhotoCelCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = [dictionary[kDataPhotoCelCreateTime] integerValue];
	}

	if(![dictionary[kDataPhotoCelDefOrder] isKindOfClass:[NSNull class]]){
		self.defOrder = dictionary[kDataPhotoCelDefOrder];
	}	
	if(![dictionary[kDataPhotoCelDigest] isKindOfClass:[NSNull class]]){
		self.digest = [dictionary[kDataPhotoCelDigest] integerValue];
	}

	if(![dictionary[kDataPhotoCelFVideo] isKindOfClass:[NSNull class]]){
		self.fVideo = [dictionary[kDataPhotoCelFVideo] integerValue];
	}

	if(![dictionary[kDataPhotoCelFid] isKindOfClass:[NSNull class]]){
		self.fid = dictionary[kDataPhotoCelFid];
	}	
	if(![dictionary[kDataPhotoCelForumPhotoCell] isKindOfClass:[NSNull class]]){
		self.forumPhotoCell = [[ForumPhotoCell alloc] initWithDictionary:dictionary[kDataPhotoCelForumPhotoCell]];
	}

	if(![dictionary[kDataPhotoCelGroupid] isKindOfClass:[NSNull class]]){
		self.groupid = dictionary[kDataPhotoCelGroupid];
	}	
	if(![dictionary[kDataPhotoCelHits] isKindOfClass:[NSNull class]]){
		self.hits = [dictionary[kDataPhotoCelHits] integerValue];
	}

	if(![dictionary[kDataPhotoCelIsRegularized] isKindOfClass:[NSNull class]]){
		self.isRegularized = [dictionary[kDataPhotoCelIsRegularized] boolValue];
	}

	if(![dictionary[kDataPhotoCelIsLock] isKindOfClass:[NSNull class]]){
		self.isLock = [dictionary[kDataPhotoCelIsLock] integerValue];
	}

	if(![dictionary[kDataPhotoCelIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kDataPhotoCelIsLogin] integerValue];
	}

	if(![dictionary[kDataPhotoCelIsRecommendFilter] isKindOfClass:[NSNull class]]){
		self.isRecommendFilter = [dictionary[kDataPhotoCelIsRecommendFilter] integerValue];
	}

	if(![dictionary[kDataPhotoCelIsrec] isKindOfClass:[NSNull class]]){
		self.isrec = dictionary[kDataPhotoCelIsrec];
	}	
	if(![dictionary[kDataPhotoCelJfbStyle] isKindOfClass:[NSNull class]]){
		self.jfbStyle = [dictionary[kDataPhotoCelJfbStyle] integerValue];
	}

	if(![dictionary[kDataPhotoCelJiangjiStatus] isKindOfClass:[NSNull class]]){
		self.jiangjiStatus = [dictionary[kDataPhotoCelJiangjiStatus] integerValue];
	}

	if(![dictionary[kDataPhotoCelLastpostTime] isKindOfClass:[NSNull class]]){
		self.lastpostTime = [dictionary[kDataPhotoCelLastpostTime] integerValue];
	}

	if(![dictionary[kDataPhotoCelLights] isKindOfClass:[NSNull class]]){
		self.lights = [dictionary[kDataPhotoCelLights] integerValue];
	}

	if(![dictionary[kDataPhotoCelMergeTitle] isKindOfClass:[NSNull class]]){
		self.mergeTitle = dictionary[kDataPhotoCelMergeTitle];
	}	
	if(![dictionary[kDataPhotoCelNopic] isKindOfClass:[NSNull class]]){
		self.nopic = [dictionary[kDataPhotoCelNopic] integerValue];
	}

	if(![dictionary[kDataPhotoCelNps] isKindOfClass:[NSNull class]]){
		self.nps = [dictionary[kDataPhotoCelNps] integerValue];
	}

	if(![dictionary[kDataPhotoCelPage] isKindOfClass:[NSNull class]]){
		self.page = dictionary[kDataPhotoCelPage];
	}	
	if(![dictionary[kDataPhotoCelPid] isKindOfClass:[NSNull class]]){
		self.pid = [dictionary[kDataPhotoCelPid] integerValue];
	}

	if(![dictionary[kDataPhotoCelPostAuthorPuid] isKindOfClass:[NSNull class]]){
		self.postAuthorPuid = [dictionary[kDataPhotoCelPostAuthorPuid] integerValue];
	}

	if(![dictionary[kDataPhotoCelPraisePhotoCell] isKindOfClass:[NSNull class]]){
		self.praisePhotoCell = [[PraisePhotoCell alloc] initWithDictionary:dictionary[kDataPhotoCelPraisePhotoCell]];
	}

	if(![dictionary[kDataPhotoCelPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kDataPhotoCelPuid];
	}	
	if(![dictionary[kDataPhotoCelRecommendNum] isKindOfClass:[NSNull class]]){
		self.recommendNum = dictionary[kDataPhotoCelRecommendNum];
	}	
	if(![dictionary[kDataPhotoCelReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kDataPhotoCelReplies];
	}	
	if(![dictionary[kDataPhotoCelShareNum] isKindOfClass:[NSNull class]]){
		self.shareNum = [dictionary[kDataPhotoCelShareNum] integerValue];
	}

	if(![dictionary[kDataPhotoCelShareStyle] isKindOfClass:[NSNull class]]){
		self.shareStyle = [dictionary[kDataPhotoCelShareStyle] integerValue];
	}

	if(![dictionary[kDataPhotoCelShowPostPraise] isKindOfClass:[NSNull class]]){
		self.showPostPraise = [dictionary[kDataPhotoCelShowPostPraise] integerValue];
	}

	if(![dictionary[kDataPhotoCelTid] isKindOfClass:[NSNull class]]){
		self.tid = dictionary[kDataPhotoCelTid];
	}	
	if(![dictionary[kDataPhotoCelTime] isKindOfClass:[NSNull class]]){
		self.time = dictionary[kDataPhotoCelTime];
	}	
	if(![dictionary[kDataPhotoCelTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kDataPhotoCelTitle];
	}	
	if(![dictionary[kDataPhotoCelTopicPhotoCell] isKindOfClass:[NSNull class]]){
		self.topicPhotoCell = [[TopicPhotoCell alloc] initWithDictionary:dictionary[kDataPhotoCelTopicPhotoCell]];
	}

	if(![dictionary[kDataPhotoCelTopicId] isKindOfClass:[NSNull class]]){
		self.topicId = [dictionary[kDataPhotoCelTopicId] integerValue];
	}

	if(![dictionary[kDataPhotoCelTotalPage] isKindOfClass:[NSNull class]]){
		self.totalPage = [dictionary[kDataPhotoCelTotalPage] integerValue];
	}

	if(![dictionary[kDataPhotoCelUpdateInfo] isKindOfClass:[NSNull class]]){
		self.updateInfo = dictionary[kDataPhotoCelUpdateInfo];
	}	
	if(![dictionary[kDataPhotoCelUserImg] isKindOfClass:[NSNull class]]){
		self.userImg = dictionary[kDataPhotoCelUserImg];
	}	
	if(![dictionary[kDataPhotoCelUserBanned] isKindOfClass:[NSNull class]]){
		self.userBanned = [dictionary[kDataPhotoCelUserBanned] integerValue];
	}

	if(![dictionary[kDataPhotoCelUsername] isKindOfClass:[NSNull class]]){
		self.username = dictionary[kDataPhotoCelUsername];
	}	
	if(![dictionary[kDataPhotoCelVia] isKindOfClass:[NSNull class]]){
		self.via = dictionary[kDataPhotoCelVia];
	}	
	if(![dictionary[kDataPhotoCelVideoInfo] isKindOfClass:[NSNull class]]){
		self.videoInfo = dictionary[kDataPhotoCelVideoInfo];
	}	
	if(![dictionary[kDataPhotoCelVisits] isKindOfClass:[NSNull class]]){
		self.visits = dictionary[kDataPhotoCelVisits];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kDataPhotoCelAd] = @(self.ad);
	dictionary[kDataPhotoCelAllPage] = @(self.allPage);
	if(self.authorPuid != nil){
		dictionary[kDataPhotoCelAuthorPuid] = self.authorPuid;
	}
	if(self.bottomAd != nil){
		dictionary[kDataPhotoCelBottomAd] = [self.bottomAd toDictionary];
	}
	if(self.checkReplyUrl != nil){
		dictionary[kDataPhotoCelCheckReplyUrl] = self.checkReplyUrl;
	}
	if(self.content != nil){
		dictionary[kDataPhotoCelContent] = self.content;
	}
	dictionary[kDataPhotoCelCreateTime] = @(self.createTime);
	if(self.defOrder != nil){
		dictionary[kDataPhotoCelDefOrder] = self.defOrder;
	}
	dictionary[kDataPhotoCelDigest] = @(self.digest);
	dictionary[kDataPhotoCelFVideo] = @(self.fVideo);
	if(self.fid != nil){
		dictionary[kDataPhotoCelFid] = self.fid;
	}
	if(self.forumPhotoCell != nil){
		dictionary[kDataPhotoCelForumPhotoCell] = [self.forumPhotoCell toDictionary];
	}
	if(self.groupid != nil){
		dictionary[kDataPhotoCelGroupid] = self.groupid;
	}
	dictionary[kDataPhotoCelHits] = @(self.hits);
	dictionary[kDataPhotoCelIsRegularized] = @(self.isRegularized);
	dictionary[kDataPhotoCelIsLock] = @(self.isLock);
	dictionary[kDataPhotoCelIsLogin] = @(self.isLogin);
	dictionary[kDataPhotoCelIsRecommendFilter] = @(self.isRecommendFilter);
	if(self.isrec != nil){
		dictionary[kDataPhotoCelIsrec] = self.isrec;
	}
	dictionary[kDataPhotoCelJfbStyle] = @(self.jfbStyle);
	dictionary[kDataPhotoCelJiangjiStatus] = @(self.jiangjiStatus);
	dictionary[kDataPhotoCelLastpostTime] = @(self.lastpostTime);
	dictionary[kDataPhotoCelLights] = @(self.lights);
	if(self.mergeTitle != nil){
		dictionary[kDataPhotoCelMergeTitle] = self.mergeTitle;
	}
	dictionary[kDataPhotoCelNopic] = @(self.nopic);
	dictionary[kDataPhotoCelNps] = @(self.nps);
	if(self.page != nil){
		dictionary[kDataPhotoCelPage] = self.page;
	}
	dictionary[kDataPhotoCelPid] = @(self.pid);
	dictionary[kDataPhotoCelPostAuthorPuid] = @(self.postAuthorPuid);
	if(self.praisePhotoCell != nil){
		dictionary[kDataPhotoCelPraisePhotoCell] = [self.praisePhotoCell toDictionary];
	}
	if(self.puid != nil){
		dictionary[kDataPhotoCelPuid] = self.puid;
	}
	if(self.recommendNum != nil){
		dictionary[kDataPhotoCelRecommendNum] = self.recommendNum;
	}
	if(self.replies != nil){
		dictionary[kDataPhotoCelReplies] = self.replies;
	}
	dictionary[kDataPhotoCelShareNum] = @(self.shareNum);
	dictionary[kDataPhotoCelShareStyle] = @(self.shareStyle);
	dictionary[kDataPhotoCelShowPostPraise] = @(self.showPostPraise);
	if(self.tid != nil){
		dictionary[kDataPhotoCelTid] = self.tid;
	}
	if(self.time != nil){
		dictionary[kDataPhotoCelTime] = self.time;
	}
	if(self.title != nil){
		dictionary[kDataPhotoCelTitle] = self.title;
	}
	if(self.topicPhotoCell != nil){
		dictionary[kDataPhotoCelTopicPhotoCell] = [self.topicPhotoCell toDictionary];
	}
	dictionary[kDataPhotoCelTopicId] = @(self.topicId);
	dictionary[kDataPhotoCelTotalPage] = @(self.totalPage);
	if(self.updateInfo != nil){
		dictionary[kDataPhotoCelUpdateInfo] = self.updateInfo;
	}
	if(self.userImg != nil){
		dictionary[kDataPhotoCelUserImg] = self.userImg;
	}
	dictionary[kDataPhotoCelUserBanned] = @(self.userBanned);
	if(self.username != nil){
		dictionary[kDataPhotoCelUsername] = self.username;
	}
	if(self.via != nil){
		dictionary[kDataPhotoCelVia] = self.via;
	}
	if(self.videoInfo != nil){
		dictionary[kDataPhotoCelVideoInfo] = self.videoInfo;
	}
	if(self.visits != nil){
		dictionary[kDataPhotoCelVisits] = self.visits;
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
	[aCoder encodeObject:@(self.ad) forKey:kDataPhotoCelAd];	[aCoder encodeObject:@(self.allPage) forKey:kDataPhotoCelAllPage];	if(self.authorPuid != nil){
		[aCoder encodeObject:self.authorPuid forKey:kDataPhotoCelAuthorPuid];
	}
	if(self.bottomAd != nil){
		[aCoder encodeObject:self.bottomAd forKey:kDataPhotoCelBottomAd];
	}
	if(self.checkReplyUrl != nil){
		[aCoder encodeObject:self.checkReplyUrl forKey:kDataPhotoCelCheckReplyUrl];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kDataPhotoCelContent];
	}
	[aCoder encodeObject:@(self.createTime) forKey:kDataPhotoCelCreateTime];	if(self.defOrder != nil){
		[aCoder encodeObject:self.defOrder forKey:kDataPhotoCelDefOrder];
	}
	[aCoder encodeObject:@(self.digest) forKey:kDataPhotoCelDigest];	[aCoder encodeObject:@(self.fVideo) forKey:kDataPhotoCelFVideo];	if(self.fid != nil){
		[aCoder encodeObject:self.fid forKey:kDataPhotoCelFid];
	}
	if(self.forumPhotoCell != nil){
		[aCoder encodeObject:self.forumPhotoCell forKey:kDataPhotoCelForumPhotoCell];
	}
	if(self.groupid != nil){
		[aCoder encodeObject:self.groupid forKey:kDataPhotoCelGroupid];
	}
	[aCoder encodeObject:@(self.hits) forKey:kDataPhotoCelHits];	[aCoder encodeObject:@(self.isRegularized) forKey:kDataPhotoCelIsRegularized];	[aCoder encodeObject:@(self.isLock) forKey:kDataPhotoCelIsLock];	[aCoder encodeObject:@(self.isLogin) forKey:kDataPhotoCelIsLogin];	[aCoder encodeObject:@(self.isRecommendFilter) forKey:kDataPhotoCelIsRecommendFilter];	if(self.isrec != nil){
		[aCoder encodeObject:self.isrec forKey:kDataPhotoCelIsrec];
	}
	[aCoder encodeObject:@(self.jfbStyle) forKey:kDataPhotoCelJfbStyle];	[aCoder encodeObject:@(self.jiangjiStatus) forKey:kDataPhotoCelJiangjiStatus];	[aCoder encodeObject:@(self.lastpostTime) forKey:kDataPhotoCelLastpostTime];	[aCoder encodeObject:@(self.lights) forKey:kDataPhotoCelLights];	if(self.mergeTitle != nil){
		[aCoder encodeObject:self.mergeTitle forKey:kDataPhotoCelMergeTitle];
	}
	[aCoder encodeObject:@(self.nopic) forKey:kDataPhotoCelNopic];	[aCoder encodeObject:@(self.nps) forKey:kDataPhotoCelNps];	if(self.page != nil){
		[aCoder encodeObject:self.page forKey:kDataPhotoCelPage];
	}
	[aCoder encodeObject:@(self.pid) forKey:kDataPhotoCelPid];	[aCoder encodeObject:@(self.postAuthorPuid) forKey:kDataPhotoCelPostAuthorPuid];	if(self.praisePhotoCell != nil){
		[aCoder encodeObject:self.praisePhotoCell forKey:kDataPhotoCelPraisePhotoCell];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kDataPhotoCelPuid];
	}
	if(self.recommendNum != nil){
		[aCoder encodeObject:self.recommendNum forKey:kDataPhotoCelRecommendNum];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kDataPhotoCelReplies];
	}
	[aCoder encodeObject:@(self.shareNum) forKey:kDataPhotoCelShareNum];	[aCoder encodeObject:@(self.shareStyle) forKey:kDataPhotoCelShareStyle];	[aCoder encodeObject:@(self.showPostPraise) forKey:kDataPhotoCelShowPostPraise];	if(self.tid != nil){
		[aCoder encodeObject:self.tid forKey:kDataPhotoCelTid];
	}
	if(self.time != nil){
		[aCoder encodeObject:self.time forKey:kDataPhotoCelTime];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kDataPhotoCelTitle];
	}
	if(self.topicPhotoCell != nil){
		[aCoder encodeObject:self.topicPhotoCell forKey:kDataPhotoCelTopicPhotoCell];
	}
	[aCoder encodeObject:@(self.topicId) forKey:kDataPhotoCelTopicId];	[aCoder encodeObject:@(self.totalPage) forKey:kDataPhotoCelTotalPage];	if(self.updateInfo != nil){
		[aCoder encodeObject:self.updateInfo forKey:kDataPhotoCelUpdateInfo];
	}
	if(self.userImg != nil){
		[aCoder encodeObject:self.userImg forKey:kDataPhotoCelUserImg];
	}
	[aCoder encodeObject:@(self.userBanned) forKey:kDataPhotoCelUserBanned];	if(self.username != nil){
		[aCoder encodeObject:self.username forKey:kDataPhotoCelUsername];
	}
	if(self.via != nil){
		[aCoder encodeObject:self.via forKey:kDataPhotoCelVia];
	}
	if(self.videoInfo != nil){
		[aCoder encodeObject:self.videoInfo forKey:kDataPhotoCelVideoInfo];
	}
	if(self.visits != nil){
		[aCoder encodeObject:self.visits forKey:kDataPhotoCelVisits];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.ad = [[aDecoder decodeObjectForKey:kDataPhotoCelAd] integerValue];
	self.allPage = [[aDecoder decodeObjectForKey:kDataPhotoCelAllPage] integerValue];
	self.authorPuid = [aDecoder decodeObjectForKey:kDataPhotoCelAuthorPuid];
	self.bottomAd = [aDecoder decodeObjectForKey:kDataPhotoCelBottomAd];
	self.checkReplyUrl = [aDecoder decodeObjectForKey:kDataPhotoCelCheckReplyUrl];
	self.content = [aDecoder decodeObjectForKey:kDataPhotoCelContent];
	self.createTime = [[aDecoder decodeObjectForKey:kDataPhotoCelCreateTime] integerValue];
	self.defOrder = [aDecoder decodeObjectForKey:kDataPhotoCelDefOrder];
	self.digest = [[aDecoder decodeObjectForKey:kDataPhotoCelDigest] integerValue];
	self.fVideo = [[aDecoder decodeObjectForKey:kDataPhotoCelFVideo] integerValue];
	self.fid = [aDecoder decodeObjectForKey:kDataPhotoCelFid];
	self.forumPhotoCell = [aDecoder decodeObjectForKey:kDataPhotoCelForumPhotoCell];
	self.groupid = [aDecoder decodeObjectForKey:kDataPhotoCelGroupid];
	self.hits = [[aDecoder decodeObjectForKey:kDataPhotoCelHits] integerValue];
	self.isRegularized = [[aDecoder decodeObjectForKey:kDataPhotoCelIsRegularized] boolValue];
	self.isLock = [[aDecoder decodeObjectForKey:kDataPhotoCelIsLock] integerValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kDataPhotoCelIsLogin] integerValue];
	self.isRecommendFilter = [[aDecoder decodeObjectForKey:kDataPhotoCelIsRecommendFilter] integerValue];
	self.isrec = [aDecoder decodeObjectForKey:kDataPhotoCelIsrec];
	self.jfbStyle = [[aDecoder decodeObjectForKey:kDataPhotoCelJfbStyle] integerValue];
	self.jiangjiStatus = [[aDecoder decodeObjectForKey:kDataPhotoCelJiangjiStatus] integerValue];
	self.lastpostTime = [[aDecoder decodeObjectForKey:kDataPhotoCelLastpostTime] integerValue];
	self.lights = [[aDecoder decodeObjectForKey:kDataPhotoCelLights] integerValue];
	self.mergeTitle = [aDecoder decodeObjectForKey:kDataPhotoCelMergeTitle];
	self.nopic = [[aDecoder decodeObjectForKey:kDataPhotoCelNopic] integerValue];
	self.nps = [[aDecoder decodeObjectForKey:kDataPhotoCelNps] integerValue];
	self.page = [aDecoder decodeObjectForKey:kDataPhotoCelPage];
	self.pid = [[aDecoder decodeObjectForKey:kDataPhotoCelPid] integerValue];
	self.postAuthorPuid = [[aDecoder decodeObjectForKey:kDataPhotoCelPostAuthorPuid] integerValue];
	self.praisePhotoCell = [aDecoder decodeObjectForKey:kDataPhotoCelPraisePhotoCell];
	self.puid = [aDecoder decodeObjectForKey:kDataPhotoCelPuid];
	self.recommendNum = [aDecoder decodeObjectForKey:kDataPhotoCelRecommendNum];
	self.replies = [aDecoder decodeObjectForKey:kDataPhotoCelReplies];
	self.shareNum = [[aDecoder decodeObjectForKey:kDataPhotoCelShareNum] integerValue];
	self.shareStyle = [[aDecoder decodeObjectForKey:kDataPhotoCelShareStyle] integerValue];
	self.showPostPraise = [[aDecoder decodeObjectForKey:kDataPhotoCelShowPostPraise] integerValue];
	self.tid = [aDecoder decodeObjectForKey:kDataPhotoCelTid];
	self.time = [aDecoder decodeObjectForKey:kDataPhotoCelTime];
	self.title = [aDecoder decodeObjectForKey:kDataPhotoCelTitle];
	self.topicPhotoCell = [aDecoder decodeObjectForKey:kDataPhotoCelTopicPhotoCell];
	self.topicId = [[aDecoder decodeObjectForKey:kDataPhotoCelTopicId] integerValue];
	self.totalPage = [[aDecoder decodeObjectForKey:kDataPhotoCelTotalPage] integerValue];
	self.updateInfo = [aDecoder decodeObjectForKey:kDataPhotoCelUpdateInfo];
	self.userImg = [aDecoder decodeObjectForKey:kDataPhotoCelUserImg];
	self.userBanned = [[aDecoder decodeObjectForKey:kDataPhotoCelUserBanned] integerValue];
	self.username = [aDecoder decodeObjectForKey:kDataPhotoCelUsername];
	self.via = [aDecoder decodeObjectForKey:kDataPhotoCelVia];
	self.videoInfo = [aDecoder decodeObjectForKey:kDataPhotoCelVideoInfo];
	self.visits = [aDecoder decodeObjectForKey:kDataPhotoCelVisits];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	DataPhotoCel *copy = [DataPhotoCel new];

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
	copy.forumPhotoCell = [self.forumPhotoCell copy];
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
	copy.praisePhotoCell = [self.praisePhotoCell copy];
	copy.puid = [self.puid copy];
	copy.recommendNum = [self.recommendNum copy];
	copy.replies = [self.replies copy];
	copy.shareNum = self.shareNum;
	copy.shareStyle = self.shareStyle;
	copy.showPostPraise = self.showPostPraise;
	copy.tid = [self.tid copy];
	copy.time = [self.time copy];
	copy.title = [self.title copy];
	copy.topicPhotoCell = [self.topicPhotoCell copy];
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
