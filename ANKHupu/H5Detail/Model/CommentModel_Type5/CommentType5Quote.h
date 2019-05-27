#import <UIKit/UIKit.h>
#import "CommentAttr.h"

@interface CommentType5Quote : NSObject

@property (nonatomic, strong) CommentAttr * attr;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSArray * header;
@property (nonatomic, strong) NSString * pid;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSString * togglecontent;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
