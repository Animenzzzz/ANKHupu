//
//  ViewController.m
//  ANKHupu
//
//  Created by Animenzzz on 2019/5/13.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#import "ViewController.h"
#import "ANKHttpServer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [ANKHttpServer getNBAInfoWithParams:nil success:^(NSDictionary * data) {
        NSLog(@"");
    } failure:^(NSDictionary * data, NSError * error) {
        NSLog(@"");
    }];
}


@end
