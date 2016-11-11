//
//  FunctionCell.h
//  SubMenuDemo
//
//  Created by nd on 16/11/10.
//  Copyright © 2016年 com.nd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FunctionCell : UITableViewCell

@property (nonatomic, strong) UIButton *selectedButton;
@property (nonatomic, strong) UILabel *functionNameLabel;
@property (nonatomic, assign) BOOL isUnfold;

@end
