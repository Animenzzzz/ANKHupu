//
//  ANKNavigationViewFactory.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/14.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ANKNavigationView.h"

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSInteger,NavigationViewType) {
    NavigationViewSearch = 1, //首页的那个红色的带搜索的view
    NavigationViewTitle = 2, //带有返回和分享
    NavigationViewCrystal = 3, //专题类的，透明的，也带有返回和分享
};

@interface ANKNavigationViewFactory : NSObject

+ (ANKNavigationView *)navigationViewFactory:(NavigationViewType)type;

@end

NS_ASSUME_NONNULL_END
