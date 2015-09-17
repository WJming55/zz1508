//
//  AppDelegate.m
//  LabelDemo
//
//  Created by Hailong.wang on 15/7/27.
//  Copyright (c) 2015年 Hailong.wang. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//析构方法
- (void)dealloc {
    //self.window = nil
    self.window = nil;
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    
    //实例化一个标签
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 200, 100)];
    //为标签添加文字
    label.text = @"这是一个标签";
    //设置字体的颜色
    label.textColor = [UIColor blueColor];
    //给标签设置一个背景色
    label.backgroundColor = [UIColor redColor];
    
    /*
     设置标签的布局
     NSTextAlignmentLeft        居左
     NSTextAlignmentCenter      居中
     NSTextAlignmentRight       居右
     NSTextAlignmentJustified   待定
     NSTextAlignmentNatural     默认布局
     */
    label.textAlignment = NSTextAlignmentCenter;
    
    //将标签贴在window（画板）上，此处会 +1
    [self.window addSubview:label];
    //将label释放
    [label release];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}//////////////////////////////111111111111111

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
