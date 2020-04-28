//
//  Target_BodyInfo.m
//  BodyInfo
//
//  Created by KK on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "Target_BodyInfo.h"

#import "KKBodyInfoVC.h"

@implementation Target_BodyInfo

/**
 获取记录身体信息控制器
 */
- (UIViewController *)Action_loadBodyInfoVC:(NSDictionary *)param {
    
    KKBodyInfoVC *vc = [[KKBodyInfoVC alloc] init];
    
    vc.name = param[@"name"];
    
    return vc;
}

@end
