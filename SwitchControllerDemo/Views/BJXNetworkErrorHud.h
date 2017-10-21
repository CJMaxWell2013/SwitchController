//
//  BJXNetworkErrorHud.h
//  SwitchControllerDemo
//
//  Created by 北极星电力 on 16/9/9.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol BJXNetworkErrorHudDelegate;
@interface BJXNetworkErrorHud : UIView

@property (nonatomic,weak) id<BJXNetworkErrorHudDelegate> delegate;

+ (instancetype)networkErrorHudShowInView:(UIView *)view  setImageTopInsertConstH:(CGFloat)topInsertConstH;

+ (instancetype)checkNetworkErrorHudInView:(UIView *)view;
+ (void)hiddenAndRemoveNetworkErrorHudInView:(UIView *)view;
@end
@protocol BJXNetworkErrorHudDelegate <NSObject>

@optional

- (void)networkErrorHud:(BJXNetworkErrorHud *)errorHud tryAgainButtonDidClick:(UIButton *)button;

@end
