//
//	Lure3.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Lure3.h"

NSString *const kLure3CertIcon = @"cert_icon";
NSString *const kLure3CertInfo = @"cert_info";
NSString *const kLure3CertType = @"cert_type";
NSString *const kLure3CertUrl = @"cert_url";

@interface Lure3 ()
@end
@implementation Lure3




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLure3CertIcon] isKindOfClass:[NSNull class]]){
		self.certIcon = dictionary[kLure3CertIcon];
	}	
	if(![dictionary[kLure3CertInfo] isKindOfClass:[NSNull class]]){
		self.certInfo = dictionary[kLure3CertInfo];
	}	
	if(![dictionary[kLure3CertType] isKindOfClass:[NSNull class]]){
		self.certType = dictionary[kLure3CertType];
	}	
	if(![dictionary[kLure3CertUrl] isKindOfClass:[NSNull class]]){
		self.certUrl = dictionary[kLure3CertUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.certIcon != nil){
		dictionary[kLure3CertIcon] = self.certIcon;
	}
	if(self.certInfo != nil){
		dictionary[kLure3CertInfo] = self.certInfo;
	}
	if(self.certType != nil){
		dictionary[kLure3CertType] = self.certType;
	}
	if(self.certUrl != nil){
		dictionary[kLure3CertUrl] = self.certUrl;
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
	if(self.certIcon != nil){
		[aCoder encodeObject:self.certIcon forKey:kLure3CertIcon];
	}
	if(self.certInfo != nil){
		[aCoder encodeObject:self.certInfo forKey:kLure3CertInfo];
	}
	if(self.certType != nil){
		[aCoder encodeObject:self.certType forKey:kLure3CertType];
	}
	if(self.certUrl != nil){
		[aCoder encodeObject:self.certUrl forKey:kLure3CertUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.certIcon = [aDecoder decodeObjectForKey:kLure3CertIcon];
	self.certInfo = [aDecoder decodeObjectForKey:kLure3CertInfo];
	self.certType = [aDecoder decodeObjectForKey:kLure3CertType];
	self.certUrl = [aDecoder decodeObjectForKey:kLure3CertUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Lure3 *copy = [Lure3 new];

	copy.certIcon = [self.certIcon copy];
	copy.certInfo = [self.certInfo copy];
	copy.certType = [self.certType copy];
	copy.certUrl = [self.certUrl copy];

	return copy;
}
@end