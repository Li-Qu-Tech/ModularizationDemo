//
//  KKBodyInfoVC.m
//  BodyInfo
//
//  Created by KK on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "KKBodyInfoVC.h"

@interface KKBodyInfoVC ()

@end

@implementation KKBodyInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = [NSString stringWithFormat:@"%@的信息",_name];
}



@end
