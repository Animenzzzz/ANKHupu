//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentModel.h"

NSString *const kCommentModelDtailData = @"data";
NSString *const kCommentModelStatus = @"status";

@interface CommentModel ()
@end
@implementation CommentModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommentModelDtailData] isKindOfClass:[NSNull class]]){
		self.dtailData = [[DtailData alloc] initWithDictionary:dictionary[kCommentModelDtailData]];
	}

	if(![dictionary[kCommentModelStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kCommentModelStatus] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.dtailData != nil){
		dictionary[kCommentModelDtailData] = [self.dtailData toDictionary];
	}
	dictionary[kCommentModelStatus] = @(self.status);
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
	if(self.dtailData != nil){
		[aCoder encodeObject:self.dtailData forKey:kCommentModelDtailData];
	}
	[aCoder encodeObject:@(self.status) forKey:kCommentModelStatus];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.dtailData = [aDecoder decodeObjectForKey:kCommentModelDtailData];
	self.status = [[aDecoder decodeObjectForKey:kCommentModelStatus] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentModel *copy = [CommentModel new];

	copy.dtailData = [self.dtailData copy];
	copy.status = self.status;

	return copy;
}
@end
