//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBAData.h"

NSString *const kDataBadge = @"badge";
NSString *const kDataHid = @"hid";
NSString *const kDataImg = @"img";
NSString *const kDataIsTop = @"is_top";
NSString *const kDataLights = @"lights";
NSString *const kDataLink = @"link";
NSString *const kDataNid = @"nid";
NSString *const kDataRead = @"read";
NSString *const kDataReplies = @"replies";
NSString *const kDataShowSubjectReplies = @"show_subject_replies";
NSString *const kDataSummary = @"summary";
NSString *const kDataTitle = @"title";
NSString *const kDataType = @"type";
NSString *const kDataUnReplay = @"un_replay";
NSString *const kDataUptime = @"uptime";

@interface NBAData ()
@end
@implementation NBAData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kDataBadge] != nil && [dictionary[kDataBadge] isKindOfClass:[NSArray class]]){
		NSArray * badgeDictionaries = dictionary[kDataBadge];
		NSMutableArray * badgeItems = [NSMutableArray array];
		for(NSDictionary * badgeDictionary in badgeDictionaries){
			Badge * badgeItem = [[Badge alloc] initWithDictionary:badgeDictionary];
			[badgeItems addObject:badgeItem];
		}
		self.badge = badgeItems;
	}
	if(![dictionary[kDataHid] isKindOfClass:[NSNull class]]){
		self.hid = dictionary[kDataHid];
	}	
	if(![dictionary[kDataImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kDataImg];
	}	
	if(![dictionary[kDataIsTop] isKindOfClass:[NSNull class]]){
		self.isTop = dictionary[kDataIsTop];
	}	
	if(![dictionary[kDataLights] isKindOfClass:[NSNull class]]){
		self.lights = dictionary[kDataLights];
	}	
	if(![dictionary[kDataLink] isKindOfClass:[NSNull class]]){
		self.link = dictionary[kDataLink];
	}	
	if(![dictionary[kDataNid] isKindOfClass:[NSNull class]]){
		self.nid = dictionary[kDataNid];
	}	
	if(![dictionary[kDataRead] isKindOfClass:[NSNull class]]){
		self.read = dictionary[kDataRead];
	}	
	if(![dictionary[kDataReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kDataReplies];
	}	
	if(![dictionary[kDataShowSubjectReplies] isKindOfClass:[NSNull class]]){
		self.showSubjectReplies = [dictionary[kDataShowSubjectReplies] integerValue];
	}

	if(![dictionary[kDataSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kDataSummary];
	}	
	if(![dictionary[kDataTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kDataTitle];
	}	
	if(![dictionary[kDataType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kDataType] integerValue];
	}

	if(![dictionary[kDataUnReplay] isKindOfClass:[NSNull class]]){
		self.unReplay = [dictionary[kDataUnReplay] integerValue];
	}

	if(![dictionary[kDataUptime] isKindOfClass:[NSNull class]]){
		self.uptime = dictionary[kDataUptime];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.badge != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(Badge * badgeElement in self.badge){
			[dictionaryElements addObject:[badgeElement toDictionary]];
		}
		dictionary[kDataBadge] = dictionaryElements;
	}
	if(self.hid != nil){
		dictionary[kDataHid] = self.hid;
	}
	if(self.img != nil){
		dictionary[kDataImg] = self.img;
	}
	if(self.isTop != nil){
		dictionary[kDataIsTop] = self.isTop;
	}
	if(self.lights != nil){
		dictionary[kDataLights] = self.lights;
	}
	if(self.link != nil){
		dictionary[kDataLink] = self.link;
	}
	if(self.nid != nil){
		dictionary[kDataNid] = self.nid;
	}
	if(self.read != nil){
		dictionary[kDataRead] = self.read;
	}
	if(self.replies != nil){
		dictionary[kDataReplies] = self.replies;
	}
	dictionary[kDataShowSubjectReplies] = @(self.showSubjectReplies);
	if(self.summary != nil){
		dictionary[kDataSummary] = self.summary;
	}
	if(self.title != nil){
		dictionary[kDataTitle] = self.title;
	}
	dictionary[kDataType] = @(self.type);
	dictionary[kDataUnReplay] = @(self.unReplay);
	if(self.uptime != nil){
		dictionary[kDataUptime] = self.uptime;
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
	if(self.badge != nil){
		[aCoder encodeObject:self.badge forKey:kDataBadge];
	}
	if(self.hid != nil){
		[aCoder encodeObject:self.hid forKey:kDataHid];
	}
	if(self.img != nil){
		[aCoder encodeObject:self.img forKey:kDataImg];
	}
	if(self.isTop != nil){
		[aCoder encodeObject:self.isTop forKey:kDataIsTop];
	}
	if(self.lights != nil){
		[aCoder encodeObject:self.lights forKey:kDataLights];
	}
	if(self.link != nil){
		[aCoder encodeObject:self.link forKey:kDataLink];
	}
	if(self.nid != nil){
		[aCoder encodeObject:self.nid forKey:kDataNid];
	}
	if(self.read != nil){
		[aCoder encodeObject:self.read forKey:kDataRead];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kDataReplies];
	}
	[aCoder encodeObject:@(self.showSubjectReplies) forKey:kDataShowSubjectReplies];	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kDataSummary];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kDataTitle];
	}
	[aCoder encodeObject:@(self.type) forKey:kDataType];	[aCoder encodeObject:@(self.unReplay) forKey:kDataUnReplay];	if(self.uptime != nil){
		[aCoder encodeObject:self.uptime forKey:kDataUptime];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.badge = [aDecoder decodeObjectForKey:kDataBadge];
	self.hid = [aDecoder decodeObjectForKey:kDataHid];
	self.img = [aDecoder decodeObjectForKey:kDataImg];
	self.isTop = [aDecoder decodeObjectForKey:kDataIsTop];
	self.lights = [aDecoder decodeObjectForKey:kDataLights];
	self.link = [aDecoder decodeObjectForKey:kDataLink];
	self.nid = [aDecoder decodeObjectForKey:kDataNid];
	self.read = [aDecoder decodeObjectForKey:kDataRead];
	self.replies = [aDecoder decodeObjectForKey:kDataReplies];
	self.showSubjectReplies = [[aDecoder decodeObjectForKey:kDataShowSubjectReplies] integerValue];
	self.summary = [aDecoder decodeObjectForKey:kDataSummary];
	self.title = [aDecoder decodeObjectForKey:kDataTitle];
	self.type = [[aDecoder decodeObjectForKey:kDataType] integerValue];
	self.unReplay = [[aDecoder decodeObjectForKey:kDataUnReplay] integerValue];
	self.uptime = [aDecoder decodeObjectForKey:kDataUptime];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBAData *copy = [NBAData new];

	copy.badge = [self.badge copy];
	copy.hid = [self.hid copy];
	copy.img = [self.img copy];
	copy.isTop = [self.isTop copy];
	copy.lights = [self.lights copy];
	copy.link = [self.link copy];
	copy.nid = [self.nid copy];
	copy.read = [self.read copy];
	copy.replies = [self.replies copy];
	copy.showSubjectReplies = self.showSubjectReplies;
	copy.summary = [self.summary copy];
	copy.title = [self.title copy];
	copy.type = self.type;
	copy.unReplay = self.unReplay;
	copy.uptime = [self.uptime copy];

	return copy;
}
@end
