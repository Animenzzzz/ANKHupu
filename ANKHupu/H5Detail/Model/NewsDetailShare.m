//
//	NewsDetailShare.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NewsDetailShare.h"

NSString *const kNewsDetailShareImg = @"img";
NSString *const kNewsDetailShareQq = @"qq";
NSString *const kNewsDetailShareQzone = @"qzone";
NSString *const kNewsDetailShareSummary = @"summary";
NSString *const kNewsDetailShareUrl = @"url";
NSString *const kNewsDetailShareWechat = @"wechat";
NSString *const kNewsDetailShareWechatMoments = @"wechat_moments";
NSString *const kNewsDetailShareWeibo = @"weibo";

@interface NewsDetailShare ()
@end
@implementation NewsDetailShare




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNewsDetailShareImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kNewsDetailShareImg];
	}	
	if(![dictionary[kNewsDetailShareQq] isKindOfClass:[NSNull class]]){
		self.qq = dictionary[kNewsDetailShareQq];
	}	
	if(![dictionary[kNewsDetailShareQzone] isKindOfClass:[NSNull class]]){
		self.qzone = dictionary[kNewsDetailShareQzone];
	}	
	if(![dictionary[kNewsDetailShareSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kNewsDetailShareSummary];
	}	
	if(![dictionary[kNewsDetailShareUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kNewsDetailShareUrl];
	}	
	if(![dictionary[kNewsDetailShareWechat] isKindOfClass:[NSNull class]]){
		self.wechat = dictionary[kNewsDetailShareWechat];
	}	
	if(![dictionary[kNewsDetailShareWechatMoments] isKindOfClass:[NSNull class]]){
		self.wechatMoments = dictionary[kNewsDetailShareWechatMoments];
	}	
	if(![dictionary[kNewsDetailShareWeibo] isKindOfClass:[NSNull class]]){
		self.weibo = dictionary[kNewsDetailShareWeibo];
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
		dictionary[kNewsDetailShareImg] = self.img;
	}
	if(self.qq != nil){
		dictionary[kNewsDetailShareQq] = self.qq;
	}
	if(self.qzone != nil){
		dictionary[kNewsDetailShareQzone] = self.qzone;
	}
	if(self.summary != nil){
		dictionary[kNewsDetailShareSummary] = self.summary;
	}
	if(self.url != nil){
		dictionary[kNewsDetailShareUrl] = self.url;
	}
	if(self.wechat != nil){
		dictionary[kNewsDetailShareWechat] = self.wechat;
	}
	if(self.wechatMoments != nil){
		dictionary[kNewsDetailShareWechatMoments] = self.wechatMoments;
	}
	if(self.weibo != nil){
		dictionary[kNewsDetailShareWeibo] = self.weibo;
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
		[aCoder encodeObject:self.img forKey:kNewsDetailShareImg];
	}
	if(self.qq != nil){
		[aCoder encodeObject:self.qq forKey:kNewsDetailShareQq];
	}
	if(self.qzone != nil){
		[aCoder encodeObject:self.qzone forKey:kNewsDetailShareQzone];
	}
	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kNewsDetailShareSummary];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kNewsDetailShareUrl];
	}
	if(self.wechat != nil){
		[aCoder encodeObject:self.wechat forKey:kNewsDetailShareWechat];
	}
	if(self.wechatMoments != nil){
		[aCoder encodeObject:self.wechatMoments forKey:kNewsDetailShareWechatMoments];
	}
	if(self.weibo != nil){
		[aCoder encodeObject:self.weibo forKey:kNewsDetailShareWeibo];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.img = [aDecoder decodeObjectForKey:kNewsDetailShareImg];
	self.qq = [aDecoder decodeObjectForKey:kNewsDetailShareQq];
	self.qzone = [aDecoder decodeObjectForKey:kNewsDetailShareQzone];
	self.summary = [aDecoder decodeObjectForKey:kNewsDetailShareSummary];
	self.url = [aDecoder decodeObjectForKey:kNewsDetailShareUrl];
	self.wechat = [aDecoder decodeObjectForKey:kNewsDetailShareWechat];
	self.wechatMoments = [aDecoder decodeObjectForKey:kNewsDetailShareWechatMoments];
	self.weibo = [aDecoder decodeObjectForKey:kNewsDetailShareWeibo];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NewsDetailShare *copy = [NewsDetailShare new];

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