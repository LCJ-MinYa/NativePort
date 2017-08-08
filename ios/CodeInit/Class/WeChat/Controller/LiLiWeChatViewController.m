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
#import <React/RCTBridgeModule.h>

@interface CalendarManager : NSObject<RCTBridgeModule>

@end

//为了实现RCTBridgeModule协议，你的类需要包含RCT_EXPORT_MODULE()宏。这个宏也可以添加一个参数用来指定在Javascript中访问这个模块的名字。如果你不指定，默认就会使用这个Objective-C类的名字。

// CalendarManager.m
@implementation CalendarManager

//  必须实现
RCT_EXPORT_MODULE();

//  对外提供调用方法（testNormalEvent为方法名，后面为参数，按顺序和对应数据类型在js进行传递）
RCT_EXPORT_METHOD(testNormalEvent:(NSString *)name forSomething:(NSString *)thing){
    NSString *info = [NSString stringWithFormat:@"Test: %@\nFor: %@", name, thing];
    NSLog(@"%@", info);
}

@end

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
