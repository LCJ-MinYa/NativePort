//
//  AppDelegate.m
//  CodeInit
//
//  Created by minya on 2017/4/6.
//  Copyright © 2017年 minya. All rights reserved.
//

#import "AppDelegate.h"
#import "LiLiTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//程序启动完成的时候调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [application setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    
    //1.创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //2.设置窗口的根控制器
    //2.1创建UITabBarController
    LiLiTabBarController * tabBarVc = [[LiLiTabBarController alloc] init];
    //2.2将UITabBarController作为Window的根控制器
    self.window.rootViewController = tabBarVc;
    
    //3.显示窗口
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {

}


- (void)applicationDidEnterBackground:(UIApplication *)application {

}


- (void)applicationWillEnterForeground:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}


- (void)applicationWillTerminate:(UIApplication *)application {

}


@end
