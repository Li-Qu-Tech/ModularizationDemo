//
//  AppDelegate.m
//  Record
//
//  Created by xx on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "AppDelegate.h"

#import "KKTabbarController.h"

#import <Login/CTMediator+Login.h>
#import <Common/Macro.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIViewController *loginVc = [[CTMediator sharedInstance] loginVc];
    
    self.window.rootViewController = loginVc;
    
    [self.window makeKeyAndVisible];
    
    //登录成功
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginSuccess) name:kLoginSuccessNoti object:nil];
    
    return YES;
}


- (void)loginSuccess {
    
    KKTabbarController *tabVc = [[KKTabbarController alloc] init];
    
    self.window.rootViewController = tabVc;
}

@end
