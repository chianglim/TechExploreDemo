//
//  TEAVCaptureSession.m
//  TechExploreDemo
//
//  Created by xjiang on 2022/5/3.
//

#import "TEAVFondationController.h"
 
@import AVFoundation;

@interface TEAVFondationController ()
 
/**
 <#Description#>
 */
@property (strong, nonatomic) AVCaptureSession *captureSession;

@end

@implementation TEAVFondationController
+ (NSString *)techTitle
{
    return @"音视频";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initData];
    [self initView];
  
}

- (void)initData {
    self.captureSession = [[AVCaptureSession alloc] init];
}

- (void)initView {
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    button.center = self.view.center;
    [button setTitle:@"开始采集" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(didClickStart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

- (void)didClickStart {
     
    [self.captureSession startRunning];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
