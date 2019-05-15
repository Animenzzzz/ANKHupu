//
//  ANKTagScrollCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/15.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKTagScrollItem.h"

@interface ANKTagScrollItem()
@property (weak, nonatomic) IBOutlet UILabel *seleLab;
@property (weak, nonatomic) IBOutlet UIView *redLine;

@end

@implementation ANKTagScrollItem

- (void)awakeFromNib{
    [super awakeFromNib];
    
    [self redLineHiddenStatue:YES];
    
}

- (void)setSeletTitle:(NSString *)seletTitle{
    self.seleLab.text = seletTitle;
}


- (void)redLineHiddenStatue:(BOOL)hidden{
    self.redLine.hidden = hidden;
    
    if (hidden == YES) {//没选中
        [self.seleLab setFont:[UIFont fontWithName:@"Helvetica-Bold" size:kScrollTitleSize_NO_Select]];
        self.seleLab.textColor = [UIColor grayColor];
    }else{//选中
        [self.seleLab setFont:[UIFont fontWithName:@"Helvetica-Bold" size:kScrollTitleSize_Select]];
        self.seleLab.textColor = [UIColor blackColor];
    }
}




@end
