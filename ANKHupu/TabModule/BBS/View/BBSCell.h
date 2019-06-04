//
//  BBSCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/6/4.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBSRootModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface BBSCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *headIcon;

@property (weak, nonatomic) IBOutlet UILabel *fornumNameLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *fornumNameWidth;

@property (weak, nonatomic) IBOutlet UILabel *userNameLab;

@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titLbLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titLbRight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titLbHeight;




- (void)cellBindWithDataModel:(BBSData *)model;

@end

NS_ASSUME_NONNULL_END
