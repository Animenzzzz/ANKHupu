//
//	Quote.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentType5Quote.h"

NSString *const kCommentType5QuoteAttr = @"attr";
NSString *const kCommentType5QuoteContent = @"content";
NSString *const kCommentType5QuoteHeader = @"header";
NSString *const kCommentType5QuotePid = @"pid";
NSString *const kCommentType5QuotePuid = @"puid";
NSString *const kCommentType5QuoteTogglecontent = @"togglecontent";

@interface CommentType5Quote ()
@end
@implementation CommentType5Quote




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommentType5QuoteAttr] isKindOfClass:[NSNull class]]){
		self.attr = [[CommentAttr alloc] initWithDictionary:dictionary[kCommentType5QuoteAttr]];
	}

	if(![dictionary[kCommentType5QuoteContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kCommentType5QuoteContent];
	}	
	if(![dictionary[kCommentType5QuoteHeader] isKindOfClass:[NSNull class]]){
		self.header = dictionary[kCommentType5QuoteHeader];
	}	
	if(![dictionary[kCommentType5QuotePid] isKindOfClass:[NSNull class]]){
		self.pid = dictionary[kCommentType5QuotePid];
	}	
	if(![dictionary[kCommentType5QuotePuid] isKindOfClass:[NSNull class]]){
		self.puid = dictionary[kCommentType5QuotePuid];
	}	
	if(![dictionary[kCommentType5QuoteTogglecontent] isKindOfClass:[NSNull class]]){
		self.togglecontent = dictionary[kCommentType5QuoteTogglecontent];
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
		dictionary[kCommentType5QuoteAttr] = [self.attr toDictionary];
	}
	if(self.content != nil){
		dictionary[kCommentType5QuoteContent] = self.content;
	}
	if(self.header != nil){
		dictionary[kCommentType5QuoteHeader] = self.header;
	}
	if(self.pid != nil){
		dictionary[kCommentType5QuotePid] = self.pid;
	}
	if(self.puid != nil){
		dictionary[kCommentType5QuotePuid] = self.puid;
	}
	if(self.togglecontent != nil){
		dictionary[kCommentType5QuoteTogglecontent] = self.togglecontent;
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
		[aCoder encodeObject:self.attr forKey:kCommentType5QuoteAttr];
	}
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kCommentType5QuoteContent];
	}
	if(self.header != nil){
		[aCoder encodeObject:self.header forKey:kCommentType5QuoteHeader];
	}
	if(self.pid != nil){
		[aCoder encodeObject:self.pid forKey:kCommentType5QuotePid];
	}
	if(self.puid != nil){
		[aCoder encodeObject:self.puid forKey:kCommentType5QuotePuid];
	}
	if(self.togglecontent != nil){
		[aCoder encodeObject:self.togglecontent forKey:kCommentType5QuoteTogglecontent];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.attr = [aDecoder decodeObjectForKey:kCommentType5QuoteAttr];
	self.content = [aDecoder decodeObjectForKey:kCommentType5QuoteContent];
	self.header = [aDecoder decodeObjectForKey:kCommentType5QuoteHeader];
	self.pid = [aDecoder decodeObjectForKey:kCommentType5QuotePid];
	self.puid = [aDecoder decodeObjectForKey:kCommentType5QuotePuid];
	self.togglecontent = [aDecoder decodeObjectForKey:kCommentType5QuoteTogglecontent];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentType5Quote *copy = [CommentType5Quote new];

	copy.attr = [self.attr copy];
	copy.content = [self.content copy];
	copy.header = [self.header copy];
	copy.pid = [self.pid copy];
	copy.puid = [self.puid copy];
	copy.togglecontent = [self.togglecontent copy];

	return copy;
}
@end
