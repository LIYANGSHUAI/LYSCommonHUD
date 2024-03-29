//
//  LYSCommonHUD.m
//  LYSCommonHUDDemo
//
//  Created by HENAN on 2019/7/22.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSCommonHUD.h"

@interface LYSCommonHUD ()
/// 存放父视图
@property (nonatomic,weak) UIView *view;
@end

@implementation LYSCommonHUD

- (instancetype)initWithView:(UIView *)view
{
    if (self = [super initWithView:view])
    {
        self.view = view;
        self.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
        self.bezelView.backgroundColor = [UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:0.8];
        self.bezelView.layer.cornerRadius = 3;
        self.label.font = [UIFont systemFontOfSize:14];
        self.contentColor = [UIColor whiteColor];
        self.animationType = MBProgressHUDAnimationFade;
        self.removeFromSuperViewOnHide = YES;
    }
    return self;
}

- (void)alertProgressHUD:(NSString *)message positionY:(CGFloat)positionY
{
    self.mode = MBProgressHUDModeIndeterminate;
    self.margin = 20;
    self.offset = CGPointMake(0, positionY);
    self.minSize = CGSizeMake(40, 40);
    self.label.text = message;
    [self.view addSubview:self];
    [self showAnimated:YES];
}

- (void)alertTextHUD:(NSString *)message positionY:(CGFloat)positionY
{
    self.mode = MBProgressHUDModeText;
    self.minSize = CGSizeZero;
    self.margin = 10;
    self.offset = CGPointMake(0, positionY);
    self.label.text = message;
    self.label.numberOfLines = 0;
    [self.view addSubview:self];
    [self showAnimated:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self hideAnimated:YES];
    });
}

- (void)hiddenHUD
{
    [self hideAnimated:YES];
}

+ (void)alertProgressHUD:(NSString *)message positionY:(CGFloat)positionY
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    LYSCommonHUD *hud = [window viewWithTag:2018];
    if (!hud) {
        hud = [[LYSCommonHUD alloc] initWithView:window];
        hud.tag = 2018;
    }
    [hud alertProgressHUD:message positionY:positionY];
}

+ (void)alertTextHUD:(NSString *)message positionY:(CGFloat)positionY
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    LYSCommonHUD *hud = [window viewWithTag:2018];
    if (!hud) {
        hud = [[LYSCommonHUD alloc] initWithView:window];
        hud.tag = 2018;
    }
    [hud alertTextHUD:message positionY:positionY];
}

+ (void)hiddenHUD
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    LYSCommonHUD *hud = [window viewWithTag:2018];
    if (hud) {
        [hud hiddenHUD];
    }
}

@end
