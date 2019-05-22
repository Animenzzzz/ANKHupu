//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "DetailData.h"

NSString *const kDataAdvId = @"advId";
NSString *const kDataCid = @"cid";
NSString *const kDataClient = @"client";
NSString *const kDataFt = @"ft";
NSString *const kDataHeader = @"header";
NSString *const kDataIsAdmin = @"is_admin";
NSString *const kDataIsJrs = @"is_jrs";
NSString *const kDataIsLogin = @"is_login";
NSString *const kDataLeaguesEn = @"leaguesEn";
NSString *const kDataNews = @"news";
NSString *const kDataNight = @"night";
NSString *const kDataNopic = @"nopic";
NSString *const kDataProjectId = @"projectId";
NSString *const kDataPuid = @"puid";
NSString *const kDataUid = @"uid";
NSString *const kDataUserName = @"user_name";
NSString *const kDataVersion = @"version";

@interface DetailData ()
@end
@implementation DetailData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kDataAdvId] isKindOfClass:[NSNull class]]){
		self.advId = dictionary[kDataAdvId];
	}	
	if(![dictionary[kDataCid] isKindOfClass:[NSNull class]]){
		self.cid = dictionary[kDataCid];
	}	
	if(![dictionary[kDataClient] isKindOfClass:[NSNull class]]){
		self.client = dictionary[kDataClient];
	}	
	if(![dictionary[kDataFt] isKindOfClass:[NSNull class]]){
		self.ft = [dictionary[kDataFt] integerValue];
	}

	if(![dictionary[kDataHeader] isKindOfClass:[NSNull class]]){
		self.header = dictionary[kDataHeader];
	}	
	if(![dictionary[kDataIsAdmin] isKindOfClass:[NSNull class]]){
		self.isAdmin = [dictionary[kDataIsAdmin] integerValue];
	}

	if(![dictionary[kDataIsJrs] isKindOfClass:[NSNull class]]){
		self.isJrs = [dictionary[kDataIsJrs] boolValue];
	}

	if(![dictionary[kDataIsLogin] isKindOfClass:[NSNull class]]){
		self.isLogin = [dictionary[kDataIsLogin] integerValue];
	}

	if(![dictionary[kDataLeaguesEn] isKindOfClass:[NSNull class]]){
		self.leaguesEn = dictionary[kDataLeaguesEn];
	}	
	if(![dictionary[kDataNews] isKindOfClass:[NSNull class]]){
		self.news = [[H5New alloc] initWithDictionary:dictionary[kDataNews]];
	}

	if(![dictionary[kDataNight] isKindOfClass:[NSNull class]]){
		self.night = [dictionary[kDataNight] integerValue];
	}

	if(![dictionary[kDataNopic] isKindOfClass:[NSNull class]]){
		self.nopic = dictionary[kDataNopic];
	}	
	if(![dictionary[kDataProjectId] isKindOfClass:[NSNull class]]){
		self.projectId = dictionary[kDataProjectId];
	}	
	if(![dictionary[kDataPuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kDataPuid];
	}	
	if(![dictionary[kDataUid] isKindOfClass:[NSNull class]]){
		self.uid = dictionary[kDataUid];
	}	
	if(![dictionary[kDataUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kDataUserName];
	}	
	if(![dictionary[kDataVersion] isKindOfClass:[NSNull class]]){
		self.version = dictionary[kDataVersion];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.advId != nil){
		dictionary[kDataAdvId] = self.advId;
	}
	if(self.cid != nil){
		dictionary[kDataCid] = self.cid;
	}
	if(self.client != nil){
		dictionary[kDataClient] = self.client;
	}
	dictionary[kDataFt] = @(self.ft);
	if(self.header != nil){
		dictionary[kDataHeader] = self.header;
	}
	dictionary[kDataIsAdmin] = @(self.isAdmin);
	dictionary[kDataIsJrs] = @(self.isJrs);
	dictionary[kDataIsLogin] = @(self.isLogin);
	if(self.leaguesEn != nil){
		dictionary[kDataLeaguesEn] = self.leaguesEn;
	}
	if(self.news != nil){
		dictionary[kDataNews] = [self.news toDictionary];
	}
	dictionary[kDataNight] = @(self.night);
	if(self.nopic != nil){
		dictionary[kDataNopic] = self.nopic;
	}
	if(self.projectId != nil){
		dictionary[kDataProjectId] = self.projectId;
	}
	if(self.puid != nil){
		dictionary[kDataPuid] = self.puid;
	}
	if(self.uid != nil){
		dictionary[kDataUid] = self.uid;
	}
	if(self.userName != nil){
		dictionary[kDataUserName] = self.userName;
	}
	if(self.version != nil){
		dictionary[kDataVersion] = self.version;
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
	if(self.advId != nil){
		[aCoder encodeObject:self.advId forKey:kDataAdvId];
	}
	if(self.cid != nil){
		[aCoder encodeObject:self.cid forKey:kDataCid];
	}
	if(self.client != nil){
		[aCoder encodeObject:self.client forKey:kDataClient];
	}
	[aCoder encodeObject:@(self.ft) forKey:kDataFt];	if(self.header != nil){
		[aCoder encodeObject:self.header forKey:kDataHeader];
	}
	[aCoder encodeObject:@(self.isAdmin) forKey:kDataIsAdmin];	[aCoder encodeObject:@(self.isJrs) forKey:kDataIsJrs];	[aCoder encodeObject:@(self.isLogin) forKey:kDataIsLogin];	if(self.leaguesEn != nil){
		[aCoder encodeObject:self.leaguesEn forKey:kDataLeaguesEn];
	}
	if(self.news != nil){
		[aCoder encodeObject:self.news forKey:kDataNews];
	}
	[aCoder encodeObject:@(self.night) forKey:kDataNight];	if(self.nopic != nil){
		[aCoder encodeObject:self.nopic forKey:kDataNopic];
	}
	if(self.projectId != nil){
		[aCoder encodeObject:self.projectId forKey:kDataProjectId];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kDataPuid];
	}
	if(self.uid != nil){
		[aCoder encodeObject:self.uid forKey:kDataUid];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kDataUserName];
	}
	if(self.version != nil){
		[aCoder encodeObject:self.version forKey:kDataVersion];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.advId = [aDecoder decodeObjectForKey:kDataAdvId];
	self.cid = [aDecoder decodeObjectForKey:kDataCid];
	self.client = [aDecoder decodeObjectForKey:kDataClient];
	self.ft = [[aDecoder decodeObjectForKey:kDataFt] integerValue];
	self.header = [aDecoder decodeObjectForKey:kDataHeader];
	self.isAdmin = [[aDecoder decodeObjectForKey:kDataIsAdmin] integerValue];
	self.isJrs = [[aDecoder decodeObjectForKey:kDataIsJrs] boolValue];
	self.isLogin = [[aDecoder decodeObjectForKey:kDataIsLogin] integerValue];
	self.leaguesEn = [aDecoder decodeObjectForKey:kDataLeaguesEn];
	self.news = [aDecoder decodeObjectForKey:kDataNews];
	self.night = [[aDecoder decodeObjectForKey:kDataNight] integerValue];
	self.nopic = [aDecoder decodeObjectForKey:kDataNopic];
	self.projectId = [aDecoder decodeObjectForKey:kDataProjectId];
	self.puid = [aDecoder decodeObjectForKey:kDataPuid];
	self.uid = [aDecoder decodeObjectForKey:kDataUid];
	self.userName = [aDecoder decodeObjectForKey:kDataUserName];
	self.version = [aDecoder decodeObjectForKey:kDataVersion];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	DetailData *copy = [DetailData new];

	copy.advId = [self.advId copy];
	copy.cid = [self.cid copy];
	copy.client = [self.client copy];
	copy.ft = self.ft;
	copy.header = [self.header copy];
	copy.isAdmin = self.isAdmin;
	copy.isJrs = self.isJrs;
	copy.isLogin = self.isLogin;
	copy.leaguesEn = [self.leaguesEn copy];
	copy.news = [self.news copy];
	copy.night = self.night;
	copy.nopic = [self.nopic copy];
	copy.projectId = [self.projectId copy];
	copy.puid = [self.puid copy];
	copy.uid = [self.uid copy];
	copy.userName = [self.userName copy];
	copy.version = [self.version copy];

	return copy;
}
@end
