//
//	DtailData.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "DtailData.h"

NSString *const kDtailDataCid = @"cid";
NSString *const kDtailDataCount = @"count";
NSString *const kDtailDataData = @"data";
NSString *const kDtailDataHasNextPage = @"hasNextPage";
NSString *const kDtailDataIsAdmin = @"is_admin";
NSString *const kDtailDataIsLogin = @"is_login";
NSString *const kDtailDataLightComments = @"light_comments";
NSString *const kDtailDataLightMoreCount = @"light_more_count";
NSString *const kDtailDataLightMoreUrl = @"light_more_url";
NSString *const kDtailDataNews = @"news";
NSString *const kDtailDataUid = @"uid";

@interface DtailData ()
@end
@implementation DtailData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kDtailDataCid] isKindOfClass:[NSNull class]]){
		self.cid = dictionary[kDtailDataCid];
	}	
	if(![dictionary[kDtailDataCount] isKindOfClass:[NSNull class]]){
		self.count = dictionary[kDtailDataCount];
	}	
	if(dictionary[kDtailDataData] != nil && [dictionary[kDtailDataData] isKindOfClass:[NSArray class]]){
		NSArray * dataDictionaries = dictionary[kDtailDataData];
		NSMutableArray * dataItems = [NSMutableArray array];
		for(NSDictionary * dataDictionary in dataDictionaries){
			CommentData * dataItem = [[CommentData alloc] initWithDictionary:dataDictionary];
			[dataItems addObject:dataItem];
		}
		self.data = dataItems;
	}
	if(![dictionary[kDtailDataHasNextPage] isKindOfClass:[NSNull class]]){
		self.hasNextPage = [dictionary[kDtailDataHasNextPage] integerValue];
	}

	if(![dictionary[kDtailDataIsAdmin] isKindOfClass:[NSNull class]]){
		self.isAdmin = [dictionary[kDtailDataIsAdmin] integerValue];
	}

	if(![dictionary[kDtailDataIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kDtailDataIsLogin] integerValue];
	}

	if(dictionary[kDtailDataLightComments] != nil && [dictionary[kDtailDataLightComments] isKindOfClass:[NSArray class]]){
		NSArray * lightCommentsDictionaries = dictionary[kDtailDataLightComments];
		NSMutableArray * lightCommentsItems = [NSMutableArray array];
		for(NSDictionary * lightCommentsDictionary in lightCommentsDictionaries){
			LightComment * lightCommentsItem = [[LightComment alloc] initWithDictionary:lightCommentsDictionary];
			[lightCommentsItems addObject:lightCommentsItem];
		}
		self.lightComments = lightCommentsItems;
	}
	if(![dictionary[kDtailDataLightMoreCount] isKindOfClass:[NSNull class]]){
		self.lightMoreCount = dictionary[kDtailDataLightMoreCount];
	}	
	if(![dictionary[kDtailDataLightMoreUrl] isKindOfClass:[NSNull class]]){
		self.lightMoreUrl = dictionary[kDtailDataLightMoreUrl];
	}	
	if(![dictionary[kDtailDataNews] isKindOfClass:[NSNull class]]){
		self.news = [[CommentLinkCommentLinkNew alloc] initWithDictionary:dictionary[kDtailDataNews]];
	}

	if(![dictionary[kDtailDataUid] isKindOfClass:[NSNull class]]){
		self.uid = dictionary[kDtailDataUid];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.cid != nil){
		dictionary[kDtailDataCid] = self.cid;
	}
	if(self.count != nil){
		dictionary[kDtailDataCount] = self.count;
	}
	if(self.data != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(CommentData * dataElement in self.data){
			[dictionaryElements addObject:[dataElement toDictionary]];
		}
		dictionary[kDtailDataData] = dictionaryElements;
	}
	dictionary[kDtailDataHasNextPage] = @(self.hasNextPage);
	dictionary[kDtailDataIsAdmin] = @(self.isAdmin);
	dictionary[kDtailDataIsLogin] = @(self.isLogin);
	if(self.lightComments != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(LightComment * lightCommentsElement in self.lightComments){
			[dictionaryElements addObject:[lightCommentsElement toDictionary]];
		}
		dictionary[kDtailDataLightComments] = dictionaryElements;
	}
	if(self.lightMoreCount != nil){
		dictionary[kDtailDataLightMoreCount] = self.lightMoreCount;
	}
	if(self.lightMoreUrl != nil){
		dictionary[kDtailDataLightMoreUrl] = self.lightMoreUrl;
	}
	if(self.news != nil){
		dictionary[kDtailDataNews] = [self.news toDictionary];
	}
	if(self.uid != nil){
		dictionary[kDtailDataUid] = self.uid;
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
	if(self.cid != nil){
		[aCoder encodeObject:self.cid forKey:kDtailDataCid];
	}
	if(self.count != nil){
		[aCoder encodeObject:self.count forKey:kDtailDataCount];
	}
	if(self.data != nil){
		[aCoder encodeObject:self.data forKey:kDtailDataData];
	}
	[aCoder encodeObject:@(self.hasNextPage) forKey:kDtailDataHasNextPage];	[aCoder encodeObject:@(self.isAdmin) forKey:kDtailDataIsAdmin];	[aCoder encodeObject:@(self.isLogin) forKey:kDtailDataIsLogin];	if(self.lightComments != nil){
		[aCoder encodeObject:self.lightComments forKey:kDtailDataLightComments];
	}
	if(self.lightMoreCount != nil){
		[aCoder encodeObject:self.lightMoreCount forKey:kDtailDataLightMoreCount];
	}
	if(self.lightMoreUrl != nil){
		[aCoder encodeObject:self.lightMoreUrl forKey:kDtailDataLightMoreUrl];
	}
	if(self.news != nil){
		[aCoder encodeObject:self.news forKey:kDtailDataNews];
	}
	if(self.uid != nil){
		[aCoder encodeObject:self.uid forKey:kDtailDataUid];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.cid = [aDecoder decodeObjectForKey:kDtailDataCid];
	self.count = [aDecoder decodeObjectForKey:kDtailDataCount];
	self.data = [aDecoder decodeObjectForKey:kDtailDataData];
	self.hasNextPage = [[aDecoder decodeObjectForKey:kDtailDataHasNextPage] integerValue];
	self.isAdmin = [[aDecoder decodeObjectForKey:kDtailDataIsAdmin] integerValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kDtailDataIsLogin] integerValue];
	self.lightComments = [aDecoder decodeObjectForKey:kDtailDataLightComments];
	self.lightMoreCount = [aDecoder decodeObjectForKey:kDtailDataLightMoreCount];
	self.lightMoreUrl = [aDecoder decodeObjectForKey:kDtailDataLightMoreUrl];
	self.news = [aDecoder decodeObjectForKey:kDtailDataNews];
	self.uid = [aDecoder decodeObjectForKey:kDtailDataUid];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	DtailData *copy = [DtailData new];

	copy.cid = [self.cid copy];
	copy.count = [self.count copy];
	copy.data = [self.data copy];
	copy.hasNextPage = self.hasNextPage;
	copy.isAdmin = self.isAdmin;
	copy.isLogin = self.isLogin;
	copy.lightComments = [self.lightComments copy];
	copy.lightMoreCount = [self.lightMoreCount copy];
	copy.lightMoreUrl = [self.lightMoreUrl copy];
	copy.news = [self.news copy];
	copy.uid = [self.uid copy];

	return copy;
}
@end
