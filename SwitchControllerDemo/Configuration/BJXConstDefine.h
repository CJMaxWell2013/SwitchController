//
//  BJXConstDefine.h
//  SwitchControllerDemo
//
//  Created by J.Cheng on 2017/10/21.
//  Copyright © 2017年 None. All rights reserved.
//

#import <UIKit/UIKit.h>


#define IS_iOS8 (([[UIDevice currentDevice].systemVersion doubleValue] >= 8.0f) ? YES : NO)

#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)

#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)

#define IS_IPHONE4 (([[UIScreen mainScreen] bounds].size.height == 480.0f) ? YES : NO)

#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height == 568.0f) ? YES : NO)

#define IS_IPHONE6 (([[UIScreen mainScreen] bounds].size.height == 667.0f) ? YES : NO)

#define IS_IPHONE6p (([[UIScreen mainScreen] bounds].size.height == 736.0f) ? YES : NO)

#define kCustomFixedMargin 15.0f


#define BJXSysFontSize(fs) [UIFont systemFontOfSize:(fs)]

#define BJXFontSize(fs) [UIFont systemFontOfSize:(fs)]

#define BJXSalaryFontSize(fs) [UIFont systemFontOfSize:(fs)]

#define BJXBoldFontSize(bfs) [UIFont systemFontOfSize:(fs)]

#define BJXThinFontSize(tfs) [UIFont systemFontOfSize:(fs)]

#define BJXCustomOrangeColor [UIColor colorWithRed:255.0/255.0 green:69.0/255.0 blue:1.0/255.0 alpha:1.0]

#define BJXLagoGrayColor [UIColor colorWithRed:249.0/255.0 green:249.0/255.0 blue:249.0/255.0 alpha:1.0]

#define BJXLagoGrayAlphaColor(a) [UIColor colorWithRed:249.0/255.0 green:249.0/255.0 blue:249.0/255.0 alpha:(a)]

#define BJXCustomAlphaOrangeColor(a) [UIColor colorWithRed:255.0/255.0 green:69.0/255.0 blue:1.0/255.0 alpha:(a)]

#define BJXColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]










