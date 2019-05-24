//
//  H5DetailViewController.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/22.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ANKViewController.h"

NS_ASSUME_NONNULL_BEGIN



@interface H5DetailViewController : ANKViewController

@property(nonatomic,strong) NSString *requestURL;
@property(nonatomic,assign) NewsType type;

@end

NS_ASSUME_NONNULL_END
