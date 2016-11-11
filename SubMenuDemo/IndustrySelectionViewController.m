//
//  IndustrySelectionViewController.m
//  SubMenuDemo
//
//  Created by nd on 16/11/10.
//  Copyright © 2016年 com.nd. All rights reserved.
//

#import "IndustrySelectionViewController.h"
#import "FunctionCell.h"

#define KScreenWidth [[UIScreen mainScreen] bounds].size.width
#define KSCreenHeight [[UIScreen mainScreen] bounds].size.height

@interface IndustrySelectionViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIView *headView;
@property (nonatomic, strong) NSMutableArray *industryArray;
@property (nonatomic, strong) NSMutableArray *functionArray;
@property (nonatomic, strong) NSMutableArray *positionArray;

@end

@implementation IndustrySelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _industryArray = [[NSMutableArray alloc] initWithObjects:@"IT/通信/互联网", @"销售/客服", @"会计/金融", @"其他行业", nil];
    _functionArray = [NSMutableArray arrayWithObjects:@[@"计算机硬件", @"计算机软件", @"网店淘宝", @"IT-管理", @"IT-技术支持"], @[@"销售业务", @"销售管理", @"客户经理"], @[@"银行财务", @"财务总监", @"税务审计"],@[@"技工", @"保洁"], nil].mutableCopy;
//    _functionArray = [[NSMutableArray alloc] initWithObjects:@"计算机硬件", @"计算机软件", @"网店淘宝", @"IT-管理", @"IT-技术支持", nil];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KSCreenHeight) style:UITableViewStyleGrouped] ;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
//    _headView.frame = CGRectMake(0, 0, KScreenWidth, 80);
//    [_tableView addSubview:_headView];
}

//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    
//    UIView *headerView = [[UIView alloc] init];
//    headerView.backgroundColor = [UIColor redColor];
//    headerView.userInteractionEnabled = YES;
//    headerView.hidden = YES;
//    
//    return headerView;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 44;
}

//分组的数目，行业的种类数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [_industryArray count];
    
}

//每组里面的cell数，职能的数量
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *functionDetail = _functionArray[section];
    return [functionDetail count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *funtionName = _industryArray[section];
    return funtionName;
}


//自定义cell，显示到二级菜单，所有职能
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"functionCell";
    
    FunctionCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        
        cell = [[FunctionCell alloc] init];
    }
    NSArray *functionDetail = _functionArray[indexPath.section];
    
    cell.functionNameLabel.text = functionDetail[indexPath.row];
//    cell.functionNameLabel.text = _functionArray[indexPath.row];
    return cell;
    
    
}



@end
