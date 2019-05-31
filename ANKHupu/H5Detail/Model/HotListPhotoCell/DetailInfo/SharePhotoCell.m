//
//	SharePhotoCell.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "SharePhotoCell.h"

NSString *const kSharePhotoCellImg = @"img";
NSString *const kSharePhotoCellQq = @"qq";
NSString *const kSharePhotoCellQzone = @"qzone";
NSString *const kSharePhotoCellSummary = @"summary";
NSString *const kSharePhotoCellUrl = @"url";
NSString *const kSharePhotoCellWechat = @"wechat";
NSString *const kSharePhotoCellWechatMoments = @"wechat_moments";
NSString *const kSharePhotoCellWeibo = @"weibo";

@interface SharePhotoCell ()
@end
@implementation SharePhotoCell




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kSharePhotoCellImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kSharePhotoCellImg];
	}	
	if(![dictionary[kSharePhotoCellQq] isKindOfClass:[NSNull class]]){
		self.qq = dictionary[kSharePhotoCellQq];
	}	
	if(![dictionary[kSharePhotoCellQzone] isKindOfClass:[NSNull class]]){
		self.qzone = dictionary[kSharePhotoCellQzone];
	}	
	if(![dictionary[kSharePhotoCellSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kSharePhotoCellSummary];
	}	
	if(![dictionary[kSharePhotoCellUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kSharePhotoCellUrl];
	}	
	if(![dictionary[kSharePhotoCellWechat] isKindOfClass:[NSNull class]]){
		self.wechat = dictionary[kSharePhotoCellWechat];
	}	
	if(![dictionary[kSharePhotoCellWechatMoments] isKindOfClass:[NSNull class]]){
		self.wechatMoments = dictionary[kSharePhotoCellWechatMoments];
	}	
	if(![dictionary[kSharePhotoCellWeibo] isKindOfClass:[NSNull class]]){
		self.weibo = dictionary[kSharePhotoCellWeibo];
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
		dictionary[kSharePhotoCellImg] = self.img;
	}
	if(self.qq != nil){
		dictionary[kSharePhotoCellQq] = self.qq;
	}
	if(self.qzone != nil){
		dictionary[kSharePhotoCellQzone] = self.qzone;
	}
	if(self.summary != nil){
		dictionary[kSharePhotoCellSummary] = self.summary;
	}
	if(self.url != nil){
		dictionary[kSharePhotoCellUrl] = self.url;
	}
	if(self.wechat != nil){
		dictionary[kSharePhotoCellWechat] = self.wechat;
	}
	if(self.wechatMoments != nil){
		dictionary[kSharePhotoCellWechatMoments] = self.wechatMoments;
	}
	if(self.weibo != nil){
		dictionary[kSharePhotoCellWeibo] = self.weibo;
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
		[aCoder encodeObject:self.img forKey:kSharePhotoCellImg];
	}
	if(self.qq != nil){
		[aCoder encodeObject:self.qq forKey:kSharePhotoCellQq];
	}
	if(self.qzone != nil){
		[aCoder encodeObject:self.qzone forKey:kSharePhotoCellQzone];
	}
	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kSharePhotoCellSummary];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kSharePhotoCellUrl];
	}
	if(self.wechat != nil){
		[aCoder encodeObject:self.wechat forKey:kSharePhotoCellWechat];
	}
	if(self.wechatMoments != nil){
		[aCoder encodeObject:self.wechatMoments forKey:kSharePhotoCellWechatMoments];
	}
	if(self.weibo != nil){
		[aCoder encodeObject:self.weibo forKey:kSharePhotoCellWeibo];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.img = [aDecoder decodeObjectForKey:kSharePhotoCellImg];
	self.qq = [aDecoder decodeObjectForKey:kSharePhotoCellQq];
	self.qzone = [aDecoder decodeObjectForKey:kSharePhotoCellQzone];
	self.summary = [aDecoder decodeObjectForKey:kSharePhotoCellSummary];
	self.url = [aDecoder decodeObjectForKey:kSharePhotoCellUrl];
	self.wechat = [aDecoder decodeObjectForKey:kSharePhotoCellWechat];
	self.wechatMoments = [aDecoder decodeObjectForKey:kSharePhotoCellWechatMoments];
	self.weibo = [aDecoder decodeObjectForKey:kSharePhotoCellWeibo];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	SharePhotoCell *copy = [SharePhotoCell new];

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