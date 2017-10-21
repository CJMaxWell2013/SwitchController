//
//  UIImage+GenByColor.h
//  杰西卡个人主页详情
//
//  Created by J.Cheng on 16/7/1.
//  Copyright © 2016年 Jessica. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GenByColor)

// 根据颜色生成一张尺寸为1*1的相同颜色图片
+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageWithHalfColor:(UIColor *)color;

+ (UIImage *)imageWithFullColor:(UIColor *)color andAlpha:(CGFloat)alpha andSize:(CGSize)size;

@end
