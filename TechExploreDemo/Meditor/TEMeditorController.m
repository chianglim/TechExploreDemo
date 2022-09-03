//
//  TEMeditorController.m
//  TechExploreDemo
//
//  Created by xjiang on 2022/3/16.
//

#import "TEMeditorController.h"
#import "TEMediator.h"
#import "AppDelegate.h"

@implementation TEMeditorController

+ (void)load
{
    [TEMediator registerUrl:@"tech://mypage" toHandler:^(NSDictionary * params) {
            NSString *title = [params valueForKey:@"title"];
            TEMeditorController *controller = [[TEMeditorController alloc] initWithTitle:title];
            UINavigationController *nav =  [params valueForKey:@"navController"];
            [nav pushViewController:controller animated:YES];
    }];

}

+ (NSString *)techTitle
{
    return @"组件化通讯方案";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    button.center = self.view.center;
    [button setTitle:@"Test" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(didTestButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didTestButton
{
    
    [TEMediator openUrl:@"tech://mypage" params:@{@"title":@"这是一个测试页面",@"navController": self.navigationController}];
}


@end
