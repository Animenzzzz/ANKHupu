//
//	Result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BBSResult.h"

NSString *const kBBSResultAdInsidePop = @"ad_inside_pop";
NSString *const kBBSResultAdPoster = @"ad_poster";
NSString *const kBBSResultAdditionTid = @"addition_tid";
NSString *const kBBSResultData = @"data";
NSString *const kBBSResultDisplayTopicLogo = @"display_topic_logo";
NSString *const kBBSResultMax = @"max";
NSString *const kBBSResultMin = @"min";
NSString *const kBBSResultNextPage = @"nextPage";
NSString *const kBBSResultNowPage = @"nowPage";
NSString *const kBBSResultStamp = @"stamp";

@interface BBSResult ()
@end
@implementation BBSResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBBSResultAdInsidePop] isKindOfClass:[NSNull class]]){
		self.adInsidePop = [[BBSAdInsidePop alloc] initWithDictionary:dictionary[kBBSResultAdInsidePop]];
	}

	if(![dictionary[kBBSResultAdPoster] isKindOfClass:[NSNull class]]){
		self.adPoster = [[BBSAdInsidePop alloc] initWithDictionary:dictionary[kBBSResultAdPoster]];
	}

	if(![dictionary[kBBSResultAdditionTid] isKindOfClass:[NSNull class]]){
		self.additionTid = [dictionary[kBBSResultAdditionTid] integerValue];
	}

	if(dictionary[kBBSResultData] != nil && [dictionary[kBBSResultData] isKindOfClass:[NSArray class]]){
		NSArray * dataDictionaries = dictionary[kBBSResultData];
		NSMutableArray * dataItems = [NSMutableArray array];
		for(NSDictionary * dataDictionary in dataDictionaries){
			BBSData * dataItem = [[BBSData alloc] initWithDictionary:dataDictionary];
            if (dataItem.isAd != 1) {//Mychange  是广告不加进来
                [dataItems addObject:dataItem];
            }
		}
		self.data = dataItems;
	}
	if(![dictionary[kBBSResultDisplayTopicLogo] isKindOfClass:[NSNull class]]){
		self.displayTopicLogo = [dictionary[kBBSResultDisplayTopicLogo] integerValue];
	}

	if(![dictionary[kBBSResultMax] isKindOfClass:[NSNull class]]){
		self.max = [dictionary[kBBSResultMax] integerValue];
	}

	if(![dictionary[kBBSResultMin] isKindOfClass:[NSNull class]]){
		self.min = [dictionary[kBBSResultMin] integerValue];
	}

	if(![dictionary[kBBSResultNextPage] isKindOfClass:[NSNull class]]){
		self.nextPage = [dictionary[kBBSResultNextPage] boolValue];
	}

	if(![dictionary[kBBSResultNowPage] isKindOfClass:[NSNull class]]){
		self.nowPage = [dictionary[kBBSResultNowPage] integerValue];
	}

	if(![dictionary[kBBSResultStamp] isKindOfClass:[NSNull class]]){
		self.stamp = dictionary[kBBSResultStamp];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.adInsidePop != nil){
		dictionary[kBBSResultAdInsidePop] = [self.adInsidePop toDictionary];
	}
	if(self.adPoster != nil){
		dictionary[kBBSResultAdPoster] = [self.adPoster toDictionary];
	}
	dictionary[kBBSResultAdditionTid] = @(self.additionTid);
	if(self.data != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(BBSData * dataElement in self.data){
			[dictionaryElements addObject:[dataElement toDictionary]];
		}
		dictionary[kBBSResultData] = dictionaryElements;
	}
	dictionary[kBBSResultDisplayTopicLogo] = @(self.displayTopicLogo);
	dictionary[kBBSResultMax] = @(self.max);
	dictionary[kBBSResultMin] = @(self.min);
	dictionary[kBBSResultNextPage] = @(self.nextPage);
	dictionary[kBBSResultNowPage] = @(self.nowPage);
	if(self.stamp != nil){
		dictionary[kBBSResultStamp] = self.stamp;
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
	if(self.adInsidePop != nil){
		[aCoder encodeObject:self.adInsidePop forKey:kBBSResultAdInsidePop];
	}
	if(self.adPoster != nil){
		[aCoder encodeObject:self.adPoster forKey:kBBSResultAdPoster];
	}
	[aCoder encodeObject:@(self.additionTid) forKey:kBBSResultAdditionTid];	if(self.data != nil){
		[aCoder encodeObject:self.data forKey:kBBSResultData];
	}
	[aCoder encodeObject:@(self.displayTopicLogo) forKey:kBBSResultDisplayTopicLogo];	[aCoder encodeObject:@(self.max) forKey:kBBSResultMax];	[aCoder encodeObject:@(self.min) forKey:kBBSResultMin];	[aCoder encodeObject:@(self.nextPage) forKey:kBBSResultNextPage];	[aCoder encodeObject:@(self.nowPage) forKey:kBBSResultNowPage];	if(self.stamp != nil){
		[aCoder encodeObject:self.stamp forKey:kBBSResultStamp];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adInsidePop = [aDecoder decodeObjectForKey:kBBSResultAdInsidePop];
	self.adPoster = [aDecoder decodeObjectForKey:kBBSResultAdPoster];
	self.additionTid = [[aDecoder decodeObjectForKey:kBBSResultAdditionTid] integerValue];
	self.data = [aDecoder decodeObjectForKey:kBBSResultData];
	self.displayTopicLogo = [[aDecoder decodeObjectForKey:kBBSResultDisplayTopicLogo] integerValue];
	self.max = [[aDecoder decodeObjectForKey:kBBSResultMax] integerValue];
	self.min = [[aDecoder decodeObjectForKey:kBBSResultMin] integerValue];
	self.nextPage = [[aDecoder decodeObjectForKey:kBBSResultNextPage] boolValue];
	self.nowPage = [[aDecoder decodeObjectForKey:kBBSResultNowPage] integerValue];
	self.stamp = [aDecoder decodeObjectForKey:kBBSResultStamp];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BBSResult *copy = [BBSResult new];

	copy.adInsidePop = [self.adInsidePop copy];
	copy.adPoster = [self.adPoster copy];
	copy.additionTid = self.additionTid;
	copy.data = [self.data copy];
	copy.displayTopicLogo = self.displayTopicLogo;
	copy.max = self.max;
	copy.min = self.min;
	copy.nextPage = self.nextPage;
	copy.nowPage = self.nowPage;
	copy.stamp = [self.stamp copy];

	return copy;
}
@end
