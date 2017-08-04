//
//  LiLiTabBarController.m
//  CodeInit
//
//  Created by minya on 2017/4/7.
//  Copyright © 2017年 minya. All rights reserved.
//

#import "LiLiTabBarController.h"
#import "LiLiWeChatViewController.h"
#import "LiLiContactViewController.h"
#import "LiLiFindViewController.h"
#import "LiLiMineViewController.h"
#import "LiLiNavigationController.h"

@interface LiLiTabBarController ()

@end

@implementation LiLiTabBarController
//viewDidLoad:做控制器的初始化操作
- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatAllNav];
}

//添加所有子控制器
-(void)creatAllNav{
    /*
    自定义tabbar的背景颜色[新建view放在tabbar中实现]
    UIView * bgView = [[UIView alloc] initWithFrame:self.tabBar.bounds];
    bgView.backgroundColor = [UIColor yellowColor];
    [self.tabBar insertSubview:bgView atIndex:0];
    self.tabBar.opaque = NO;
    */
    
    //自定义颜色
    UIColor * customColor = [UIColor colorWithRed:70/255.0 green:192/255.0 blue:27/255.0 alpha:1];
    
    //添加第一个导航子控制器[微信]
    LiLiWeChatViewController * wechat = [[LiLiWeChatViewController alloc] init];
    [self creatNav:wechat customColor:customColor image:[UIImage imageNamed:@"tabBar_wechat"] selectImage:[UIImage imageNamed:@"tabBar_select_wechat"] title:@"微信"];
    
    //添加第二个导航子控制器[通讯录]
    LiLiContactViewController * contact = [[LiLiContactViewController alloc] init];
    [self creatNav:contact customColor:customColor image:[UIImage imageNamed:@"tabBar_wechat"] selectImage:[UIImage imageNamed:@"tabBar_select_wechat"] title:@"通讯录"];
    
    //添加第三个导航子控制器[发现]
    LiLiFindViewController * find = [[LiLiFindViewController alloc] init];
    [self creatNav:find customColor:customColor image:[UIImage imageNamed:@"tabBar_wechat"] selectImage:[UIImage imageNamed:@"tabBar_select_wechat"] title:@"发现"];
    
    //添加第四个导航子控制器[我的]
    LiLiMineViewController * mine = [[LiLiMineViewController alloc] init];
    [self creatNav:mine customColor:customColor image:[UIImage imageNamed:@"tabBar_wechat"] selectImage:[UIImage imageNamed:@"tabBar_select_wechat"] title:@"我的"];
}

//封装导航控制器的创建
-(void)creatNav:(UIViewController *)viewVc customColor:(UIColor *)customColor image:(UIImage *)image selectImage:(UIImage *)selectImage title:(NSString *)title{
    
    //设置每个页面的导航控制器标题
    viewVc.navigationItem.title = title;
    viewVc.view.backgroundColor = [UIColor whiteColor];
    
    //创建每个导航控制器
    LiLiNavigationController * nav = [[LiLiNavigationController alloc] initWithRootViewController:viewVc];
    
    /*
     * nav.navigationBar导航条的相关内容抽取类
     * 放在Main中的LiLiNavigationController中去设置
     * 首先导入#import "LiLiNavigationController.h"
     * 创建导航控制器时使用LiLiNavigationController创建
     */
    
    //tabbar的相关设置
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav.tabBarItem.selectedImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSDictionary * textColor = [NSDictionary dictionaryWithObject:customColor forKey:NSForegroundColorAttributeName];
    [nav.tabBarItem setTitleTextAttributes:textColor forState:UIControlStateSelected];
    
    //添加到根视图tabBar中
    [self addChildViewController:nav];
}

@end
