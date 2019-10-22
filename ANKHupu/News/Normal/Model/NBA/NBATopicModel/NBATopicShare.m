//
//	Share.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBATopicShare.h"

NSString *const kNBATopicShareImg = @"img";
NSString *const kNBATopicShareQq = @"qq";
NSString *const kNBATopicShareQzone = @"qzone";
NSString *const kNBATopicShareSummary = @"summary";
NSString *const kNBATopicShareUrl = @"url";
NSString *const kNBATopicShareWechat = @"wechat";
NSString *const kNBATopicShareWechatMoments = @"wechat_moments";
NSString *const kNBATopicShareWeibo = @"weibo";

@interface NBATopicShare ()
@end
@implementation NBATopicShare




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBATopicShareImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kNBATopicShareImg];
	}	
	if(![dictionary[kNBATopicShareQq] isKindOfClass:[NSNull class]]){
		self.qq = dictionary[kNBATopicShareQq];
	}	
	if(![dictionary[kNBATopicShareQzone] isKindOfClass:[NSNull class]]){
		self.qzone = dictionary[kNBATopicShareQzone];
	}	
	if(![dictionary[kNBATopicShareSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kNBATopicShareSummary];
	}	
	if(![dictionary[kNBATopicShareUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kNBATopicShareUrl];
	}	
	if(![dictionary[kNBATopicShareWechat] isKindOfClass:[NSNull class]]){
		self.wechat = dictionary[kNBATopicShareWechat];
	}	
	if(![dictionary[kNBATopicShareWechatMoments] isKindOfClass:[NSNull class]]){
		self.wechatMoments = dictionary[kNBATopicShareWechatMoments];
	}	
	if(![dictionary[kNBATopicShareWeibo] isKindOfClass:[NSNull class]]){
		self.weibo = dictionary[kNBATopicShareWeibo];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.img != nil){
		dictionary[kNBATopicShareImg] = self.img;
	}
	if(self.qq != nil){
		dictionary[kNBATopicShareQq] = self.qq;
	}
	if(self.qzone != nil){
		dictionary[kNBATopicShareQzone] = self.qzone;
	}
	if(self.summary != nil){
		dictionary[kNBATopicShareSummary] = self.summary;
	}
	if(self.url != nil){
		dictionary[kNBATopicShareUrl] = self.url;
	}
	if(self.wechat != nil){
		dictionary[kNBATopicShareWechat] = self.wechat;
	}
	if(self.wechatMoments != nil){
		dictionary[kNBATopicShareWechatMoments] = self.wechatMoments;
	}
	if(self.weibo != nil){
		dictionary[kNBATopicShareWeibo] = self.weibo;
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
	if(self.img != nil){
		[aCoder encodeObject:self.img forKey:kNBATopicShareImg];
	}
	if(self.qq != nil){
		[aCoder encodeObject:self.qq forKey:kNBATopicShareQq];
	}
	if(self.qzone != nil){
		[aCoder encodeObject:self.qzone forKey:kNBATopicShareQzone];
	}
	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kNBATopicShareSummary];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kNBATopicShareUrl];
	}
	if(self.wechat != nil){
		[aCoder encodeObject:self.wechat forKey:kNBATopicShareWechat];
	}
	if(self.wechatMoments != nil){
		[aCoder encodeObject:self.wechatMoments forKey:kNBATopicShareWechatMoments];
	}
	if(self.weibo != nil){
		[aCoder encodeObject:self.weibo forKey:kNBATopicShareWeibo];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.img = [aDecoder decodeObjectForKey:kNBATopicShareImg];
	self.qq = [aDecoder decodeObjectForKey:kNBATopicShareQq];
	self.qzone = [aDecoder decodeObjectForKey:kNBATopicShareQzone];
	self.summary = [aDecoder decodeObjectForKey:kNBATopicShareSummary];
	self.url = [aDecoder decodeObjectForKey:kNBATopicShareUrl];
	self.wechat = [aDecoder decodeObjectForKey:kNBATopicShareWechat];
	self.wechatMoments = [aDecoder decodeObjectForKey:kNBATopicShareWechatMoments];
	self.weibo = [aDecoder decodeObjectForKey:kNBATopicShareWeibo];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBATopicShare *copy = [NBATopicShare new];

	copy.img = [self.img copy];
	copy.qq = [self.qq copy];
	copy.qzone = [self.qzone copy];
	copy.summary = [self.summary copy];
	copy.url = [self.url copy];
	copy.wechat = [self.wechat copy];
	copy.wechatMoments = [self.wechatMoments copy];
	copy.weibo = [self.weibo copy];

	return copy;
}
@end
