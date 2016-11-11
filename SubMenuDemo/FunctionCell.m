//
//  FunctionCell.m
//  SubMenuDemo
//
//  Created by nd on 16/11/10.
//  Copyright © 2016年 com.nd. All rights reserved.
//

#import "FunctionCell.h"
#import <Masonry/Masonry.h>


@interface FunctionCell()

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
@end

@implementation FunctionCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
        _selectedButton = [[UIButton alloc] init];
        _selectedButton.backgroundColor = [UIColor yellowColor];
        [_selectedButton addTarget:self action:@selector(unfold:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_selectedButton];
        [_selectedButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(36, 36));
            make.left.equalTo(self.mas_left).with.offset(4);
            make.top.equalTo(self.mas_top).with.offset(10);
        }];
        
        _functionNameLabel = [[UILabel alloc] init];
        
        [self addSubview:_functionNameLabel];
        [_functionNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(200, 36));
            make.top.equalTo(self.mas_top).with.offset(4);
            make.left.equalTo(_selectedButton.mas_right).with.offset(4);
        }];
        
        if (_isUnfold) {
            
            
        }
    }
    
    return self;
}

























@end
