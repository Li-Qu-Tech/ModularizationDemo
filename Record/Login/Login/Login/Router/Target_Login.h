//
//  Target_Login.h
//  Login
//
//  Created by xx on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Login : NSObject

/**
 获取登录控制器
 */
- (UIViewController *)Action_loadLoginVC:(NSDictionary *)param;

@end

NS_ASSUME_NONNULL_END
