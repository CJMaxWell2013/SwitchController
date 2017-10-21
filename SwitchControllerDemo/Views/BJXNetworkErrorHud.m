//
//  BJXNetworkErrorHud.m
//  bjxjob
//
//  Created by 北极星电力 on 16/9/9.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import "BJXNetworkErrorHud.h"
@interface BJXNetworkErrorHud()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageConstH;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *dataErrorLableConstH;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *checkNetLableConstH;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *wifiTopConstY;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *dataErrorTopConstY;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *checkNetTopConstY;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *againBtnTopConstY;
- (IBAction)tryButtonDidClick:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *againBtn;
@end
@implementation BJXNetworkErrorHud

- (void)awakeFromNib{

    [super awakeFromNib];
    self.againBtn.layer.cornerRadius = 2.f;
    self.againBtn.layer.masksToBounds = YES;

}


+ (instancetype)networkErrorHudShowInView:(UIView *)view  setImageTopInsertConstH:(CGFloat)topInsertConstH{


    BJXNetworkErrorHud *hudView = [self checkNetworkErrorHudInView:view];
    
    if (hudView)
    {
        if (view)
        {
            hudView.frame = [view bounds];
        }
        else
        {
            [[[UIApplication sharedApplication] keyWindow] addSubview:hudView];
            hudView.frame = [[UIScreen mainScreen] bounds];
        }
        return hudView;
    }
    
    BJXNetworkErrorHud *hud = [[[NSBundle mainBundle] loadNibNamed:@"BJXNetworkErrorHud" owner:nil options:nil] lastObject];
    
    if (view)
    {
        [view addSubview:hud];
        hud.frame = [view bounds];
    }
    else
    {
        [[[UIApplication sharedApplication] keyWindow] addSubview:hud];
        hud.frame = [[UIScreen mainScreen] bounds];
    }
   
    hud.wifiTopConstY.constant = 78.0 + topInsertConstH;
    
    return hud;
}

+ (instancetype)checkNetworkErrorHudInView:(UIView *)view{


    BJXNetworkErrorHud *hudView = nil;
    for (UIView *subView in view.subviews) {
        if ([subView isMemberOfClass:[BJXNetworkErrorHud class]]) {
            hudView = (BJXNetworkErrorHud *)subView;
            break;
        }
    }
    
    return hudView;

}

+ (void)hiddenAndRemoveNetworkErrorHudInView:(UIView *)view{

    BJXNetworkErrorHud * hud = [self checkNetworkErrorHudInView:view];
    if (hud) {
        [hud removeFromSuperview];
    }
}

- (IBAction)tryButtonDidClick:(UIButton *)sender {
    [self removeFromSuperview];
    if ([self.delegate respondsToSelector:@selector(networkErrorHud:tryAgainButtonDidClick:)]) {
        [self.delegate networkErrorHud:self tryAgainButtonDidClick:sender];
    }
    
    
}
@end
