//
//  ViewController.m
//  SubMenuDemo
//
//  Created by nd on 16/11/10.
//  Copyright © 2016年 com.nd. All rights reserved.
//

#import "ViewController.h"
#import "IndustrySelectionViewController.h"

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    IndustrySelectionViewController *industryViewController = [[IndustrySelectionViewController alloc] init];
    
    [self.navigationController pushViewController:industryViewController animated:YES];
    }


@end








































