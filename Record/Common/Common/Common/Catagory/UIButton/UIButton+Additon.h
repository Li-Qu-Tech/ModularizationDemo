//
//  UIButton+Additon.h
//  Common
//
//  Created by xx on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Additon)

/**
 普通文字按钮
 */
+ (UIButton *)buttonWith:(NSString *)title titleColor:(UIColor *)color fontSize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
