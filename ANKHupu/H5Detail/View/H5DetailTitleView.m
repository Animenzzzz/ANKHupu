//
//  H5DetailTitleView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/24.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailTitleView.h"

@interface H5DetailTitleView()
@property (weak, nonatomic) IBOutlet UILabel *userNameLab;
@property (weak, nonatomic) IBOutlet UILabel *newsInfoLab;

@end

@implementation H5DetailTitleView

- (void)awakeFromNib{
    [super awakeFromNib];
    self.userIconImage.layer.cornerRadius = 10.0;
}

- (void)setNewsInfo:(NSString *)newsInfo{
    self.newsInfoLab.text = newsInfo;
}

- (void)setUserName:(NSString *)userName{
    self.userNameLab.text = userName;
}

@end
