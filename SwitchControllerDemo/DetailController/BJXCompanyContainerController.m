//
//  BJXCompanyContainerController.m
//  SwitchControllerDemo
//
//  Created by J.Cheng on 2017/10/21.
//  Copyright © 2017年 None. All rights reserved.
//

#import "BJXCompanyContainerController.h"
#import "BJXShareBarHud.h"
#import "BJXNetworkErrorHud.h"
#import "BJXContainerScrollView.h"
#import "BJXCompanyHomeController.h"
#import "BJXCompanyJobsController.h"
#import "BJXCompanyEvaluationController.h"
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)

@interface BJXCompanyContainerController () <BJXShareBarHudDelegate, UIScrollViewDelegate, BJXCompanyBaseControllerResponder, UIGestureRecognizerDelegate, BJXNetworkErrorHudDelegate>

@property (weak, nonatomic) IBOutlet UIButton *homeBtn;
@property (weak, nonatomic) IBOutlet UIButton *evaluateBtn;
@property (weak, nonatomic) IBOutlet UIButton *jobsBtn;
@property (nonatomic, weak) UIButton *focusBtn;
@property (nonatomic, strong) NSArray *btns;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *companyIntroConstH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *companyNameConstH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *introduceConstTop;

/**普通展开时高度*/
@property (nonatomic, assign) CGFloat normalH;
/**切换按钮悬停时高度*/
@property (nonatomic, assign) CGFloat hiddenH;
/**悬停按钮高度*/
@property (nonatomic, assign) CGFloat hoverBarH;
/**容器*/
@property (nonatomic, weak) UIScrollView *containerView;
/**公司简介悬停视图*/
@property (weak, nonatomic) IBOutlet UIView *companyBarView;
/**红色指示线*/
@property (nonatomic, weak) UIView *indicatorLine;
/**切换按钮悬停时高度*/
@property (nonatomic, assign) CGFloat previous_scroll_x;
/**点击手势*/
@property (nonatomic, weak) UITapGestureRecognizer *tapGesture;
/**分享按钮*/
@property (nonatomic, weak) UIButton *shareBtn;

@end

@implementation BJXCompanyContainerController

- (instancetype)initWithScrollTag:(NSInteger)tag {
    if (self = [super init]) {
        _scrollTag = tag;
        _hoverBarH = 40.f;
    }
    return self;
}

+ (instancetype)companyContainerControllerWithScrollTag:(NSInteger)tag {
    return [[self alloc] initWithScrollTag:tag];
}

- (void)dealloc {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTitleView];
    [self setupIndicatorLine];
    [self setupAllConsts];
    [self setupTouchEvent];
    
    //[self setupBackBarItem];
    [self setupRightBarItems];
    [self setupChilldController];
    [self analogNetworkRequest];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setTranslucent:NO];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:BJXLagoGrayColor] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)setupTitleView {
    self.title = @"公司详情";
}

- (void)changeAllConsts {
    self.normalH = 200.f;
}

- (void)setupAllConsts {
    self.normalH = 240.f;
    self.homeBtn.tag = 0;
    self.jobsBtn.tag = 1;
    self.evaluateBtn.tag = 2;
    _btns = @[self.homeBtn,self.jobsBtn,self.evaluateBtn];
}

- (void)setupTouchEvent {
    UITapGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapRootView:)];
    _tapGesture = tapGesture;
    tapGesture.numberOfTapsRequired = 1;
    tapGesture.numberOfTouchesRequired = 1;
    tapGesture.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapGesture];
}

- (void)setupBackBarItem{
    UIButton *button = [[UIButton alloc] init];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [button setImage:[UIImage imageNamed:@"nav_btu_back_selected"] forState:UIControlStateNormal];
    button.bounds = CGRectMake(0, 0, 40, 40.0f);
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [button addTarget:self action:@selector(backButtonDidTap:) forControlEvents:UIControlEventTouchDown];
    self.navigationItem.leftBarButtonItem = backItem;
}

