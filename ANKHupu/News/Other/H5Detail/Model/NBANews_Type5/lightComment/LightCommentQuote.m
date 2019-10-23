//
//	Quote.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LightCommentQuote.h"

NSString *const kQuoteAttr = @"attr";
NSString *const kQuoteContent = @"content";
NSString *const kQuoteHeader = @"header";
NSString *const kQuotePid = @"pid";
NSString *const kQuotePuid = @"puid";
NSString *const kQuoteTogglecontent = @"togglecontent";

@interface LightCommentQuote ()
@end
@implementation LightCommentQuote




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kQuoteAttr] isKindOfClass:[NSNull class]]){
		self.attr = [[LightCommentAttr alloc] initWithDictionary:dictionary[kQuoteAttr]];
	}

	if(![dictionary[kQuoteContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kQuoteContent];
	}	
	if(![dictionary[kQuoteHeader] isKindOfClass:[NSNull class]]){
		self.header = dictionary[kQuoteHeader];
	}	
	if(![dictionary[kQuotePid] isKindOfClass:[NSNull class]]){
		self.pid = dictionary[kQuotePid];
	}	
	if(![dictionary[kQuotePuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kQuotePuid];
	}	
	if(![dictionary[kQuoteTogglecontent] isKindOfClass:[NSNull class]]){
		self.togglecontent = dictionary[kQuoteTogglecontent];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.attr != nil){
		dictionary[kQuoteAttr] = [self.attr toDictionary];
	}
	if(self.content != nil){
		dictionary[kQuoteContent] = self.content;
	}
	if(self.header != nil){
		dictionary[kQuoteHeader] = self.header;
	}
	if(self.pid != nil){
		dictionary[kQuotePid] = self.pid;
	}
	if(self.puid != nil){
		dictionary[kQuotePuid] = self.puid;
	}
	if(self.togglecontent != nil){
		dictionary[kQuoteTogglecontent] = self.togglecontent;
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
	if(self.attr != nil){
		[aCoder encodeObject:self.attr forKey:kQuoteAttr];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kQuoteContent];
	}
	if(self.header != nil){
		[aCoder encodeObject:self.header forKey:kQuoteHeader];
	}
	if(self.pid != nil){
		[aCoder encodeObject:self.pid forKey:kQuotePid];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kQuotePuid];
	}
	if(self.togglecontent != nil){
		[aCoder encodeObject:self.togglecontent forKey:kQuoteTogglecontent];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.attr = [aDecoder decodeObjectForKey:kQuoteAttr];
	self.content = [aDecoder decodeObjectForKey:kQuoteContent];
	self.header = [aDecoder decodeObjectForKey:kQuoteHeader];
	self.pid = [aDecoder decodeObjectForKey:kQuotePid];
	self.puid = [aDecoder decodeObjectForKey:kQuotePuid];
	self.togglecontent = [aDecoder decodeObjectForKey:kQuoteTogglecontent];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LightCommentQuote *copy = [LightCommentQuote new];

	copy.attr = [self.attr copy];
	copy.content = [self.content copy];
	copy.header = [self.header copy];
	copy.pid = [self.pid copy];
	copy.puid = [self.puid copy];
	copy.togglecontent = [self.togglecontent copy];

	return copy;
}
@end
