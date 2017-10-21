//
//  BJXShareBarHud.h
//  bjxjob
//
//  Created by 北极星电力 on 16/8/8.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BJXShareBarHudDelegate;

@interface BJXShareBarHud : UIView

/**
 *  内部Item点击事件的代理
 */
@property (nonatomic,weak) id<BJXShareBarHudDelegate> delagte;
/**
 *  灰色的背景
 */
@property (weak, nonatomic) IBOutlet UIView *BGDarkView;

+ (instancetype)shareBarHudShow;

+ (void)shareBarHudDismiss;

- (void)shareBarHudHiddenAndRemoveFromSuperView;

@end

@protocol BJXShareBarHudDelegate <NSObject>
@optional

/**
 微信好友
 */
- (void)shareBarHudDidClickWeChatItem;

/**
 微信朋友圈
 */
- (void)shareBarHudDidClickWeChatFriendsItem;

- (void)shareBarHudDidClickQQItem;

- (void)shareBarHudDidClickQQZoneItem;

- (void)shareBarHudDidClickWedBrowserItem;

- (void)shareBarHudDidClickCopyLinkItem;

- (void)shareBarHudDidClickWeiboItem;


@end
