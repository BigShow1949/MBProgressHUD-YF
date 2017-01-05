//
//  YFViewControllerB.m
//  MBProgressHUD+YF
//
//  Created by zhht01 on 16/1/8.
//  Copyright © 2016年 BigShow1949. All rights reserved.
//

#import "YFViewControllerB.h"
#import "MBProgressHUD+YF.h"

@interface YFViewControllerB ()

@end

@implementation YFViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setTitle:@"请求网络" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(request) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)request {

    [MBProgressHUD showMessage:@"正在请求网络"];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUD];
        
        int i = arc4random_uniform(2);
        
        if (i) {
            [self nodataView];
        }else {
            [self networkError];
        }
        
    });
    
}

- (void)networkError { // 无网络页面提示
    
    [MBProgressHUD networkErrorTipView:self.view title:@"加载失败!" message:@"请检查您的网络是否正常" refreshButtonClick:^{
        
        NSLog(@"点击了刷新");
        [self request];
    }];
}


- (void)nodataView {  // 无数据页面提示

    [MBProgressHUD noDataTipView:self.view title:@"您还没有相关停车记录!" imageName:@"tinche_jilu" refresh:^{
        
        [self request];
    }];
    
}



@end
