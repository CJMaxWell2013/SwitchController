//
//  BJXCompanyBaseController.h
//  SwitchControllerDemo
//
//  Created by J.Cheng on 2017/10/21.
//  Copyright © 2017年 None. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol BJXCompanyBaseControllerResponder;
@interface BJXCompanyBaseController : UICollectionViewController
@property (nonatomic, weak) id<BJXCompanyBaseControllerResponder> scrollResponder;
/**交由子类实现上拉刷新回调*/
- (void)companyBaseControllerCollectionFooterWillRefresh;
@end
@protocol BJXCompanyBaseControllerResponder <NSObject>
@optional
- (void)companyBaseController:(BJXCompanyBaseController *)baseController scrollViewDidScroll:(UIScrollView *)scrollView;
@end

