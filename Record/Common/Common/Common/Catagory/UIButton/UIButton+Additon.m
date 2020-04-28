//
//  UIButton+Additon.m
//  Common
//
//  Created by xx on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "UIButton+Additon.h"


@implementation UIButton (Additon)

+ (UIButton *)buttonWith:(NSString *)title titleColor:(UIColor *)color fontSize:(CGFloat)fontSize {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    
    return button;
}

@end
