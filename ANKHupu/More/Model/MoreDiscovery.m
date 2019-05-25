//
//	Discovery.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "MoreDiscovery.h"

NSString *const kMoreDiscoveryEn = @"en";
NSString *const kMoreDiscoveryIsshow = @"isshow";
NSString *const kMoreDiscoveryLogo = @"logo";
NSString *const kMoreDiscoveryName = @"name";
NSString *const kMoreDiscoveryShowDefaultTab = @"show_default_tab";
NSString *const kMoreDiscoveryShowTemplate = @"show_template";

@interface MoreDiscovery ()
@end
@implementation MoreDiscovery




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMoreDiscoveryEn] isKindOfClass:[NSNull class]]){
		self.en = dictionary[kMoreDiscoveryEn];
	}	
	if(![dictionary[kMoreDiscoveryIsshow] isKindOfClass:[NSNull class]]){
		self.isshow = [dictionary[kMoreDiscoveryIsshow] integerValue];
	}

	if(![dictionary[kMoreDiscoveryLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kMoreDiscoveryLogo];
	}	
	if(![dictionary[kMoreDiscoveryName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kMoreDiscoveryName];
	}	
	if(![dictionary[kMoreDiscoveryShowDefaultTab] isKindOfClass:[NSNull class]]){
		self.showDefaultTab = dictionary[kMoreDiscoveryShowDefaultTab];
	}	
	if(![dictionary[kMoreDiscoveryShowTemplate] isKindOfClass:[NSNull class]]){
		self.showTemplate = dictionary[kMoreDiscoveryShowTemplate];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.en != nil){
		dictionary[kMoreDiscoveryEn] = self.en;
	}
	dictionary[kMoreDiscoveryIsshow] = @(self.isshow);
	if(self.logo != nil){
		dictionary[kMoreDiscoveryLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kMoreDiscoveryName] = self.name;
	}
	if(self.showDefaultTab != nil){
		dictionary[kMoreDiscoveryShowDefaultTab] = self.showDefaultTab;
	}
	if(self.showTemplate != nil){
		dictionary[kMoreDiscoveryShowTemplate] = self.showTemplate;
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
	if(self.en != nil){
		[aCoder encodeObject:self.en forKey:kMoreDiscoveryEn];
	}
	[aCoder encodeObject:@(self.isshow) forKey:kMoreDiscoveryIsshow];	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kMoreDiscoveryLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kMoreDiscoveryName];
	}
	if(self.showDefaultTab != nil){
		[aCoder encodeObject:self.showDefaultTab forKey:kMoreDiscoveryShowDefaultTab];
	}
	if(self.showTemplate != nil){
		[aCoder encodeObject:self.showTemplate forKey:kMoreDiscoveryShowTemplate];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.en = [aDecoder decodeObjectForKey:kMoreDiscoveryEn];
	self.isshow = [[aDecoder decodeObjectForKey:kMoreDiscoveryIsshow] integerValue];
	self.logo = [aDecoder decodeObjectForKey:kMoreDiscoveryLogo];
	self.name = [aDecoder decodeObjectForKey:kMoreDiscoveryName];
	self.showDefaultTab = [aDecoder decodeObjectForKey:kMoreDiscoveryShowDefaultTab];
	self.showTemplate = [aDecoder decodeObjectForKey:kMoreDiscoveryShowTemplate];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	MoreDiscovery *copy = [MoreDiscovery new];

	copy.en = [self.en copy];
	copy.isshow = self.isshow;
	copy.logo = [self.logo copy];
	copy.name = [self.name copy];
	copy.showDefaultTab = [self.showDefaultTab copy];
	copy.showTemplate = [self.showTemplate copy];

	return copy;
}
@end
