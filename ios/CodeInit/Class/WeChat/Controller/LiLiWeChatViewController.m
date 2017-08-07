//
//  LiLiWeChatViewController.m
//  CodeInit
//
//  Created by minya on 2017/4/7.
//  Copyright © 2017年 minya. All rights reserved.
//

#import "LiLiWeChatViewController.h"
#import "UIImage+LiLiImage.h"
#import <React/RCTRootView.h>

@interface LiLiWeChatViewController ()

@end

@implementation LiLiWeChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriginalImageName:@"add"] style:0 target:self action:@selector(activity)];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)activity{
    NSLog(@"点击+号");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"NativePort"
                         initialProperties : @{
                                               @"data": @[
                                                       @{
                                                           @"name": @"LiChaoJun",
                                                           @"age": @"25"
                                                           }
                                                       ]
                                               }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
