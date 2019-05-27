//
//	RootClass.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CommentType5Model.h"

NSString *const kCommentType5CommetType5Modl = @"data";
NSString *const kCommentType5Status = @"status";

@interface CommentType5Model ()
@end
@implementation CommentType5Model




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCommentType5CommetType5Modl] isKindOfClass:[NSNull class]]){
		self.commetType5Modl = [[CommetType5Modl alloc] initWithDictionary:dictionary[kCommentType5CommetType5Modl]];
	}

	if(![dictionary[kCommentType5Status] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kCommentType5Status] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.commetType5Modl != nil){
		dictionary[kCommentType5CommetType5Modl] = [self.commetType5Modl toDictionary];
	}
	dictionary[kCommentType5Status] = @(self.status);
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
	if(self.commetType5Modl != nil){
		[aCoder encodeObject:self.commetType5Modl forKey:kCommentType5CommetType5Modl];
	}
	[aCoder encodeObject:@(self.status) forKey:kCommentType5Status];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.commetType5Modl = [aDecoder decodeObjectForKey:kCommentType5CommetType5Modl];
	self.status = [[aDecoder decodeObjectForKey:kCommentType5Status] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CommentType5Model *copy = [CommentType5Model new];

	copy.commetType5Modl = [self.commetType5Modl copy];
	copy.status = self.status;

	return copy;
}
@end
