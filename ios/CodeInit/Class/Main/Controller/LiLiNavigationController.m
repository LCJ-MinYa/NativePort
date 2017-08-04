//
//  LiLiNavigationController.m
//  CodeInit
//
//  Created by minya on 2017/4/7.
//  Copyright © 2017年 minya. All rights reserved.
//

#import "LiLiNavigationController.h"

@interface LiLiNavigationController ()

@end

@implementation LiLiNavigationController

+ (void)load{
    //获取当前整个应用程序下的所有导航条外观
    UINavigationBar * navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    //UINavigationBar * navBar = [UINavigationBar appearance];
    
    //设置每个导航控制器内容
    [navBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"] forBarMetrics:UIBarMetricsDefault];
    //创建描述字体的字典
    NSMutableDictionary * textAttr = [NSMutableDictionary dictionary];
    //颜色
    textAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    /*
     titleTextAttributes:给标题设置属性（颜色，字体，阴影。。。）
     是一个字典数据（类似js的数组,所以不能直接[UIColor whiteColor]）
     */
    navBar.titleTextAttributes = textAttr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
