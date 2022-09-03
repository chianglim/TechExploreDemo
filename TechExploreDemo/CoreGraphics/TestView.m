//
//  TestView.m
//  TechExploreDemo
//
//  Created by xjiang on 2022/3/20.
//

#import "TestView.h"

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]) {
        self.backgroundColor = UIColor.whiteColor;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [[UIColor redColor] set];
    
    // 右边第一个图
    UIBezierPath* maskPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 150, 100, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(30, 30)];
    maskPath.lineWidth     = 20.f;
    maskPath.lineJoinStyle = kCGLineJoinBevel;
    [maskPath stroke];
    // 中间第二个图
    UIBezierPath* maskFillPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(200, 150, 100, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(30, 30)];
    maskFillPath.lineWidth     = 20.f;
    maskFillPath.lineJoinStyle = kCGLineJoinBevel;
    [maskFillPath fill];
    [maskFillPath stroke];
    // 右边第三个图
    UIBezierPath *maskLinePath = [UIBezierPath bezierPath];
    maskLinePath.lineWidth     = 10.f;
    maskLinePath.lineCapStyle  = kCGLineCapRound;
    [maskLinePath moveToPoint:CGPointMake(250.0, 350)];
    [maskLinePath addLineToPoint:CGPointMake(300.0, 400.0)];
    [maskLinePath stroke];
    
}

@end
