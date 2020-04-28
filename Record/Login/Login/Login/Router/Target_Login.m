//
//  Target_Login.m
//  Login
//
//  Created by xx on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "Target_Login.h"

#import "KKLoginVC.h"

@implementation Target_Login

/**
 获取登录控制器
 */
- (UIViewController *)Action_loadLoginVC:(NSDictionary *)param {
    
    KKLoginVC *vc = [[KKLoginVC alloc] init];
    
    return vc;
}

@end
