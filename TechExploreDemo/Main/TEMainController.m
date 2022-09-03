//
//  TEMainController.m
//  TechExploreDemo
//
//  Created by xjiang on 2021/2/2.
//

#import "TEMainController.h"
#import "TEObjectionController.h"
#import "TEGestureAndUIEventsController.h"
#import "TEMeditorController.h"
#import "TEMeditorController.h"
#import "TEMediator.h"
#import "TECoreGraphicController.h"
#import "TEChartController.h"
#import "TEAVFondationController.h"

@interface TEMainController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic ,strong) UITableView *tableView;
@property(nonatomic ,strong) UILabel *headerLabel;
@property(nonatomic ,strong) NSMutableArray *dataArray;

@end

@implementation TEMainController

+ (NSString *)techTitle
{
    return @"TechExploreDemo";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"TechExploreDemo";
    [self.view addSubview:self.tableView];
    self.dataArray = [NSMutableArray array];
    
    [self.dataArray addObject:[TEObjectionController buildItem]];
    [self.dataArray addObject:[TEGestureAndUIEventsController buildItem]];
    [self.dataArray addObject: [TEMeditorController buildItem]];
    [self.dataArray addObject:[TECoreGraphicController buildItem]];
    [self.dataArray addObject:[TEChartController buildItem]];
    [self.dataArray addObject:[TEAVFondationController buildItem]];
   
}


- (UITableView *)tableView
{
    if(!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.tableHeaderView = self.headerLabel;
        _tableView.tableFooterView = [UIView new];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (UILabel *)headerLabel
{
    if(!_headerLabel) {
        _headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, winSize.width, 200)];
        _headerLabel.text = @"TechExploreDemo";
        _headerLabel.textAlignment = NSTextAlignmentCenter;
        _headerLabel.backgroundColor = [UIColor lightGrayColor];
        
    }
    return _headerLabel;
}
  
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    TEItemModel *item = self.dataArray[indexPath.row];
    cell.textLabel.text = item.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TEItemModel *item = self.dataArray[indexPath.row];
    UIViewController *targetVC = [[NSClassFromString(item.targeVC) alloc] initWithTitle:item.title];
    [self.navigationController pushViewController:targetVC animated:YES];
}



@end
