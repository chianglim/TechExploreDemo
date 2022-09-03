//
//  CoreGraphicController.m
//  TechExploreDemo
//
//  Created by xjiang on 2022/3/20.
//

#import "TECoreGraphicController.h"
#import "TestView.h"

@interface TECoreGraphicController ()

@property(nonatomic, strong) TestView *testView;

@end

@implementation TECoreGraphicController

+ (NSString *)techTitle
{
    return @"图形绘制";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.testView = [[TestView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.testView];
}

@end
