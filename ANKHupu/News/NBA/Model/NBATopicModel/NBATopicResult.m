//
//	Result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NBATopicResult.h"

NSString *const kNBATopicResultAddtime = @"addtime";
NSString *const kNBATopicResultDisplayType = @"display_type";
NSString *const kNBATopicResultGroups = @"groups";
NSString *const kNBATopicResultImg = @"img";
NSString *const kNBATopicResultImgM = @"img_m";
NSString *const kNBATopicResultIsTop = @"is_top";
NSString *const kNBATopicResultIsTopValue = @"is_top_value";
NSString *const kNBATopicResultLeague = @"league";
NSString *const kNBATopicResultNid = @"nid";
NSString *const kNBATopicResultReplies = @"replies";
NSString *const kNBATopicResultShare = @"share";
NSString *const kNBATopicResultSnid = @"snid";
NSString *const kNBATopicResultSummary = @"summary";
NSString *const kNBATopicResultTitle = @"title";
NSString *const kNBATopicResultTopTitle = @"top_title";

@interface NBATopicResult ()
@end
@implementation NBATopicResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNBATopicResultAddtime] isKindOfClass:[NSNull class]]){
		self.addtime = dictionary[kNBATopicResultAddtime];
	}	
	if(![dictionary[kNBATopicResultDisplayType] isKindOfClass:[NSNull class]]){
		self.displayType = [dictionary[kNBATopicResultDisplayType] integerValue];
	}

	if(dictionary[kNBATopicResultGroups] != nil && [dictionary[kNBATopicResultGroups] isKindOfClass:[NSArray class]]){
		NSArray * groupsDictionaries = dictionary[kNBATopicResultGroups];
		NSMutableArray * groupsItems = [NSMutableArray array];
		for(NSDictionary * groupsDictionary in groupsDictionaries){
			NBATopicGroup * groupsItem = [[NBATopicGroup alloc] initWithDictionary:groupsDictionary];
			[groupsItems addObject:groupsItem];
		}
		self.groups = groupsItems;
	}
	if(![dictionary[kNBATopicResultImg] isKindOfClass:[NSNull class]]){
		self.img = dictionary[kNBATopicResultImg];
	}	
	if(![dictionary[kNBATopicResultImgM] isKindOfClass:[NSNull class]]){
		self.imgM = dictionary[kNBATopicResultImgM];
	}	
	if(![dictionary[kNBATopicResultIsTop] isKindOfClass:[NSNull class]]){
		self.isTop = dictionary[kNBATopicResultIsTop];
	}	
	if(![dictionary[kNBATopicResultIsTopValue] isKindOfClass:[NSNull class]]){
		self.isTopValue = dictionary[kNBATopicResultIsTopValue];
	}	
	if(![dictionary[kNBATopicResultLeague] isKindOfClass:[NSNull class]]){
		self.league = dictionary[kNBATopicResultLeague];
	}	
	if(![dictionary[kNBATopicResultNid] isKindOfClass:[NSNull class]]){
		self.nid = dictionary[kNBATopicResultNid];
	}	
	if(![dictionary[kNBATopicResultReplies] isKindOfClass:[NSNull class]]){
		self.replies = dictionary[kNBATopicResultReplies];
	}	
	if(![dictionary[kNBATopicResultShare] isKindOfClass:[NSNull class]]){
		self.share = [[NBATopicShare alloc] initWithDictionary:dictionary[kNBATopicResultShare]];
	}

	if(![dictionary[kNBATopicResultSnid] isKindOfClass:[NSNull class]]){
		self.snid = dictionary[kNBATopicResultSnid];
	}	
	if(![dictionary[kNBATopicResultSummary] isKindOfClass:[NSNull class]]){
		self.summary = dictionary[kNBATopicResultSummary];
	}	
	if(![dictionary[kNBATopicResultTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kNBATopicResultTitle];
	}	
	if(![dictionary[kNBATopicResultTopTitle] isKindOfClass:[NSNull class]]){
		self.topTitle = dictionary[kNBATopicResultTopTitle];
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
		dictionary[kNBATopicResultAddtime] = self.addtime;
	}
	dictionary[kNBATopicResultDisplayType] = @(self.displayType);
	if(self.groups != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(NBATopicGroup * groupsElement in self.groups){
			[dictionaryElements addObject:[groupsElement toDictionary]];
		}
		dictionary[kNBATopicResultGroups] = dictionaryElements;
	}
	if(self.img != nil){
		dictionary[kNBATopicResultImg] = self.img;
	}
	if(self.imgM != nil){
		dictionary[kNBATopicResultImgM] = self.imgM;
	}
	if(self.isTop != nil){
		dictionary[kNBATopicResultIsTop] = self.isTop;
	}
	if(self.isTopValue != nil){
		dictionary[kNBATopicResultIsTopValue] = self.isTopValue;
	}
	if(self.league != nil){
		dictionary[kNBATopicResultLeague] = self.league;
	}
	if(self.nid != nil){
		dictionary[kNBATopicResultNid] = self.nid;
	}
	if(self.replies != nil){
		dictionary[kNBATopicResultReplies] = self.replies;
	}
	if(self.share != nil){
		dictionary[kNBATopicResultShare] = [self.share toDictionary];
	}
	if(self.snid != nil){
		dictionary[kNBATopicResultSnid] = self.snid;
	}
	if(self.summary != nil){
		dictionary[kNBATopicResultSummary] = self.summary;
	}
	if(self.title != nil){
		dictionary[kNBATopicResultTitle] = self.title;
	}
	if(self.topTitle != nil){
		dictionary[kNBATopicResultTopTitle] = self.topTitle;
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
		[aCoder encodeObject:self.addtime forKey:kNBATopicResultAddtime];
	}
	[aCoder encodeObject:@(self.displayType) forKey:kNBATopicResultDisplayType];	if(self.groups != nil){
		[aCoder encodeObject:self.groups forKey:kNBATopicResultGroups];
	}
	if(self.img != nil){
		[aCoder encodeObject:self.img forKey:kNBATopicResultImg];
	}
	if(self.imgM != nil){
		[aCoder encodeObject:self.imgM forKey:kNBATopicResultImgM];
	}
	if(self.isTop != nil){
		[aCoder encodeObject:self.isTop forKey:kNBATopicResultIsTop];
	}
	if(self.isTopValue != nil){
		[aCoder encodeObject:self.isTopValue forKey:kNBATopicResultIsTopValue];
	}
	if(self.league != nil){
		[aCoder encodeObject:self.league forKey:kNBATopicResultLeague];
	}
	if(self.nid != nil){
		[aCoder encodeObject:self.nid forKey:kNBATopicResultNid];
	}
	if(self.replies != nil){
		[aCoder encodeObject:self.replies forKey:kNBATopicResultReplies];
	}
	if(self.share != nil){
		[aCoder encodeObject:self.share forKey:kNBATopicResultShare];
	}
	if(self.snid != nil){
		[aCoder encodeObject:self.snid forKey:kNBATopicResultSnid];
	}
	if(self.summary != nil){
		[aCoder encodeObject:self.summary forKey:kNBATopicResultSummary];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kNBATopicResultTitle];
	}
	if(self.topTitle != nil){
		[aCoder encodeObject:self.topTitle forKey:kNBATopicResultTopTitle];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.addtime = [aDecoder decodeObjectForKey:kNBATopicResultAddtime];
	self.displayType = [[aDecoder decodeObjectForKey:kNBATopicResultDisplayType] integerValue];
	self.groups = [aDecoder decodeObjectForKey:kNBATopicResultGroups];
	self.img = [aDecoder decodeObjectForKey:kNBATopicResultImg];
	self.imgM = [aDecoder decodeObjectForKey:kNBATopicResultImgM];
	self.isTop = [aDecoder decodeObjectForKey:kNBATopicResultIsTop];
	self.isTopValue = [aDecoder decodeObjectForKey:kNBATopicResultIsTopValue];
	self.league = [aDecoder decodeObjectForKey:kNBATopicResultLeague];
	self.nid = [aDecoder decodeObjectForKey:kNBATopicResultNid];
	self.replies = [aDecoder decodeObjectForKey:kNBATopicResultReplies];
	self.share = [aDecoder decodeObjectForKey:kNBATopicResultShare];
	self.snid = [aDecoder decodeObjectForKey:kNBATopicResultSnid];
	self.summary = [aDecoder decodeObjectForKey:kNBATopicResultSummary];
	self.title = [aDecoder decodeObjectForKey:kNBATopicResultTitle];
	self.topTitle = [aDecoder decodeObjectForKey:kNBATopicResultTopTitle];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NBATopicResult *copy = [NBATopicResult new];

	copy.addtime = [self.addtime copy];
	copy.displayType = self.displayType;
	copy.groups = [self.groups copy];
	copy.img = [self.img copy];
	copy.imgM = [self.imgM copy];
	copy.isTop = [self.isTop copy];
	copy.isTopValue = [self.isTopValue copy];
	copy.league = [self.league copy];
	copy.nid = [self.nid copy];
	copy.replies = [self.replies copy];
	copy.share = [self.share copy];
	copy.snid = [self.snid copy];
	copy.summary = [self.summary copy];
	copy.title = [self.title copy];
	copy.topTitle = [self.topTitle copy];

	return copy;
}
@end
