//
//  CTMediator+BodyInfo.m
//  BodyInfo
//
//  Created by KK on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "CTMediator+BodyInfo.h"

@implementation CTMediator (BodyInfo)

- (UIViewController *)BodyInfoVcWithName:(NSString *)name {
    
    NSDictionary *param = @{@"name":name};
    
    UIViewController *vc = [self performTarget:@"BodyInfo" action:@"loadBodyInfoVC" params:param shouldCacheTarget:NO];
    
    return vc;
}

@end
