//
//  ViewController.m
//  LYSCommonHUDDemo
//
//  Created by HENAN on 2019/7/22.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "ViewController.h"
#import "LYSCommonHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [LYSCommonHUD alertTextHUD:@"请求失败!!" positionY:LYSAlertProgressHUDPositionBottom];
}


@end
