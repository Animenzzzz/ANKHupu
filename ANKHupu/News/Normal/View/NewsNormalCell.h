//
//  NBANewsCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewsNormalCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *newsImg;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleHeight;
@property (assign, nonatomic) CGFloat titleWidth;
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UILabel *readLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *readLabWidth;
@property (nonatomic, copy) NSString *newsTitle;
@property (weak, nonatomic) IBOutlet UIImageView *lightImg;
@property (weak, nonatomic) IBOutlet UILabel *lightLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lightWidth;
@property (weak, nonatomic) IBOutlet UILabel *zhuntiLab;
@property (weak, nonatomic) IBOutlet UILabel *zhidingLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *zhidingTrailing;

- (void)readStyleWithNid:(NSString *)nid;

@end

NS_ASSUME_NONNULL_END
