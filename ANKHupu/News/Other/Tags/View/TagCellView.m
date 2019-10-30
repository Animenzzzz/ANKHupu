//
//  TagCellView.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "TagCellView.h"
#import "DynamicColorUtil.h"
@interface TagCellView()
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UIImageView *tagImageView;

@end

@implementation TagCellView

- (void)awakeFromNib{
    [super awakeFromNib];
    self.layer.cornerRadius = 3.0;
    self.tagImageView.hidden = YES;
    

    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGesture:)];
    [self addGestureRecognizer:singleTap];
    
    [DynamicColorUtil tagBackGroundColor:^(UIColor * _Nullable color) {
        self.backgroundColor = color;
    }];
}

- (void)setTitle:(NSString *)title{
    
    self.titleLab.text = title;
    if ([title isEqualToString:@"推荐"]) {
        self.titleLab.textColor = [UIColor grayColor];
    }else{
        [DynamicColorUtil titleBackGroundColor:^(UIColor * _Nullable color) {
            self.titleLab.textColor = color;
        }];
    }
}

- (void)setActionType:(TagActionType)actionType{
    self.tagImageView.hidden = NO;
    _actionType = actionType;
    if (actionType == TagDeleteAction) {
        self.tagImageView.image = [UIImage imageNamed:@"tag_delete"];
    }else if (actionType == TagAddAction){
        self.tagImageView.image = [UIImage imageNamed:@"tag_add"];
    }else if(actionType == TagNoneAction){
        self.tagImageView.hidden = YES;
    }
}

#pragma mark - 手势识别响应方法

// 单击手势
- (void)singleTapGesture:(UITapGestureRecognizer *)gesture {
    if ([self.titleLab.text isEqualToString:@"推荐"]) {
        return;
    }
    if ([self.delegate respondsToSelector:@selector(tagCellViewDidTapInViewWithType:title:)]) {
        [self.delegate tagCellViewDidTapInViewWithType:self.actionType title:self.titleLab.text];
    }
   
}


@end
