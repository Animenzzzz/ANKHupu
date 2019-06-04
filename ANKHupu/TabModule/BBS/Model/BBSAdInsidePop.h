#import <UIKit/UIKit.h>

@interface BBSAdInsidePop : NSObject

@property (nonatomic, assign) NSInteger adType;
@property (nonatomic, assign) NSInteger isAd;
@property (nonatomic, assign) NSInteger position;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
