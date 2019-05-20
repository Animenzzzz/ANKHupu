//
//  TagCellView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "TagCellView.h"

@interface TagCellView()
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UIImageView *tagImageView;

@end

@implementation TagCellView

- (void)awakeFromNib{
    [super awakeFromNib];
    self.layer.cornerRadius = 3.0;
    self.tagImageView.hidden = YES;
    
}

- (void)setTitle:(NSString *)title{
    
    self.titleLab.text = title;
}

- (void)setActionType:(TagActionType)actionType{
    self.tagImageView.hidden = NO;
    if (self.actionType == TagDeleteAction) {
        self.tagImageView.image = [ResUtil imageNamed:@"post_textfield_delete"];
    }else if (self.actionType == TagAddAction){
        
    }
}

@end
