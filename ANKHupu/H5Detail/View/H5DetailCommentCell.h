//
//  H5DetailCommentCell.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/27.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface H5DetailCommentCell : UITableViewCell

@property(nonatomic, strong) NSString *userName;
@property(nonatomic, strong) NSString *addTime;

@property(nonatomic, strong) NSString *content;
@property (weak, nonatomic) IBOutlet UILabel *contenLab;

@property(nonatomic, strong) NSString *quoteName;
@property(nonatomic, strong) NSString *quoteContent;
@property (weak, nonatomic) IBOutlet UILabel *quoteContenLab;

@property (weak, nonatomic) IBOutlet UIImageView *headerIcon;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contenLabHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *quoteContenLabHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *quoteViewHeight;
@property (weak, nonatomic) IBOutlet UIView *quoteView;

@end

NS_ASSUME_NONNULL_END
