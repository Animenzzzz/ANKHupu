//
//  H5DetailTitleView.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/24.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface H5DetailTitleView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *userIconImage;

@property(nonatomic, strong) NSString *userName;
@property(nonatomic, strong) NSString *newsInfo;

@end

NS_ASSUME_NONNULL_END
