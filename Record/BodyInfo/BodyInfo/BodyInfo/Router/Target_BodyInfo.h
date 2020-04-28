//
//  Target_BodyInfo.h
//  BodyInfo
//
//  Created by KK on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_BodyInfo : NSObject

/**
 获取记录身体信息控制器
 */
- (UIViewController *)Action_loadBodyInfoVC:(NSDictionary *)param;

@end

NS_ASSUME_NONNULL_END
