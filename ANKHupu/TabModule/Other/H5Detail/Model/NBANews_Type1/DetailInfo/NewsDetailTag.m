//
//	NewsDetailTag.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NewsDetailTag.h"

NSString *const kNewsDetailTagName = @"name";
NSString *const kNewsDetailTagUrl = @"url";

@interface NewsDetailTag ()
@end
@implementation NewsDetailTag




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kNewsDetailTagName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kNewsDetailTagName];
	}	
	if(![dictionary[kNewsDetailTagUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kNewsDetailTagUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.name != nil){
		dictionary[kNewsDetailTagName] = self.name;
	}
	if(self.url != nil){
		dictionary[kNewsDetailTagUrl] = self.url;
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
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kNewsDetailTagName];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kNewsDetailTagUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.name = [aDecoder decodeObjectForKey:kNewsDetailTagName];
	self.url = [aDecoder decodeObjectForKey:kNewsDetailTagUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	NewsDetailTag *copy = [NewsDetailTag new];

	copy.name = [self.name copy];
	copy.url = [self.url copy];

	return copy;
}
@end
