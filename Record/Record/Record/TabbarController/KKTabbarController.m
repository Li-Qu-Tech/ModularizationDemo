//
//  KKTabbarController.m
//  Record
//
//  Created by KK on 2020/3/16.
//  Copyright © 2020 KK. All rights reserved.
//

#import "KKTabbarController.h"

#import <Common/Macro.h>

@interface KKTabbarController ()

@property(nonatomic, strong) NSMutableArray *vcs;

@property(nonatomic, strong) NSArray *controllers;

@property(nonatomic, strong) NSArray *tabBarTitles;

@property(nonatomic, strong) NSArray *tabBarNorImgs;

@property(nonatomic, strong) NSArray *tabBarSelImgs;

@end

@implementation KKTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.vcs = [NSMutableArray array];
    
    [self addChildViewControllers];
}

#pragma mark - 加载控制器

- (void)addChildViewControllers {
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [[UITabBar appearance] setBarTintColor:kWhiteColor];
    
    NSInteger index = 0;
    
    for (NSString *controllerstr in self.controllers) {
        
        UIViewController *superVC = [[NSClassFromString(controllerstr) alloc]init];
        
        UINavigationController *superNav = [[UINavigationController alloc]initWithRootViewController:superVC];
        
        [self.vcs addObject:superNav];
        
        index++;
    }
    
    self.viewControllers = self.vcs;
    self.tabBar.translucent = NO;
    
    for(int i=0; i< self.tabBar.items.count; i++) {
        UITabBarItem *item = [self.tabBar.items objectAtIndex:i];
        
        item.title = self.tabBarTitles[i];
        [item setImage:[[UIImage imageNamed:self.tabBarNorImgs[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [item setSelectedImage:[[UIImage imageNamed:self.tabBarSelImgs[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];

        NSDictionary *dict = @{
                               NSFontAttributeName:[UIFont boldSystemFontOfSize:14]
                               };
        [item setTitleTextAttributes:dict forState:UIControlStateNormal];

        NSDictionary *dict2 = @{
                                NSFontAttributeName:[UIFont boldSystemFontOfSize:14]
                                };
        [item setTitleTextAttributes:dict2 forState:UIControlStateSelected];
    }
}


#pragma mark - 懒加载
- (NSArray *)tabBarTitles{
    if (!_tabBarTitles) {
        
        _tabBarTitles = @[@"首页", @"我的"];
    }
    return _tabBarTitles;
}

- (NSArray *)tabBarNorImgs{
    if (!_tabBarNorImgs) {
        
        _tabBarNorImgs = @[@"", @""];
    }
    return _tabBarNorImgs;
}

- (NSArray *)tabBarSelImgs{
    if (!_tabBarSelImgs) {
        
        _tabBarSelImgs = @[@"", @""];
    }
    return _tabBarSelImgs;
}

- (NSArray *)controllers{
    if (!_controllers) {
        
        _controllers = @[@"KKHomeVC" , @"KKMineVC"];
    }
    return _controllers;
}

#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
