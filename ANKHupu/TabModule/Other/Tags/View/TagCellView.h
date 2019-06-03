//
//  TagCellView.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef  NS_ENUM(NSInteger,TagActionType){
    TagNoneAction = 0,
    TagDeleteAction = 1,
    TagAddAction = 2,
};

@protocol TagCellViewDelegate <NSObject>

- (void)tagCellViewDidTapInViewWithType:(TagActionType)type title:(NSString *)title;

@end

@interface TagCellView : UIView

@property(nonatomic, copy) NSString *title;
@property(nonatomic,assign) TagActionType actionType;
@property(nonatomic, weak) id<TagCellViewDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
