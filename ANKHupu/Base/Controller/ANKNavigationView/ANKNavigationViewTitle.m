//
//  ANKNavigationViewTitle.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKNavigationViewTitle.h"

@interface ANKNavigationViewTitle()
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UIButton *shareBtn;

@end


@implementation ANKNavigationViewTitle

- (void)awakeFromNib{
    [super awakeFromNib];
    
}
- (IBAction)backClick:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(backClick)]) {
        [self.delegate backClick];
    }
}

- (IBAction)shareClick:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(shareClick)]) {
        [self.delegate shareClick];
    }
    
}

- (void)setshareBtnHidden:(BOOL)shareBtnHidden{
    self.shareBtn.hidden = shareBtnHidden;
}

@end
