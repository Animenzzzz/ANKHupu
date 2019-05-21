//
//  HotListViewCellTopicView.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/17.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HotListViewCellTopicView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *topicImage;
@property (nonatomic, strong) NSString *topicName;
@property (nonatomic, strong) NSString *nickName;

@end

NS_ASSUME_NONNULL_END
