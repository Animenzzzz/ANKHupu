//
//	New.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentLinkNew.h"

NSString *const kCommentLinkNewAddtime = @"addtime";
NSString *const kCommentLinkNewAppUrl = @"app_url";
NSString *const kCommentLinkNewLeague = @"league";
NSString *const kCommentLinkNewMUrl = @"m_url";
NSString *const kCommentLinkNewOrigin = @"origin";
NSString *const kCommentLinkNewOriginUrl = @"origin_url";
NSString *const kCommentLinkNewPublishTime = @"publish_time";
NSString *const kCommentLinkNewTitle = @"title";

@interface CommentLinkCommentLinkNew ()
@end
@implementation CommentLinkCommentLinkNew




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommentLinkNewAddtime] isKindOfClass:[NSNull class]]){
		self.addtime = dictionary[kCommentLinkNewAddtime];
	}	
	if(![dictionary[kCommentLinkNewAppUrl] isKindOfClass:[NSNull class]]){
		self.appUrl = dictionary[kCommentLinkNewAppUrl];
	}	
	if(![dictionary[kCommentLinkNewLeague] isKindOfClass:[NSNull class]]){
		self.league = dictionary[kCommentLinkNewLeague];
	}	
	if(![dictionary[kCommentLinkNewMUrl] isKindOfClass:[NSNull class]]){
		self.mUrl = dictionary[kCommentLinkNewMUrl];
	}	
	if(![dictionary[kCommentLinkNewOrigin] isKindOfClass:[NSNull class]]){
		self.origin = dictionary[kCommentLinkNewOrigin];
	}	
	if(![dictionary[kCommentLinkNewOriginUrl] isKindOfClass:[NSNull class]]){
		self.originUrl = dictionary[kCommentLinkNewOriginUrl];
	}	
	if(![dictionary[kCommentLinkNewPublishTime] isKindOfClass:[NSNull class]]){
		self.publishTime = dictionary[kCommentLinkNewPublishTime];
	}	
	if(![dictionary[kCommentLinkNewTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kCommentLinkNewTitle];
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
		dictionary[kCommentLinkNewAddtime] = self.addtime;
	}
	if(self.appUrl != nil){
		dictionary[kCommentLinkNewAppUrl] = self.appUrl;
	}
	if(self.league != nil){
		dictionary[kCommentLinkNewLeague] = self.league;
	}
	if(self.mUrl != nil){
		dictionary[kCommentLinkNewMUrl] = self.mUrl;
	}
	if(self.origin != nil){
		dictionary[kCommentLinkNewOrigin] = self.origin;
	}
	if(self.originUrl != nil){
		dictionary[kCommentLinkNewOriginUrl] = self.originUrl;
	}
	if(self.publishTime != nil){
		dictionary[kCommentLinkNewPublishTime] = self.publishTime;
	}
	if(self.title != nil){
		dictionary[kCommentLinkNewTitle] = self.title;
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
		[aCoder encodeObject:self.addtime forKey:kCommentLinkNewAddtime];
	}
	if(self.appUrl != nil){
		[aCoder encodeObject:self.appUrl forKey:kCommentLinkNewAppUrl];
	}
	if(self.league != nil){
		[aCoder encodeObject:self.league forKey:kCommentLinkNewLeague];
	}
	if(self.mUrl != nil){
		[aCoder encodeObject:self.mUrl forKey:kCommentLinkNewMUrl];
	}
	if(self.origin != nil){
		[aCoder encodeObject:self.origin forKey:kCommentLinkNewOrigin];
	}
	if(self.originUrl != nil){
		[aCoder encodeObject:self.originUrl forKey:kCommentLinkNewOriginUrl];
	}
	if(self.publishTime != nil){
		[aCoder encodeObject:self.publishTime forKey:kCommentLinkNewPublishTime];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kCommentLinkNewTitle];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.addtime = [aDecoder decodeObjectForKey:kCommentLinkNewAddtime];
	self.appUrl = [aDecoder decodeObjectForKey:kCommentLinkNewAppUrl];
	self.league = [aDecoder decodeObjectForKey:kCommentLinkNewLeague];
	self.mUrl = [aDecoder decodeObjectForKey:kCommentLinkNewMUrl];
	self.origin = [aDecoder decodeObjectForKey:kCommentLinkNewOrigin];
	self.originUrl = [aDecoder decodeObjectForKey:kCommentLinkNewOriginUrl];
	self.publishTime = [aDecoder decodeObjectForKey:kCommentLinkNewPublishTime];
	self.title = [aDecoder decodeObjectForKey:kCommentLinkNewTitle];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentLinkCommentLinkNew *copy = [CommentLinkCommentLinkNew new];

	copy.addtime = [self.addtime copy];
	copy.appUrl = [self.appUrl copy];
	copy.league = [self.league copy];
	copy.mUrl = [self.mUrl copy];
	copy.origin = [self.origin copy];
	copy.originUrl = [self.originUrl copy];
	copy.publishTime = [self.publishTime copy];
	copy.title = [self.title copy];

	return copy;
}
@end
