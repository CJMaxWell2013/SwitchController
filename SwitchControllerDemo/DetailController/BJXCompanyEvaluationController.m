//
//  BJXCompanyEvaluationController.m
//  bjxjob
//
//  Created by 北极星电力 on 2017/10/13.
//  Copyright © 2017年 DongLiHuoChe. All rights reserved.
//

#import "BJXCompanyEvaluationController.h"
#import "BJXCollectionViewTestCell.h"

@interface BJXCompanyEvaluationController () <UICollectionViewDelegateFlowLayout>

@end

@implementation BJXCompanyEvaluationController
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
    
    return 18;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BJXCollectionViewTestCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"kBJXCollectionViewTestCellId" forIndexPath:indexPath];
    cell.topline.backgroundColor = cell.bottomline.backgroundColor = [UIColor blueColor];
    cell.textLable.text = [NSString stringWithFormat:@"%zd-%zd",indexPath.section,indexPath.item];
    return cell;
}

#pragma mark <UICollectionViewDelegateFlowLayout>
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(CGRectGetWidth([[UIScreen mainScreen] bounds]), 124.f);
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0f;
}

@end
