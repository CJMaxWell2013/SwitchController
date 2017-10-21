//
//  BJXCompanyContainerController.h
//  bjxjob
//
//  Created by 北极星电力 on 2017/10/13.
//  Copyright © 2017年 DongLiHuoChe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BJXCompanyContainerController : UIViewController
/** 滚动标记 0.默认-公司主页; 1.公司职位页; 2.面试评价 */
@property (nonatomic, assign ,readonly) NSInteger scrollTag;
/** 初始化方法 */
- (instancetype)initWithScrollTag:(NSInteger)tag;
+ (instancetype)companyContainerControllerWithScrollTag:(NSInteger)tag;
@end