- (void)setupRightBarItems{
    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    shareBtn.userInteractionEnabled = NO;
    shareBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    shareBtn.bounds = CGRectMake(0, 0, 30, 40);
    [shareBtn setImage:[UIImage imageNamed:@"nav_btu_share_normal"] forState:UIControlStateNormal];
    UIBarButtonItem *shareItem = [[UIBarButtonItem alloc] initWithCustomView:shareBtn];
    [shareBtn addTarget:self action:@selector(shareButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *nagetiveSpacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace                                                                                  target:nil action:nil];
    nagetiveSpacer.width = -9;
    self.navigationItem.rightBarButtonItems = @[nagetiveSpacer,shareItem];
    _shareBtn = shareBtn;
}

- (void)setupChilldController {
    BJXContainerScrollView *scrollView = [[BJXContainerScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    scrollView.delegate = self;
    scrollView.backgroundColor = BJXColor(234, 234, 234, 1);
    scrollView.contentSize = CGSizeMake(3 * kScreenWidth, 0.1);
    [self.view insertSubview:scrollView belowSubview:self.companyBarView];
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.pagingEnabled = YES;
    _containerView = scrollView;
    
    UICollectionViewFlowLayout *flowLayoutHome = [[UICollectionViewFlowLayout alloc] init];
    flowLayoutHome.scrollDirection = UICollectionViewScrollDirectionVertical;
    BJXCompanyHomeController *homeController = [[BJXCompanyHomeController alloc] initWithCollectionViewLayout:flowLayoutHome];
    homeController.scrollResponder = self;
    [self addChildViewController:homeController];
    [homeController didMoveToParentViewController:self];
    
    UICollectionViewFlowLayout *flowLayoutJobs = [[UICollectionViewFlowLayout alloc] init];
    flowLayoutJobs.scrollDirection = UICollectionViewScrollDirectionVertical;
    BJXCompanyJobsController *jobsController = [[BJXCompanyJobsController alloc] initWithCollectionViewLayout:flowLayoutJobs];
    jobsController.scrollResponder = self;
    [self addChildViewController:jobsController];
    [jobsController didMoveToParentViewController:self];
    
    UICollectionViewFlowLayout *flowLayoutEvaluation = [[UICollectionViewFlowLayout alloc] init];
    flowLayoutEvaluation.scrollDirection = UICollectionViewScrollDirectionVertical;
    BJXCompanyEvaluationController *evaluationController = [[BJXCompanyEvaluationController alloc] initWithCollectionViewLayout:flowLayoutEvaluation];
    evaluationController.scrollResponder = self;
    [self addChildViewController:evaluationController];
    [evaluationController didMoveToParentViewController:self];
    
    [self addContainerSubViewsAtScrollTag:self.scrollTag];
    if (self.scrollTag) [scrollView setContentOffset:CGPointMake(self.scrollTag * kScreenWidth, 0) animated:NO];
    self.focusBtn = self.btns[self.scrollTag];
    self.focusBtn.selected = YES;
    
}

- (void)setupIndicatorLine {
    UIView *indicatorLine = [[UIView alloc] init];
    indicatorLine.backgroundColor = BJXCustomOrangeColor;
    indicatorLine.frame = CGRectMake(ceilf(kScreenWidth / 3.0) * self.scrollTag, CGRectGetHeight(self.companyBarView.bounds) - 2.f, ceilf(kScreenWidth / 3.0), 2.f);
    [self.companyBarView addSubview:indicatorLine];
    _indicatorLine = indicatorLine;
}

#pragma mark -scroll view delegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSInteger willTag = [self caculateScrollTag:scrollView];
    [self reloadControllerAtScrollTag:willTag fromTag:_scrollTag];
    _scrollTag = willTag;
    [self migrateIndicatorLineAtPointX:scrollView.mj_offsetX animate:NO];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    _scrollTag = [self caculateScrollTag:scrollView];
    [self foucsButtonDidTap:self.btns[_scrollTag]];
    [self migrateIndicatorLineAtPointX:scrollView.mj_offsetX animate:YES];
}

#pragma mark -BJXCompanyBaseControllerResponder

- (void)companyBaseController:(BJXCompanyBaseController *)baseController scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat detaY = (scrollView.contentOffset.y + self.normalH);
    if (detaY >= self.hiddenH) {
        self.introduceConstTop.constant = -self.hiddenH;
    }else {
        self.introduceConstTop.constant = -detaY;
    }
}

#pragma mark -BJXShareBarHudDelegate

- (void)shareBarHudDidClickWeChatItem{
    [SVProgressHUD showSuccessWithStatus:@"kWeChat成功"];
}

- (void)shareBarHudDidClickWeChatFriendsItem{
    [SVProgressHUD showSuccessWithStatus:@"kChatFriends成功"];
}

- (void)shareBarHudDidClickQQItem{
    [SVProgressHUD showSuccessWithStatus:@"kQQ成功"];
}

- (void)shareBarHudDidClickWeiboItem{
    [SVProgressHUD showSuccessWithStatus:@"kWeibo成功"];
}


- (void)shareBarHudDidClickQQZoneItem{
    [SVProgressHUD showSuccessWithStatus:@"kQQZone成功"];
}

- (void)shareBarHudDidClickCopyLinkItem{
    [SVProgressHUD showSuccessWithStatus:@"复制成功"];
}


- (void)shareBarHudDidClickWedBrowserItem{
    [SVProgressHUD showSuccessWithStatus:@"kWedBrowser成功"];
}

#pragma mark -BJXNetworkErrorHudDelegate
- (void)networkErrorHud:(BJXNetworkErrorHud *)errorHud tryAgainButtonDidClick:(UIButton *)button{
    [self analogNetworkRequest];
}

#pragma mark -event

- (void)backButtonDidTap:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)shareButtonDidClick:(UIButton *)button{
    BJXShareBarHud *hud =  [BJXShareBarHud shareBarHudShow];
    hud.delagte = self;
}

- (void)foucsButtonDidTap:(UIButton *)button {
    self.focusBtn.selected = NO;
    button.selected = YES;
    [self reloadControllerAtScrollTag:button.tag fromTag:self.focusBtn.tag];
    [self.containerView setContentOffset:CGPointMake(kScreenWidth * button.tag, 0) animated:YES];
    _scrollTag = button.tag;
    self.focusBtn = button;
}

