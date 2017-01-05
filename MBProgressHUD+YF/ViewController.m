//
//  ViewController.m
//  MBProgressHUD+YF
//
//  Created by zhht01 on 16/1/8.
//  Copyright © 2016年 BigShow1949. All rights reserved.
//

#import "ViewController.h"
#import "YFViewControllerB.h"

@interface ViewController ()
// test
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"演示";
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setTitle:@"点击跳转B" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpToB) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)jumpToB {

    YFViewControllerB *vcB = [[YFViewControllerB alloc] init];
    [self.navigationController pushViewController:vcB animated:YES];
    
}

@end
