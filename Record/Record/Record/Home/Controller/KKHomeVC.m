//
//  KKHomeVC.m
//  Record
//
//  Created by KK on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "KKHomeVC.h"

#import <Common/UIButton+Additon.h>
#import <BodyInfo/CTMediator+BodyInfo.h>

@interface KKHomeVC ()

@end

@implementation KKHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"首页";
    
    UIButton *button = [UIButton buttonWith:@"记录身体信息" titleColor:[UIColor blueColor] fontSize:20];
    
    button.center = self.view.center;
    button.bounds = CGRectMake(0, 0, 130, 30);
    [button addTarget:self action:@selector(buttonCLick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)buttonCLick {
    
    UIViewController *bodyInfoVc = [[CTMediator sharedInstance] BodyInfoVcWithName:@"小明"];
    
    bodyInfoVc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:bodyInfoVc animated:YES];
}

@end
