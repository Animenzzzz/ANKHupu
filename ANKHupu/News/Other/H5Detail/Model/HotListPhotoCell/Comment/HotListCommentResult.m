//
//	Result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "HotListCommentResult.h"

NSString *const kHotListCommentResultAllPage = @"all_page";
NSString *const kHotListCommentResultList = @"list";

@interface HotListCommentResult ()
@end
@implementation HotListCommentResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kHotListCommentResultAllPage] isKindOfClass:[NSNull class]]){
		self.allPage = [dictionary[kHotListCommentResultAllPage] integerValue];
	}

	if(dictionary[kHotListCommentResultList] != nil && [dictionary[kHotListCommentResultList] isKindOfClass:[NSArray class]]){
		NSArray * listDictionaries = dictionary[kHotListCommentResultList];
		NSMutableArray * listItems = [NSMutableArray array];
		for(NSDictionary * listDictionary in listDictionaries){
			HotListCommentList * listItem = [[HotListCommentList alloc] initWithDictionary:listDictionary];
			[listItems addObject:listItem];
		}
		self.list = listItems;
	}
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kHotListCommentResultAllPage] = @(self.allPage);
	if(self.list != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(HotListCommentList * listElement in self.list){
			[dictionaryElements addObject:[listElement toDictionary]];
		}
		dictionary[kHotListCommentResultList] = dictionaryElements;
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
	[aCoder encodeObject:@(self.allPage) forKey:kHotListCommentResultAllPage];	if(self.list != nil){
		[aCoder encodeObject:self.list forKey:kHotListCommentResultList];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.allPage = [[aDecoder decodeObjectForKey:kHotListCommentResultAllPage] integerValue];
	self.list = [aDecoder decodeObjectForKey:kHotListCommentResultList];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	HotListCommentResult *copy = [HotListCommentResult new];

	copy.allPage = self.allPage;
	copy.list = [self.list copy];

	return copy;
}
@end
