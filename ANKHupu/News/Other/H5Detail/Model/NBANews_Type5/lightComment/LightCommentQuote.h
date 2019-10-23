#import <UIKit/UIKit.h>
#import "LightCommentAttr.h"

@interface LightCommentQuote : NSObject

@property (nonatomic, strong) LightCommentAttr * attr;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSArray * header;
@property (nonatomic, strong) NSString * pid;
@property (nonatomic, strong) NSString * puid;
@property (nonatomic, strong) NSObject * togglecontent;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
