//
//  BJXShareBarHud.m
//  bjxjob
//
//  Created by 北极星电力 on 16/8/8.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import "BJXShareBarHud.h"

#import "BJXShareItemButton.h"
#import "SVProgressHUD.h"

@interface BJXShareBarHud()

@property (weak, nonatomic) IBOutlet UIView *BarView;

@property (weak, nonatomic) IBOutlet UIView *barBgEffectView;

@property (weak, nonatomic)  UIButton *cancelButton;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *barBottomConst;

@end
@implementation BJXShareBarHud

- (void)awakeFromNib{

    [super awakeFromNib];
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(darkViewDidClick:)];
    [self.BGDarkView addGestureRecognizer:gesture];
    
    // 添加毛玻璃控件
    UIBlurEffect * blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    // 毛玻璃视图
    UIVisualEffectView * effectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    effectView.translatesAutoresizingMaskIntoConstraints = NO;
    // 设置模糊透明度
    
    [self.barBgEffectView addSubview:effectView];
    
    
    
    // 添加毛玻璃控件的约束
    
    NSLayoutConstraint *effectLeftConst = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.barBgEffectView attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    
    NSLayoutConstraint *effectRightConst = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.barBgEffectView attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    
    NSLayoutConstraint *effectTopConst = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.barBgEffectView attribute:NSLayoutAttributeTop multiplier:1 constant:0.0f];
    
    NSLayoutConstraint *effectbottomConst = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.barBgEffectView attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    
    [self.barBgEffectView addConstraint:effectLeftConst];
    [self.barBgEffectView addConstraint:effectRightConst];
    [self.barBgEffectView addConstraint:effectTopConst];
    [self.barBgEffectView addConstraint:effectbottomConst];
    
    
    UIButton *cancelBtn = [[UIButton alloc] init];
    [cancelBtn setTitleColor:[UIColor colorWithRed:(44.0/255.0) green:(44.0/255.0) blue:(44.0/255.0) alpha:1] forState:UIControlStateNormal];
    [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
    cancelBtn.translatesAutoresizingMaskIntoConstraints = NO;
    cancelBtn.backgroundColor = [UIColor whiteColor];
    _cancelButton= cancelBtn;
    [cancelBtn addTarget:self action:@selector(cancelButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.BarView addSubview:cancelBtn];
    
    NSLayoutConstraint *cancelLeftConst = [NSLayoutConstraint constraintWithItem:cancelBtn attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.BarView attribute:NSLayoutAttributeLeft multiplier:1 constant:14];
    
    NSLayoutConstraint *cancelRightConst = [NSLayoutConstraint constraintWithItem:cancelBtn attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.BarView attribute:NSLayoutAttributeRight multiplier:1 constant:-14];
    
    NSLayoutConstraint *cancelHeightConst = [NSLayoutConstraint constraintWithItem:cancelBtn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:45.0f];
    
    NSLayoutConstraint *cancelbottomConst = [NSLayoutConstraint constraintWithItem:cancelBtn attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.BarView attribute:NSLayoutAttributeBottom multiplier:1 constant:-9.0f];
    
    [self.BarView addConstraint:cancelLeftConst];
    [self.BarView addConstraint:cancelRightConst];
    [self.BarView addConstraint:cancelHeightConst];
    [self.BarView addConstraint:cancelbottomConst];
    
    
    // 添加滚动的scrollView
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.showsHorizontalScrollIndicator = NO;
    if (CGRectGetHeight([[UIScreen mainScreen] bounds]) == 568.f) {
        scrollView.contentSize = CGSizeMake(364.0f, 0);
    }
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.BarView addSubview:scrollView];
    
    // 添加滚动的scrollView约束
    
    NSLayoutConstraint *scrollViewLeftConst = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.BarView attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    
    NSLayoutConstraint *scrollViewRightConst = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.BarView attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    
    NSLayoutConstraint *scrollViewTopConst = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.BarView attribute:NSLayoutAttributeTop multiplier:1 constant:0.0f];
    
    NSLayoutConstraint *scrollViewbottomConst = [NSLayoutConstraint constraintWithItem:scrollView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:cancelBtn attribute:NSLayoutAttributeTop multiplier:1 constant:0.0f];
    
    [self.BarView addConstraint:scrollViewLeftConst];
    [self.BarView addConstraint:scrollViewRightConst];
    [self.BarView addConstraint:scrollViewTopConst];
    [self.BarView addConstraint:scrollViewbottomConst];
    
    
    // 内部的分享按钮
    CGFloat screenW = [[UIScreen mainScreen] bounds].size.width;
    CGFloat midMargin = 0.0f;
    if (CGRectGetHeight([[UIScreen mainScreen] bounds]) == 568.f) {
        midMargin = 9.0f;
    }else if (CGRectGetHeight([[UIScreen mainScreen] bounds]) == 480.f){
        midMargin = 9.0f;
    }else{
        midMargin = (screenW - 60.0f * 5 - 28.0f) / 4.0;
    }
    CGFloat buttonW = 62.0f;
    CGFloat buttonH = 86.0f;
    CGFloat buttonY = 20.0f;
    CGFloat buttonSideMargin = 14.0f;
    NSString *btnTitle = nil;
    NSString *btnImage = nil;
    for (NSInteger index = 0; index < 7; index++) {
        BJXShareItemButton *button = [[BJXShareItemButton alloc] init];
        CGFloat buttonX = buttonSideMargin + index * (buttonW + midMargin);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        if (index == 0) {
            btnTitle = @"微信好友";
            btnImage = @"post_btn_wechat";
        }
        else if(index == 1)
        {
            btnTitle = @"微信朋友圈";
            btnImage = @"post_btn_friends";
        }
        else if(index == 2)
        {
            btnTitle = @"QQ好友";
            btnImage = @"post_btn_qq";
            
        }
        else if(index == 3)
        {
            btnTitle = @"QQ空间";
            btnImage = @"post_btn_qzone";
            
        }
        else if(index == 4)
        {
            btnTitle = @"新浪微博";
            btnImage = @"post_btn_sina";
            
        }
        else if(index == 5)
        {
            btnTitle = @"浏览器打开";
            btnImage = @"post_btn_browser";
            
        }
        else if(index == 6)
        {
            btnTitle = @"复制链接";
            btnImage = @"post_btn_copylink";
            
        }
        else{
            
        }
        [button setTitle:btnTitle forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:btnImage] forState:UIControlStateNormal];
        button.tag = index;
        [button addTarget:self action:@selector(shareButtonItemDidClick:) forControlEvents:UIControlEventTouchUpInside];
        [scrollView addSubview:button];
        if (index == 6) {
            scrollView.contentSize = CGSizeMake(CGRectGetMaxX(button.frame) + buttonSideMargin, scrollView.bounds.size.height);
        }


    }
    
    
    
}


