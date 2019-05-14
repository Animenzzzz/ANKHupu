//
//  ANKNavigationViewSearch.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKNavigationView.h"

NS_ASSUME_NONNULL_BEGIN

@protocol NavigationViewSearchDelegate <NSObject>

- (void)searchStatuBarClick;
- (void)issueClick;

@end


@interface ANKNavigationViewSearch : ANKNavigationView

@property (nonatomic, weak) id<NavigationViewSearchDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
