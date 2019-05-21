//
//	Tab.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Tab.h"

NSString *const kTabIcon = @"icon";
NSString *const kTabName = @"name";
NSString *const kTabSchema = @"schema";

@interface Tab ()
@end
@implementation Tab




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTabIcon] isKindOfClass:[NSNull class]]){
		self.icon = dictionary[kTabIcon];
	}	
	if(![dictionary[kTabName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kTabName];
	}	
	if(![dictionary[kTabSchema] isKindOfClass:[NSNull class]]){
		self.schema = dictionary[kTabSchema];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.icon != nil){
		dictionary[kTabIcon] = self.icon;
	}
	if(self.name != nil){
		dictionary[kTabName] = self.name;
	}
	if(self.schema != nil){
		dictionary[kTabSchema] = self.schema;
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
	if(self.icon != nil){
		[aCoder encodeObject:self.icon forKey:kTabIcon];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kTabName];
	}
	if(self.schema != nil){
		[aCoder encodeObject:self.schema forKey:kTabSchema];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.icon = [aDecoder decodeObjectForKey:kTabIcon];
	self.name = [aDecoder decodeObjectForKey:kTabName];
	self.schema = [aDecoder decodeObjectForKey:kTabSchema];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Tab *copy = [Tab new];

	copy.icon = [self.icon copy];
	copy.name = [self.name copy];
	copy.schema = [self.schema copy];

	return copy;
}
@end