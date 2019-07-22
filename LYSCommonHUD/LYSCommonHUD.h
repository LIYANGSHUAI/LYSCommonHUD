//
//  LYSCommonHUD.h
//  LYSCommonHUDDemo
//
//  Created by HENAN on 2019/7/22.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

// 提示窗在屏幕上显示的位置
#define LYSAlertProgressHUDPositionCenter 0
#define LYSAlertProgressHUDPositionBottom CGRectGetHeight([UIScreen mainScreen].bounds) * 0.25

NS_ASSUME_NONNULL_BEGIN

@interface LYSCommonHUD : MBProgressHUD

/// 弹出带文字提示的加载圈
- (void)alertProgressHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 弹出文字提示窗
- (void)alertTextHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 隐藏提示窗口
- (void)hiddenHUD;

/// 弹出带文字提示的加载圈
+ (void)alertProgressHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 弹出文字提示窗
+ (void)alertTextHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 隐藏提示窗口
+ (void)hiddenHUD;

@end

NS_ASSUME_NONNULL_END
