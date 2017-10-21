//
//  BJXShareItemButton.m
//  SwitchControllerDemo
//
//  Created by 北极星电力 on 16/8/8.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import "BJXShareItemButton.h"
@interface BJXShareItemButton()

@property (nonatomic,assign) CGFloat titleH;

@end
@implementation BJXShareItemButton


- (instancetype)init{

    if (self = [super init]) {
        
        UIFont *titleFont = [UIFont systemFontOfSize:12.0f];
        self.titleLabel.font = titleFont;
        CGSize tempSize = [self getSizeWithString:@"微信朋友圈" andWithWidth:500 andWithFont:titleFont];
        _titleH = tempSize.height;
        [self setTitleColor:[UIColor colorWithRed:(89.0/255.0) green:(93.0/255.0) blue:(94.0/255.0) alpha:1.0] forState:UIControlStateNormal];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        
    }
    
    return self;

}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{

    CGFloat titleW = contentRect.size.width;
    CGFloat titleH = _titleH;
    CGFloat titleX = 0.0f;
    CGFloat titleY = contentRect.size.height - _titleH;
    CGRect rect = CGRectMake(titleX, titleY, titleW, titleH);
    return rect;
    
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{

    CGFloat imageW = 60.0f;
    CGFloat imageH = imageW;
    CGFloat imageX = (contentRect.size.width - imageW) * 0.5;
    CGFloat imageY = 0;
    CGRect rect = CGRectMake(imageX, imageY, imageW, imageH);
    return rect;
    
}

- (CGSize)getSizeWithString:(NSString *)aString andWithWidth:(CGFloat)width andWithFont:(UIFont *)font{
    CGSize size = [aString boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    return size;
}


@end
