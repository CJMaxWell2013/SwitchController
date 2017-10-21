//
//  BJXCompanyJobsController.m
//  SwitchControllerDemo
//
//  Created by J.Cheng on 2017/10/21.
//  Copyright © 2017年 None. All rights reserved.
//

#import "BJXCompanyJobsController.h"
#import "BJXCollectionViewTestCell.h"
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)

@interface BJXCompanyJobsController () <UICollectionViewDelegateFlowLayout>

@end

@implementation BJXCompanyJobsController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *nib = [UINib nibWithNibName:@"BJXCollectionViewTestCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"kBJXCollectionViewTestCellId"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 16;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BJXCollectionViewTestCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"kBJXCollectionViewTestCellId" forIndexPath:indexPath];
    cell.textLable.text = [NSString stringWithFormat:@"%zd-%zd",indexPath.section,indexPath.item];
    return cell;
}

#pragma mark <UICollectionViewDelegateFlowLayout>
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(kScreenWidth, 124.f);
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0f;
}

@end
