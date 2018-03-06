//
//  AppDelegate.m
//  RDWebToolsDemo
//
//  Created by Radar on 2018/3/6.
//  Copyright © 2018年 Radar. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //创建框架
    UIViewController *homeVC = [[ViewController alloc] init];
    UINavigationController *mainNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    mainNav.navigationBarHidden = NO;
    mainNav.navigationBar.translucent = NO; //不要导航条模糊，为了让页面从导航条下部是0开始，如果为YES，则从屏幕顶部开始是0
    self.window.rootViewController = mainNav;
    
    return YES;
}


@end
