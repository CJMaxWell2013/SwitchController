//
//  BJXContainerScrollView.m
//  bjxjob
//
//  Created by J.Cheng on 2017/10/18.
//  Copyright © 2017年 DongLiHuoChe. All rights reserved.
//

#import "BJXContainerScrollView.h"
@implementation BJXContainerScrollView

/**
 此方法返回YES时，
 手势事件会一直往下传递，不论当前层次是否对该事件进行响应。
 */
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if ([self panBack:gestureRecognizer]) {
        return YES;
    }
    return NO;
}

/**
 location_x可自己定义,其代表的是滑动返回距左边的有效长度
 如果想每一个页面都可以触发侧滑返回
 NSInteger temp1 = location.x;
 NSInteger temp2 = IPHONE_W;
 NSInteger every_x = temp1 % temp2;
 if (point.x >0 && every_x < location_x) {
     return YES;
 }
 */
- (BOOL)panBack:(UIGestureRecognizer *)gestureRecognizer {
    CGFloat location_x = ceilf(0.15 * CGRectGetWidth([[UIScreen mainScreen] bounds]));
    if (gestureRecognizer ==self.panGestureRecognizer) {
        UIPanGestureRecognizer *pan = (UIPanGestureRecognizer *)gestureRecognizer;
        CGPoint point = [pan translationInView:self];
        UIGestureRecognizerState state = gestureRecognizer.state;
        if (UIGestureRecognizerStateBegan == state ||UIGestureRecognizerStatePossible == state) {
            CGPoint location = [gestureRecognizer locationInView:self];
            if (point.x > 0 && location.x < location_x && self.contentOffset.x <= 0) {
                return YES;
            }
        }
    }
    return NO;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    if ([self panBack:gestureRecognizer]) {
        return NO;
    }
    return YES;
    
}
@end
