//
//	QuoteData.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentQuoteData.h"

NSString *const kCommentQuoteDataContent = @"content";
NSString *const kCommentQuoteDataUserName = @"user_name";

@interface CommentQuoteData ()
@end
@implementation CommentQuoteData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommentQuoteDataContent] isKindOfClass:[NSNull class]]){
		self.content = dictionary[kCommentQuoteDataContent];
	}	
	if(![dictionary[kCommentQuoteDataUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kCommentQuoteDataUserName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.content != nil){
		dictionary[kCommentQuoteDataContent] = self.content;
	}
	if(self.userName != nil){
		dictionary[kCommentQuoteDataUserName] = self.userName;
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
	if(self.content != nil){
		[aCoder encodeObject:self.content forKey:kCommentQuoteDataContent];
	}
	if(self.userName != nil){
		[aCoder encodeObject:self.userName forKey:kCommentQuoteDataUserName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.content = [aDecoder decodeObjectForKey:kCommentQuoteDataContent];
	self.userName = [aDecoder decodeObjectForKey:kCommentQuoteDataUserName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentQuoteData *copy = [CommentQuoteData new];

	copy.content = [self.content copy];
	copy.userName = [self.userName copy];

	return copy;
}
@end
