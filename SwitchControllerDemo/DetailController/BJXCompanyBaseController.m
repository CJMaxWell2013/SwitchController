//
//  BJXCompanyBaseController.m
//  bjxjob
//
//  Created by 北极星电力 on 2017/10/13.
//  Copyright © 2017年 DongLiHuoChe. All rights reserved.
//

#import "BJXCompanyBaseController.h"
#import "BJXCompanyContainerController.h"
#import <MJRefresh.h>
@interface BJXCompanyBaseController ()
@property (nonatomic, assign) BOOL cancelTap;
@end

@implementation BJXCompanyBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(companyBaseControllerCollectionFooterWillRefresh)];
//     [[NSNotificationCenter defaultCenter] postNotificationName:@"tapRootView" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tapRootViewDidTap:) name:@"tapRootView" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)companyBaseControllerCollectionFooterWillRefresh {
    __weak typeof (self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.collectionView.mj_footer endRefreshing];
    });
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if ([self.scrollResponder respondsToSelector:@selector(companyBaseController:scrollViewDidScroll:)]) {
        [self.scrollResponder companyBaseController:self scrollViewDidScroll:scrollView];
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didSelectItemAtIndexPath");
    if (self.cancelTap) {
        self.cancelTap = NO;
        return;
    }
    BJXCompanyContainerController *container = [BJXCompanyContainerController companyContainerControllerWithScrollTag:1];
    [self.navigationController pushViewController:container animated:YES];
}

- (void)tapRootViewDidTap:(NSNotification *)note {
    self.cancelTap = YES;
}

@end
