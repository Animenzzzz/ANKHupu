//
//	NBAType5share.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAType5share.h"

NSString *const kNBAType5shareImg = @"img";
NSString *const kNBAType5shareQq = @"qq";
NSString *const kNBAType5shareQzone = @"qzone";
NSString *const kNBAType5shareSummary = @"summary";
NSString *const kNBAType5shareUrl = @"url";
NSString *const kNBAType5shareWechat = @"wechat";
NSString *const kNBAType5shareWechatMoments = @"wechat_moments";
NSString *const kNBAType5shareWeibo = @"weibo";

@interface NBAType5share ()
@end
@implementation NBAType5share




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBAType5shareImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kNBAType5shareImg];
	}	
	if(![dictionary[kNBAType5shareQq] isKindOfClass:[NSNull class]]){
		self.qq = dictionary[kNBAType5shareQq];
	}	
	if(![dictionary[kNBAType5shareQzone] isKindOfClass:[NSNull class]]){
		self.qzone = dictionary[kNBAType5shareQzone];
	}	
	if(![dictionary[kNBAType5shareSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kNBAType5shareSummary];
	}	
	if(![dictionary[kNBAType5shareUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kNBAType5shareUrl];
	}	
	if(![dictionary[kNBAType5shareWechat] isKindOfClass:[NSNull class]]){
		self.wechat = dictionary[kNBAType5shareWechat];
	}	
	if(![dictionary[kNBAType5shareWechatMoments] isKindOfClass:[NSNull class]]){
		self.wechatMoments = dictionary[kNBAType5shareWechatMoments];
	}	
	if(![dictionary[kNBAType5shareWeibo] isKindOfClass:[NSNull class]]){
		self.weibo = dictionary[kNBAType5shareWeibo];
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
		dictionary[kNBAType5shareImg] = self.img;
	}
	if(self.qq != nil){
		dictionary[kNBAType5shareQq] = self.qq;
	}
	if(self.qzone != nil){
		dictionary[kNBAType5shareQzone] = self.qzone;
	}
	if(self.summary != nil){
		dictionary[kNBAType5shareSummary] = self.summary;
	}
	if(self.url != nil){
		dictionary[kNBAType5shareUrl] = self.url;
	}
	if(self.wechat != nil){
		dictionary[kNBAType5shareWechat] = self.wechat;
	}
	if(self.wechatMoments != nil){
		dictionary[kNBAType5shareWechatMoments] = self.wechatMoments;
	}
	if(self.weibo != nil){
		dictionary[kNBAType5shareWeibo] = self.weibo;
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
		[aCoder encodeObject:self.img forKey:kNBAType5shareImg];
	}
	if(self.qq != nil){
		[aCoder encodeObject:self.qq forKey:kNBAType5shareQq];
	}
	if(self.qzone != nil){
		[aCoder encodeObject:self.qzone forKey:kNBAType5shareQzone];
	}
	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kNBAType5shareSummary];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kNBAType5shareUrl];
	}
	if(self.wechat != nil){
		[aCoder encodeObject:self.wechat forKey:kNBAType5shareWechat];
	}
	if(self.wechatMoments != nil){
		[aCoder encodeObject:self.wechatMoments forKey:kNBAType5shareWechatMoments];
	}
	if(self.weibo != nil){
		[aCoder encodeObject:self.weibo forKey:kNBAType5shareWeibo];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.img = [aDecoder decodeObjectForKey:kNBAType5shareImg];
	self.qq = [aDecoder decodeObjectForKey:kNBAType5shareQq];
	self.qzone = [aDecoder decodeObjectForKey:kNBAType5shareQzone];
	self.summary = [aDecoder decodeObjectForKey:kNBAType5shareSummary];
	self.url = [aDecoder decodeObjectForKey:kNBAType5shareUrl];
	self.wechat = [aDecoder decodeObjectForKey:kNBAType5shareWechat];
	self.wechatMoments = [aDecoder decodeObjectForKey:kNBAType5shareWechatMoments];
	self.weibo = [aDecoder decodeObjectForKey:kNBAType5shareWeibo];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAType5share *copy = [NBAType5share new];

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