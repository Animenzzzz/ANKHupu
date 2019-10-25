//
//	New.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBATopicNew.h"

NSString *const kNBATopicNewHid = @"hid";
NSString *const kNBATopicNewImg = @"img";
NSString *const kNBATopicNewLeague = @"league";
NSString *const kNBATopicNewLights = @"lights";
NSString *const kNBATopicNewLink = @"link";
NSString *const kNBATopicNewNid = @"nid";
NSString *const kNBATopicNewRead = @"read";
NSString *const kNBATopicNewReplies = @"replies";
NSString *const kNBATopicNewSummary = @"summary";
NSString *const kNBATopicNewTitle = @"title";
NSString *const kNBATopicNewType = @"type";
NSString *const kNBATopicNewUnReplay = @"un_replay";
NSString *const kNBATopicNewUptime = @"uptime";

@interface NBATopicNew ()
@end
@implementation NBATopicNew




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBATopicNewHid] isKindOfClass:[NSNull class]]){
		self.hid = dictionary[kNBATopicNewHid];
	}	
	if(![dictionary[kNBATopicNewImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kNBATopicNewImg];
	}	
	if(![dictionary[kNBATopicNewLeague] isKindOfClass:[NSNull class]]){
		self.league = dictionary[kNBATopicNewLeague];
	}	
	if(![dictionary[kNBATopicNewLights] isKindOfClass:[NSNull class]]){
		self.lights = dictionary[kNBATopicNewLights];
	}	
	if(![dictionary[kNBATopicNewLink] isKindOfClass:[NSNull class]]){
		self.link = dictionary[kNBATopicNewLink];
	}	
	if(![dictionary[kNBATopicNewNid] isKindOfClass:[NSNull class]]){
		self.nid = dictionary[kNBATopicNewNid];
	}	
	if(![dictionary[kNBATopicNewRead] isKindOfClass:[NSNull class]]){
		self.read = dictionary[kNBATopicNewRead];
	}	
	if(![dictionary[kNBATopicNewReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kNBATopicNewReplies];
	}	
	if(![dictionary[kNBATopicNewSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kNBATopicNewSummary];
	}	
	if(![dictionary[kNBATopicNewTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kNBATopicNewTitle];
	}	
	if(![dictionary[kNBATopicNewType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kNBATopicNewType] integerValue];
	}

	if(![dictionary[kNBATopicNewUnReplay] isKindOfClass:[NSNull class]]){
		self.unReplay = dictionary[kNBATopicNewUnReplay];
	}	
	if(![dictionary[kNBATopicNewUptime] isKindOfClass:[NSNull class]]){
		self.uptime = dictionary[kNBATopicNewUptime];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.hid != nil){
		dictionary[kNBATopicNewHid] = self.hid;
	}
	if(self.img != nil){
		dictionary[kNBATopicNewImg] = self.img;
	}
	if(self.league != nil){
		dictionary[kNBATopicNewLeague] = self.league;
	}
	if(self.lights != nil){
		dictionary[kNBATopicNewLights] = self.lights;
	}
	if(self.link != nil){
		dictionary[kNBATopicNewLink] = self.link;
	}
	if(self.nid != nil){
		dictionary[kNBATopicNewNid] = self.nid;
	}
	if(self.read != nil){
		dictionary[kNBATopicNewRead] = self.read;
	}
	if(self.replies != nil){
		dictionary[kNBATopicNewReplies] = self.replies;
	}
	if(self.summary != nil){
		dictionary[kNBATopicNewSummary] = self.summary;
	}
	if(self.title != nil){
		dictionary[kNBATopicNewTitle] = self.title;
	}
	dictionary[kNBATopicNewType] = @(self.type);
	if(self.unReplay != nil){
		dictionary[kNBATopicNewUnReplay] = self.unReplay;
	}
	if(self.uptime != nil){
		dictionary[kNBATopicNewUptime] = self.uptime;
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
	if(self.hid != nil){
		[aCoder encodeObject:self.hid forKey:kNBATopicNewHid];
	}
	if(self.img != nil){
		[aCoder encodeObject:self.img forKey:kNBATopicNewImg];
	}
	if(self.league != nil){
		[aCoder encodeObject:self.league forKey:kNBATopicNewLeague];
	}
	if(self.lights != nil){
		[aCoder encodeObject:self.lights forKey:kNBATopicNewLights];
	}
	if(self.link != nil){
		[aCoder encodeObject:self.link forKey:kNBATopicNewLink];
	}
	if(self.nid != nil){
		[aCoder encodeObject:self.nid forKey:kNBATopicNewNid];
	}
	if(self.read != nil){
		[aCoder encodeObject:self.read forKey:kNBATopicNewRead];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kNBATopicNewReplies];
	}
	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kNBATopicNewSummary];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kNBATopicNewTitle];
	}
	[aCoder encodeObject:@(self.type) forKey:kNBATopicNewType];	if(self.unReplay != nil){
		[aCoder encodeObject:self.unReplay forKey:kNBATopicNewUnReplay];
	}
	if(self.uptime != nil){
		[aCoder encodeObject:self.uptime forKey:kNBATopicNewUptime];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.hid = [aDecoder decodeObjectForKey:kNBATopicNewHid];
	self.img = [aDecoder decodeObjectForKey:kNBATopicNewImg];
	self.league = [aDecoder decodeObjectForKey:kNBATopicNewLeague];
	self.lights = [aDecoder decodeObjectForKey:kNBATopicNewLights];
	self.link = [aDecoder decodeObjectForKey:kNBATopicNewLink];
	self.nid = [aDecoder decodeObjectForKey:kNBATopicNewNid];
	self.read = [aDecoder decodeObjectForKey:kNBATopicNewRead];
	self.replies = [aDecoder decodeObjectForKey:kNBATopicNewReplies];
	self.summary = [aDecoder decodeObjectForKey:kNBATopicNewSummary];
	self.title = [aDecoder decodeObjectForKey:kNBATopicNewTitle];
	self.type = [[aDecoder decodeObjectForKey:kNBATopicNewType] integerValue];
	self.unReplay = [aDecoder decodeObjectForKey:kNBATopicNewUnReplay];
	self.uptime = [aDecoder decodeObjectForKey:kNBATopicNewUptime];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBATopicNew *copy = [NBATopicNew new];

	copy.hid = [self.hid copy];
	copy.img = [self.img copy];
	copy.league = [self.league copy];
	copy.lights = [self.lights copy];
	copy.link = [self.link copy];
	copy.nid = [self.nid copy];
	copy.read = [self.read copy];
	copy.replies = [self.replies copy];
	copy.summary = [self.summary copy];
	copy.title = [self.title copy];
	copy.type = self.type;
	copy.unReplay = [self.unReplay copy];
	copy.uptime = [self.uptime copy];

	return copy;
}
@end
