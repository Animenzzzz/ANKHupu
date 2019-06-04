#import <UIKit/UIKit.h>

@interface BBSForum : NSObject

@property (nonatomic, strong) NSString * fid;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
