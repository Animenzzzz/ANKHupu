#import <UIKit/UIKit.h>

@interface CommentQuoteData : NSObject

@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * userName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
