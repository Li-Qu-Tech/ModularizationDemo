//
//  CTMediator+Login.m
//  Login
//
//  Created by xx on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "CTMediator+Login.h"

@implementation CTMediator (Login)

- (UIViewController *)loginVc {
    
    NSDictionary *param = @{};
    
    UIViewController *vc = [self performTarget:@"Login" action:@"loadLoginVC" params:param shouldCacheTarget:NO];
    
    return vc;
}

@end
