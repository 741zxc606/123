//
//  AppDelegate.m
//  HelloWorld
//
//  Created by Apple on 16/3/5.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOption {
    NSLog(@"%@",@"application:didFinishLaunchingWithOptions:");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"%@",@"applicationWillResignActive:");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    NSLog(@"%@",@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"%@",@"applicationWillEnterForeground:");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"%@",@"appplicationDidBecomeActive:");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"%@",@"applicationWillTerminate:");
}

@end