- (void)cancelButtonDidClick:(UIButton *)button{

    [UIView animateWithDuration:0.20f animations:^{
        self.BGDarkView.alpha = 0;
        self.BarView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 44);
        
    } completion:^(BOOL finished) {
        
        if (finished) { // 动画完成移除该控件
            [self removeFromSuperview];
        }
        
    }];
   
}

- (void)darkViewDidClick:(UITapGestureRecognizer *)gesture{


    [self cancelButtonDidClick:nil];

}

+ (instancetype)shareBarHudShow{

    
    BJXShareBarHud *sharebarHud = [[[NSBundle mainBundle] loadNibNamed:@"BJXShareBarHud" owner:nil options:nil] lastObject];
    [[[UIApplication sharedApplication] keyWindow] addSubview:sharebarHud];
    sharebarHud.frame = [[UIScreen mainScreen] bounds];
    
    // 底部的bar加动画
    CATransition *transition = [CATransition animation];
    transition.duration = 0.20f;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromTop;
    [sharebarHud.BarView.layer addAnimation:transition forKey:@"animation"];
    
    // 灰色背景加动画
    sharebarHud.BGDarkView.alpha = 0;
    [UIView animateWithDuration:0.20f animations:^{
        sharebarHud.BGDarkView.alpha = 1;
    }];

    return sharebarHud;
}

- (void)shareBarHudHiddenAndRemoveFromSuperView{

    [self cancelButtonDidClick:nil];

}

+ (void)shareBarHudDismiss{
    
    for (UIView *view in [[UIApplication sharedApplication] keyWindow].subviews) {
        if ([view isKindOfClass:[BJXShareBarHud class]]) {
            [view removeFromSuperview];
            break; // 这个View一般只有一个 不用担心
        }
    }
}

- (void)shareButtonItemDidClick:(UIButton *)button{

    [self cancelButtonDidClick:nil];
    
    if (button.tag == 0) {
        if ([self.delagte respondsToSelector:@selector(shareBarHudDidClickWeChatItem)]) {
            [self.delagte shareBarHudDidClickWeChatItem];
        }
    }
    else if (button.tag == 1)
    {
        if ([self.delagte respondsToSelector:@selector(shareBarHudDidClickWeChatFriendsItem)]) {
            [self.delagte shareBarHudDidClickWeChatFriendsItem];
        }
    }
    else if (button.tag == 2)
    {
        if ([self.delagte respondsToSelector:@selector(shareBarHudDidClickQQItem)]) {
            [self.delagte shareBarHudDidClickQQItem];
        }
    }
    else if (button.tag == 3)
    {
        if ([self.delagte respondsToSelector:@selector(shareBarHudDidClickQQZoneItem)]) {
            [self.delagte shareBarHudDidClickQQZoneItem];
        }
    }
    else if (button.tag == 4) // 打开微博
    {
        if ([self.delagte respondsToSelector:@selector(shareBarHudDidClickWeiboItem)]) {
            [self.delagte shareBarHudDidClickWeiboItem];
        }
    }
    else if (button.tag == 5) // 打开浏览器
    {
        if ([self.delagte respondsToSelector:@selector(shareBarHudDidClickWedBrowserItem)]) {
            [self.delagte shareBarHudDidClickWedBrowserItem];
        }
    }
    else if (button.tag == 6) // 复制内容
    {
        if ([self.delagte respondsToSelector:@selector(shareBarHudDidClickCopyLinkItem)]) {
            [self.delagte shareBarHudDidClickCopyLinkItem];
        }
    }
    else
    {
        
    }

}

- (void)dealloc{

    NSLog(@"dealloc = %@",NSStringFromClass([self class]));


}

@end
