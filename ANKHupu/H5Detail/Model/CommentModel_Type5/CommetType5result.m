//
//	CommetType5result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommetType5result.h"

NSString *const kCommetType5resultCommentDatalist = @"list";
NSString *const kCommetType5resultAllPage = @"all_page";

@interface CommetType5result ()
@end
@implementation CommetType5result




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kCommetType5resultCommentDatalist] != nil && [dictionary[kCommetType5resultCommentDatalist] isKindOfClass:[NSArray class]]){
		NSArray * commentDatalistDictionaries = dictionary[kCommetType5resultCommentDatalist];
		NSMutableArray * commentDatalistItems = [NSMutableArray array];
		for(NSDictionary * commentDatalistDictionary in commentDatalistDictionaries){
			CommentDatalist * commentDatalistItem = [[CommentDatalist alloc] initWithDictionary:commentDatalistDictionary];
			[commentDatalistItems addObject:commentDatalistItem];
		}
		self.commentDatalist = commentDatalistItems;
	}
	if(![dictionary[kCommetType5resultAllPage] isKindOfClass:[NSNull class]]){
		self.allPage = [dictionary[kCommetType5resultAllPage] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.commentDatalist != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(CommentDatalist * commentDatalistElement in self.commentDatalist){
			[dictionaryElements addObject:[commentDatalistElement toDictionary]];
		}
		dictionary[kCommetType5resultCommentDatalist] = dictionaryElements;
	}
	dictionary[kCommetType5resultAllPage] = @(self.allPage);
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
	if(self.commentDatalist != nil){
		[aCoder encodeObject:self.commentDatalist forKey:kCommetType5resultCommentDatalist];
	}
	[aCoder encodeObject:@(self.allPage) forKey:kCommetType5resultAllPage];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.commentDatalist = [aDecoder decodeObjectForKey:kCommetType5resultCommentDatalist];
	self.allPage = [[aDecoder decodeObjectForKey:kCommetType5resultAllPage] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommetType5result *copy = [CommetType5result new];

	copy.commentDatalist = [self.commentDatalist copy];
	copy.allPage = self.allPage;

	return copy;
}
@end