#pragma mark -private
- (void)reloadControllerAtScrollTag:(NSInteger)tag fromTag:(NSInteger)fromTag {
    [self addContainerSubViewsAtScrollTag:tag];
    if (tag != fromTag) {
        [self migrateContentOffsertAtScrollTag:tag fromTag:fromTag];
    }
}
- (NSInteger)caculateScrollTag:(UIScrollView *)scrollView {
    CGFloat scroll_x = scrollView.contentOffset.x;
    double realf = scrollView.contentOffset.x / kScreenWidth;
    double lastIndex = 0.0;
    if (scroll_x > _previous_scroll_x) {
        lastIndex = ceil(realf);
    } else {
        lastIndex = floor(realf);
    }
    if (lastIndex < 0.0) {
        lastIndex = 0.f;
    }
    if (lastIndex > 2.0) {
        lastIndex = 2.0;
    }
    _previous_scroll_x = scroll_x;
    return lastIndex;
}

- (void)addContainerSubViewsAtScrollTag:(NSInteger)tag {
    BJXCompanyBaseController *baseController = self.childViewControllers[tag];
    if (![baseController isViewLoaded]) {
        [self.containerView addSubview:baseController.collectionView];
        baseController.collectionView.contentInset = UIEdgeInsetsMake(self.normalH, 0, 0, 0);
        baseController.collectionView.frame = CGRectMake(CGRectGetWidth(self.containerView.bounds) * tag, 0.f, CGRectGetWidth(self.containerView.bounds), CGRectGetHeight(self.containerView.bounds));
    }
}

- (void)migrateContentOffsertAtScrollTag:(NSInteger)tag fromTag:(NSInteger)fromTag {
    BJXCompanyBaseController *nextController = self.childViewControllers[tag];
    BJXCompanyBaseController *fromContrller = self.childViewControllers[fromTag];
    UICollectionView *nextCollectionView = nextController.collectionView;
    UICollectionView *fromCollectionView = fromContrller.collectionView;
  
    CGFloat fromOffsetY = fromCollectionView.contentOffset.y;
    if (fromOffsetY >= -self.hoverBarH) {
        if (nextCollectionView.contentOffset.y < -self.hoverBarH) {
            [nextCollectionView setContentOffset:CGPointMake(0, -self.hoverBarH) animated:NO];
        }
    }else {
        [nextCollectionView setContentOffset:CGPointMake(0, fromOffsetY) animated:NO];
    }
}

- (void)migrateIndicatorLineAtPointX:(CGFloat)point_x animate:(BOOL)animate {
    CGRect rect = self.indicatorLine.frame;
    if (point_x <= 0) {
        rect.origin.x = 0.f;
    }else if (point_x >= 2 * kScreenWidth) {
        rect.origin.x = ceilf(2.0 * kScreenWidth / 3.0);
    }else {
        rect.origin.x = ceilf(point_x / 3.0);
    }
    if (animate) {
        [UIView animateWithDuration:0.1 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
            self.indicatorLine.frame = rect;
        } completion:^(BOOL finished) {
            
        }];
    }else {
        self.indicatorLine.frame = rect;
    }
}

- (void)tapRootView:(UITapGestureRecognizer *)gesture {
    CGPoint tapf = [gesture locationInView:gesture.view];
    CGPoint childP = [gesture.view convertPoint:tapf toView:self.companyBarView];
    if (CGRectContainsPoint(self.companyBarView.bounds, childP)) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"tapRootView" object:nil];
        [self.btns enumerateObjectsUsingBlock:^(UIButton*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (CGRectContainsPoint(obj.frame, childP)) {
                [self foucsButtonDidTap:obj];
                *stop = YES;
            }
        }];
    }
}

#pragma mark -setter and getter
- (void)setNormalH:(CGFloat)normalH {
    _normalH = normalH;
    _hiddenH = normalH - _hoverBarH;
    _companyIntroConstH.constant = normalH;
    CGRect rect = _indicatorLine.frame;
    rect.origin.y = normalH - 2.f;
    _indicatorLine.frame = rect;
    [self.childViewControllers enumerateObjectsUsingBlock:^(__kindof BJXCompanyBaseController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isViewLoaded]) {
            obj.collectionView.contentInset = UIEdgeInsetsMake(normalH, 0, 0, 0);
        }
    }];
}

#pragma mark -network

- (void)analogNetworkRequest {
    [SVProgressHUD show];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    __weak typeof (self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (arc4random() % 2) {
            [weakSelf changeAllConsts];
            [SVProgressHUD dismiss];
            weakSelf.shareBtn.userInteractionEnabled = YES;
        }else {
            [SVProgressHUD dismiss];
            BJXNetworkErrorHud *hud = [BJXNetworkErrorHud networkErrorHudShowInView:weakSelf.view setImageTopInsertConstH:64.0f];
            hud.delegate = weakSelf;
            weakSelf.shareBtn.userInteractionEnabled = NO;
        }
    });
}

@end
