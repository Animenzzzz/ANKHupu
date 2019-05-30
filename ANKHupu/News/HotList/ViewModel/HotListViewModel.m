//
//  HotListViewModel.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/30.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "HotListViewModel.h"

#import "NewsPhotosCell.h"

@implementation HotListViewModel

+ (CGFloat)calutaCellHeightWithModel:(HotListModel *)model{
    
    NewsPhotosCell *cell = [[[UINib nibWithNibName:@"NewsPhotosCell" bundle:nil] instantiateWithOwner:self options:nil] firstObject];
    CGFloat cellTotalHeight = cell.height;
   
    
    
    //title的高度
    CGFloat orignTitleHeight = cell.contenLabHeight.constant;
    CGFloat newTitleHeight = [UILabel getHeightByWidth:(SCREEN_WIDTH-cell.contentLabRight.constant-cell.contentLabLeft.constant) title:model.hotInfo.title font:cell.contenLab.font];//动态计算高度
    cellTotalHeight = cellTotalHeight - orignTitleHeight+newTitleHeight;
    
    if (!model.hotInfo.pics.count) {//内容无图
        cellTotalHeight = cellTotalHeight - cell.photoCollectionView.height;
    }
    
  
    if (!model.hotInfo.light_replies.count) {//没有评论
        cellTotalHeight = cellTotalHeight - cell.replyView.height;
    }else{
        
        CGFloat orign_Reply_Title_Height = cell.replyContentLabHeight.constant;
        CGFloat orign_Reply_View_Height = cell.replyViewHeight.constant;
        
        RepliesModel *repls = [model.hotInfo.light_replies objectAtIndex:0];
        
        CGFloat new_Reply_Title_Height = [UILabel getHeightByWidth:(cell.replyView.width-cell.replyContentLeft.constant-cell.replyContentRight.constant) title:repls.content font:cell.replieLab.font];//动态计算高度
        
        CGFloat new_Reply_View_Height = orign_Reply_View_Height - orign_Reply_Title_Height + new_Reply_Title_Height;
        
        cellTotalHeight = cellTotalHeight - orign_Reply_View_Height + new_Reply_View_Height;
        
    }
    
    return cellTotalHeight;
    
}

@end
