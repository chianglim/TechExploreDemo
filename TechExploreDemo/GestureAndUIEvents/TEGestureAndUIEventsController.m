//
//  TEEventResponseChainController.m
//  TechExploreDemo
//
//  Created by xjiang on 2021/12/23.
//

#import "TEGestureAndUIEventsController.h"
#import "TEItemModel.h"
#import "TETouchViewA.h"
#import "TETouchViewB.h"
#import "TETouchViewC.h"

@interface TEGestureAndUIEventsController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) TETouchViewA *touchViewA;
@property (nonatomic, strong) TETouchViewB *touchViewB;
@property (nonatomic, strong) TETouchViewC *touchViewC;

@property (nonatomic, strong) UIButton *touchButton;
 

@end

@implementation TEGestureAndUIEventsController

+ (NSString *)techTitle
{
    return @"手势识别和事件响应链";
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    [self.view addSubview:self.touchViewA];
    [self.touchViewA addSubview:self.touchButton];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithActionBlock:^(id  _Nonnull sender) {
        NSLog(@" %s ", __func__);
    }];
//    tap.cancelsTouchesInView = NO;
    [self.touchViewA addGestureRecognizer:tap];
}


- (UIScrollView *)scrollView
{
    if(!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, kNavHeight, kWinWidth, kWinHeight - kNavHeight)];
        _scrollView.contentSize = CGSizeMake(0,  self.touchViewA.bounds.size.height + 20);
        _scrollView.contentInset = UIEdgeInsetsMake(50, 0, 100, 0);
        _scrollView.delegate = self;
    }
    return _scrollView;
}


- (TETouchViewA *)touchViewA
{
    if(!_touchViewA) {
        _touchViewA = [[TETouchViewA alloc] initWithFrame:CGRectMake(10, 10, 200 , 200)];
        _touchViewA.backgroundColor = kColorHex(#4f8273);
        _touchViewA.layer.cornerRadius = 10;
        _touchViewA.center = self.view.center;
        
    }
    return _touchViewA;
}


- (TETouchViewB *)touchViewB
{
    if(!_touchViewB) {
//        _touchViewB = [[TETouchViewB alloc] initWithFrame:CGRectMake(0, 0, kWinWidth, 200)];
        _touchViewB.backgroundColor = kColorHex(#f0d791);
    }
    return _touchViewB;
}


- (UIButton *)touchButton
{
    if(!_touchButton) {
        _touchButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _touchButton.backgroundColor = UIColor.grayColor;
        _touchButton.center = CGPointMake(100, 100);
        _touchButton.layer.cornerRadius = 10;
        [_touchButton addTarget:self action:@selector(didClickTouchButton) forControlEvents:UIControlEventTouchUpInside];
    }
    return _touchButton;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    NSLog(@"%s",__func__);
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}


 - (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    NSLog(@"%s:%@",__func__,NSStringFromCGPoint(scrollView.contentOffset));
}

- (void)didClickTouchButton
{
    NSLog(@" %s ", __func__);
}
 

@end
