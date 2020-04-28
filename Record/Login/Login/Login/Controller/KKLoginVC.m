//
//  KKLoginVC.m
//  Login
//
//  Created by xx on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "KKLoginVC.h"

#import <Common/UIButton+Additon.h>
#import <Common/Macro.h>

@interface KKLoginVC ()

@end

@implementation KKLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"登录";
    
    UIButton *button = [UIButton buttonWith:@"点击登录" titleColor:[UIColor blueColor] fontSize:20];
    
    button.center = self.view.center;
    button.bounds = CGRectMake(0, 0, 100, 30);
    [button addTarget:self action:@selector(buttonCLick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)buttonCLick {
    
    //通过通知、代理或者block进行组件间的通信，这里用通知
    [[NSNotificationCenter defaultCenter] postNotificationName:kLoginSuccessNoti object:nil];
}

@end
