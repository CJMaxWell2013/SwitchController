//
//  ViewController.m
//  SwitchControllerDemo
//
//  Created by J.Cheng on 2017/10/21.
//  Copyright © 2017年 None. All rights reserved.
//

#import "ViewController.h"
#import "BJXCompanyContainerController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jumpDetail:(id)sender {
    BJXCompanyContainerController *containerController = [BJXCompanyContainerController companyContainerControllerWithScrollTag:2];
    [self.navigationController pushViewController:containerController animated:YES];
}


@end
