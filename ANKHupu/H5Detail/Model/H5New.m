//
//	New.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "H5New.h"

NSString *const kNewAddtime = @"addtime";
NSString *const kNewAppUrl = @"app_url";
NSString *const kNewContent = @"content";
NSString *const kNewImg = @"img";
NSString *const kNewImgM = @"img_m";
NSString *const kNewLeague = @"league";
NSString *const kNewLights = @"lights";
NSString *const kNewMUrl = @"m_url";
NSString *const kNewNewsDetailShare = @"share";
NSString *const kNewNewsDetailTags = @"tags";
NSString *const kNewNid = @"nid";
NSString *const kNewOrigin = @"origin";
NSString *const kNewOriginUrl = @"origin_url";
NSString *const kNewPublishTime = @"publish_time";
NSString *const kNewReplies = @"replies";
NSString *const kNewReplyurl = @"replyurl";
NSString *const kNewSummary = @"summary";
NSString *const kNewTitle = @"title";
NSString *const kNewType = @"type";
NSString *const kNewVideo = @"video";

@interface H5New ()
@end
@implementation H5New




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNewAddtime] isKindOfClass:[NSNull class]]){
		self.addtime = dictionary[kNewAddtime];
	}	
	if(![dictionary[kNewAppUrl] isKindOfClass:[NSNull class]]){
		self.appUrl = dictionary[kNewAppUrl];
	}	
	if(![dictionary[kNewContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kNewContent];
	}	
	if(![dictionary[kNewImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kNewImg];
	}	
	if(![dictionary[kNewImgM] isKindOfClass:[NSNull class]]){
		self.imgM = dictionary[kNewImgM];
	}	
	if(![dictionary[kNewLeague] isKindOfClass:[NSNull class]]){
		self.league = dictionary[kNewLeague];
	}	
	if(![dictionary[kNewLights] isKindOfClass:[NSNull class]]){
		self.lights = dictionary[kNewLights];
	}	
	if(![dictionary[kNewMUrl] isKindOfClass:[NSNull class]]){
		self.mUrl = dictionary[kNewMUrl];
	}	
	if(![dictionary[kNewNewsDetailShare] isKindOfClass:[NSNull class]]){
		self.newsDetailShare = [[NewsDetailShare alloc] initWithDictionary:dictionary[kNewNewsDetailShare]];
	}

	if(dictionary[kNewNewsDetailTags] != nil && [dictionary[kNewNewsDetailTags] isKindOfClass:[NSArray class]]){
		NSArray * newsDetailTagsDictionaries = dictionary[kNewNewsDetailTags];
		NSMutableArray * newsDetailTagsItems = [NSMutableArray array];
		for(NSDictionary * newsDetailTagsDictionary in newsDetailTagsDictionaries){
			NewsDetailTag * newsDetailTagsItem = [[NewsDetailTag alloc] initWithDictionary:newsDetailTagsDictionary];
			[newsDetailTagsItems addObject:newsDetailTagsItem];
		}
		self.newsDetailTags = newsDetailTagsItems;
	}
	if(![dictionary[kNewNid] isKindOfClass:[NSNull class]]){
		self.nid = dictionary[kNewNid];
	}	
	if(![dictionary[kNewOrigin] isKindOfClass:[NSNull class]]){
		self.origin = dictionary[kNewOrigin];
	}	
	if(![dictionary[kNewOriginUrl] isKindOfClass:[NSNull class]]){
		self.originUrl = dictionary[kNewOriginUrl];
	}	
	if(![dictionary[kNewPublishTime] isKindOfClass:[NSNull class]]){
		self.publishTime = dictionary[kNewPublishTime];
	}	
	if(![dictionary[kNewReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kNewReplies];
	}	
	if(![dictionary[kNewReplyurl] isKindOfClass:[NSNull class]]){
		self.replyurl = dictionary[kNewReplyurl];
	}	
	if(![dictionary[kNewSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kNewSummary];
	}	
	if(![dictionary[kNewTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kNewTitle];
	}	
	if(![dictionary[kNewType] isKindOfClass:[NSNull class]]){
		self.type = dictionary[kNewType];
	}	
	if(![dictionary[kNewVideo] isKindOfClass:[NSNull class]]){
		self.video = dictionary[kNewVideo];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.addtime != nil){
		dictionary[kNewAddtime] = self.addtime;
	}
	if(self.appUrl != nil){
		dictionary[kNewAppUrl] = self.appUrl;
	}
	if(self.content != nil){
		dictionary[kNewContent] = self.content;
	}
	if(self.img != nil){
		dictionary[kNewImg] = self.img;
	}
	if(self.imgM != nil){
		dictionary[kNewImgM] = self.imgM;
	}
	if(self.league != nil){
		dictionary[kNewLeague] = self.league;
	}
	if(self.lights != nil){
		dictionary[kNewLights] = self.lights;
	}
	if(self.mUrl != nil){
		dictionary[kNewMUrl] = self.mUrl;
	}
	if(self.newsDetailShare != nil){
		dictionary[kNewNewsDetailShare] = [self.newsDetailShare toDictionary];
	}
	if(self.newsDetailTags != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(NewsDetailTag * newsDetailTagsElement in self.newsDetailTags){
			[dictionaryElements addObject:[newsDetailTagsElement toDictionary]];
		}
		dictionary[kNewNewsDetailTags] = dictionaryElements;
	}
	if(self.nid != nil){
		dictionary[kNewNid] = self.nid;
	}
	if(self.origin != nil){
		dictionary[kNewOrigin] = self.origin;
	}
	if(self.originUrl != nil){
		dictionary[kNewOriginUrl] = self.originUrl;
	}
	if(self.publishTime != nil){
		dictionary[kNewPublishTime] = self.publishTime;
	}
	if(self.replies != nil){
		dictionary[kNewReplies] = self.replies;
	}
	if(self.replyurl != nil){
		dictionary[kNewReplyurl] = self.replyurl;
	}
	if(self.summary != nil){
		dictionary[kNewSummary] = self.summary;
	}
	if(self.title != nil){
		dictionary[kNewTitle] = self.title;
	}
	if(self.type != nil){
		dictionary[kNewType] = self.type;
	}
	if(self.video != nil){
		dictionary[kNewVideo] = self.video;
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
	if(self.addtime != nil){
		[aCoder encodeObject:self.addtime forKey:kNewAddtime];
	}
	if(self.appUrl != nil){
		[aCoder encodeObject:self.appUrl forKey:kNewAppUrl];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kNewContent];
	}
	if(self.img != nil){
		[aCoder encodeObject:self.img forKey:kNewImg];
	}
	if(self.imgM != nil){
		[aCoder encodeObject:self.imgM forKey:kNewImgM];
	}
	if(self.league != nil){
		[aCoder encodeObject:self.league forKey:kNewLeague];
	}
	if(self.lights != nil){
		[aCoder encodeObject:self.lights forKey:kNewLights];
	}
	if(self.mUrl != nil){
		[aCoder encodeObject:self.mUrl forKey:kNewMUrl];
	}
	if(self.newsDetailShare != nil){
		[aCoder encodeObject:self.newsDetailShare forKey:kNewNewsDetailShare];
	}
	if(self.newsDetailTags != nil){
		[aCoder encodeObject:self.newsDetailTags forKey:kNewNewsDetailTags];
	}
	if(self.nid != nil){
		[aCoder encodeObject:self.nid forKey:kNewNid];
	}
	if(self.origin != nil){
		[aCoder encodeObject:self.origin forKey:kNewOrigin];
	}
	if(self.originUrl != nil){
		[aCoder encodeObject:self.originUrl forKey:kNewOriginUrl];
	}
	if(self.publishTime != nil){
		[aCoder encodeObject:self.publishTime forKey:kNewPublishTime];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kNewReplies];
	}
	if(self.replyurl != nil){
		[aCoder encodeObject:self.replyurl forKey:kNewReplyurl];
	}
	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kNewSummary];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kNewTitle];
	}
	if(self.type != nil){
		[aCoder encodeObject:self.type forKey:kNewType];
	}
	if(self.video != nil){
		[aCoder encodeObject:self.video forKey:kNewVideo];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.addtime = [aDecoder decodeObjectForKey:kNewAddtime];
	self.appUrl = [aDecoder decodeObjectForKey:kNewAppUrl];
	self.content = [aDecoder decodeObjectForKey:kNewContent];
	self.img = [aDecoder decodeObjectForKey:kNewImg];
	self.imgM = [aDecoder decodeObjectForKey:kNewImgM];
	self.league = [aDecoder decodeObjectForKey:kNewLeague];
	self.lights = [aDecoder decodeObjectForKey:kNewLights];
	self.mUrl = [aDecoder decodeObjectForKey:kNewMUrl];
	self.newsDetailShare = [aDecoder decodeObjectForKey:kNewNewsDetailShare];
	self.newsDetailTags = [aDecoder decodeObjectForKey:kNewNewsDetailTags];
	self.nid = [aDecoder decodeObjectForKey:kNewNid];
	self.origin = [aDecoder decodeObjectForKey:kNewOrigin];
	self.originUrl = [aDecoder decodeObjectForKey:kNewOriginUrl];
	self.publishTime = [aDecoder decodeObjectForKey:kNewPublishTime];
	self.replies = [aDecoder decodeObjectForKey:kNewReplies];
	self.replyurl = [aDecoder decodeObjectForKey:kNewReplyurl];
	self.summary = [aDecoder decodeObjectForKey:kNewSummary];
	self.title = [aDecoder decodeObjectForKey:kNewTitle];
	self.type = [aDecoder decodeObjectForKey:kNewType];
	self.video = [aDecoder decodeObjectForKey:kNewVideo];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	H5New *copy = [H5New new];

	copy.addtime = [self.addtime copy];
	copy.appUrl = [self.appUrl copy];
	copy.content = [self.content copy];
	copy.img = [self.img copy];
	copy.imgM = [self.imgM copy];
	copy.league = [self.league copy];
	copy.lights = [self.lights copy];
	copy.mUrl = [self.mUrl copy];
	copy.newsDetailShare = [self.newsDetailShare copy];
	copy.newsDetailTags = [self.newsDetailTags copy];
	copy.nid = [self.nid copy];
	copy.origin = [self.origin copy];
	copy.originUrl = [self.originUrl copy];
	copy.publishTime = [self.publishTime copy];
	copy.replies = [self.replies copy];
	copy.replyurl = [self.replyurl copy];
	copy.summary = [self.summary copy];
	copy.title = [self.title copy];
	copy.type = [self.type copy];
	copy.video = [self.video copy];

	return copy;
}
@end
