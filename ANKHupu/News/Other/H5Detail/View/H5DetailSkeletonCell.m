//
//  H5DetailSkeletonCell.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "H5DetailSkeletonCell.h"
#import "FBShimmeringView.h"
#import "Skeleton.h"

@interface H5DetailSkeletonCell()<SkeletonLayoutProtocol>
@property (weak, nonatomic) IBOutlet FBShimmeringView *s1;
@property (weak, nonatomic) IBOutlet FBShimmeringView *s2;
@property (weak, nonatomic) IBOutlet FBShimmeringView *s3;
@property (weak, nonatomic) IBOutlet FBShimmeringView *s4;
@property (weak, nonatomic) IBOutlet FBShimmeringView *s5;
@property (weak, nonatomic) IBOutlet FBShimmeringView *s6;
@property (weak, nonatomic) IBOutlet FBShimmeringView *s7;

@end

@implementation H5DetailSkeletonCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    
    _s1.shimmering = YES;
    _s1.shimmeringBeginFadeDuration = 0.3;
    _s1.shimmeringOpacity = 0.3;
    
    _s2.shimmering = YES;
    _s2.shimmeringBeginFadeDuration = 0.3;
    _s2.shimmeringOpacity = 0.3;
    
    _s3.shimmering = YES;
    _s3.shimmeringBeginFadeDuration = 0.3;
    _s3.shimmeringOpacity = 0.3;
    
    _s4.shimmering = YES;
    _s4.shimmeringBeginFadeDuration = 0.3;
    _s4.shimmeringOpacity = 0.3;
    
    _s5.shimmering = YES;
    _s5.shimmeringBeginFadeDuration = 0.3;
    _s5.shimmeringOpacity = 0.3;
    
    _s6.shimmering = YES;
    _s6.shimmeringBeginFadeDuration = 0.3;
    _s6.shimmeringOpacity = 0.3;
    
    _s7.shimmering = YES;
    _s7.shimmeringBeginFadeDuration = 0.3;
    _s7.shimmeringOpacity = 0.3;
}

- (void)setShouldLoading:(BOOL)shouldLoading {
    _shouldLoading = shouldLoading;
    if (_shouldLoading) {
        [self beginSkeleton];
    }
    else {
        [self endSkeleton];
    }
}

#pragma mark - SkeletonLayoutProtocol

- (NSArray<SkeletonView *> *)skeletonLayout {
    
    CGFloat topOffset = 8,leftOffset = 16,rightOffset = 16,height = 18;
    
    SkeletonView *s1 = [[SkeletonView alloc] initWithFrame:CGRectMake(leftOffset, topOffset+1, (SCREEN_WIDTH - leftOffset- rightOffset), height)];
    
    SkeletonView *s2 = [[SkeletonView alloc] initWithFrame:CGRectMake(leftOffset, s1.frame.origin.y+ height+ topOffset, (SCREEN_WIDTH - leftOffset- rightOffset), height)];
    
    SkeletonView *s3 = [[SkeletonView alloc] initWithFrame:CGRectMake(leftOffset, s2.frame.origin.y+ height + topOffset, 49, 46)];
    
    SkeletonView *s4 = [[SkeletonView alloc] initWithFrame:CGRectMake(80, s3.frame.origin.y, 126, height)];
    
    SkeletonView *s5 = [[SkeletonView alloc] initWithFrame:CGRectMake(80, s3.frame.origin.y+46-height, 126, height)];
    
    SkeletonView *s6 = [[SkeletonView alloc] initWithFrame:CGRectMake(leftOffset, s3.frame.origin.y+46+topOffset, (SCREEN_WIDTH - leftOffset- rightOffset), height)];
    
    SkeletonView *s7 = [[SkeletonView alloc] initWithFrame:CGRectMake(leftOffset, s6.frame.origin.y+height+topOffset, (SCREEN_WIDTH - leftOffset- rightOffset), height)];
   
    return @[s1, s2, s3, s3, s4, s5,s6,s7];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
