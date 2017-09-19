//
//  ViewController.m
//  scanDemo-master
//
//  Created by SiYugui on 2017/9/13.
//  Copyright © 2017年 SiYugui. All rights reserved.
//

#import "ViewController.h"

#import "ScanningViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 40)];
    btn.backgroundColor = [UIColor blackColor];
    [btn setTintColor:[UIColor blackColor]];
    [btn setTitle:@"扫描" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushScan) forControlEvents:UIControlEventTouchUpInside];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    
}

-(void)pushScan{
    ScanningViewController *scanVc = [[ScanningViewController alloc] init];
    [self.navigationController pushViewController:scanVc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
