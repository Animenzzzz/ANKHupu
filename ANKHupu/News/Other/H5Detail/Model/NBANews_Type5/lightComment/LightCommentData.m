//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LightCommentData.h"

NSString *const kDataAllCount = @"all_count";
NSString *const kDataList = @"list";
NSString *const kDataMoreCount = @"more_count";
NSString *const kDataStatus = @"status";

@interface LightCommentData ()
@end
@implementation LightCommentData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kDataAllCount] isKindOfClass:[NSNull class]]){
		self.allCount = [dictionary[kDataAllCount] integerValue];
	}

	if(dictionary[kDataList] != nil && [dictionary[kDataList] isKindOfClass:[NSArray class]]){
		NSArray * listDictionaries = dictionary[kDataList];
		NSMutableArray * listItems = [NSMutableArray array];
		for(NSDictionary * listDictionary in listDictionaries){
			LightCommentList * listItem = [[LightCommentList alloc] initWithDictionary:listDictionary];
			[listItems addObject:listItem];
		}
		self.list = listItems;
	}
	if(![dictionary[kDataMoreCount] isKindOfClass:[NSNull class]]){
		self.moreCount = [dictionary[kDataMoreCount] integerValue];
	}

	if(![dictionary[kDataStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kDataStatus] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kDataAllCount] = @(self.allCount);
	if(self.list != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(LightCommentList * listElement in self.list){
			[dictionaryElements addObject:[listElement toDictionary]];
		}
		dictionary[kDataList] = dictionaryElements;
	}
	dictionary[kDataMoreCount] = @(self.moreCount);
	dictionary[kDataStatus] = @(self.status);
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
	[aCoder encodeObject:@(self.allCount) forKey:kDataAllCount];	if(self.list != nil){
		[aCoder encodeObject:self.list forKey:kDataList];
	}
	[aCoder encodeObject:@(self.moreCount) forKey:kDataMoreCount];	[aCoder encodeObject:@(self.status) forKey:kDataStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.allCount = [[aDecoder decodeObjectForKey:kDataAllCount] integerValue];
	self.list = [aDecoder decodeObjectForKey:kDataList];
	self.moreCount = [[aDecoder decodeObjectForKey:kDataMoreCount] integerValue];
	self.status = [[aDecoder decodeObjectForKey:kDataStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LightCommentData *copy = [LightCommentData new];

	copy.allCount = self.allCount;
	copy.list = [self.list copy];
	copy.moreCount = self.moreCount;
	copy.status = self.status;

	return copy;
}
@end
