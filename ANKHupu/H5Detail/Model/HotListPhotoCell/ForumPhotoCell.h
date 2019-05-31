#import <UIKit/UIKit.h>

@interface ForumPhotoCell : NSObject

@property (nonatomic, strong) NSString * category;
@property (nonatomic, strong) NSString * descriptionField;
@property (nonatomic, assign) NSInteger fid;
@property (nonatomic, strong) NSString * forumadmin;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) NSInteger unlightsEnable;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end