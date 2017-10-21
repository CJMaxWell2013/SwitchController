//
//  BJXCompanyBaseController.h
//  bjxjob
//
//  Created by 北极星电力 on 2017/10/13.
//  Copyright © 2017年 DongLiHuoChe. All rights reserved.
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

