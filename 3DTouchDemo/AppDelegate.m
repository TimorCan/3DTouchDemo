//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by juxi-ios on 16/3/22.
//  Copyright © 2016年 zhoucan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    文／chongzone（简书作者）
//    原文链接：http://www.jianshu.com/p/018d0c226134
//    著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。
    
    
    
    [self dynamicConfig3DTouchInIcon];
    
    return YES;
}

/**
 *  动态配置3d touch进入
 */
-(void)dynamicConfig3DTouchInIcon{
    
    UIApplicationShortcutIcon * icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLove];
    
    UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc]initWithType:@"one" localizedTitle:@"你好啊" localizedSubtitle:@"我叫塞利亚" icon:icon1 userInfo:nil];
    
    
    UIApplicationShortcutIcon * icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLove];
    
    UIApplicationShortcutItem *item2 = [[UIApplicationShortcutItem alloc]initWithType:@"two" localizedTitle:@"尼号" localizedSubtitle:@"我叫赛利亚" icon:icon2 userInfo:nil];
    
    
    [UIApplication sharedApplication].shortcutItems = @[item1,item2];
}

-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    NSLog(@"%@",shortcutItem.type);
}

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
