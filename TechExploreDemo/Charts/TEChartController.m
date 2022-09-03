//
//  TEChartController.m
//  TechExploreDemo
//
//  Created by xjiang on 2022/3/22.
//

#import "TEChartController.h"
#import "AAGlobalMacro.h"
#import "AAChartView.h"

@implementation TEChartController

+ (NSString *)techTitle
{
    return @"图表绘制";
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    AAChartView *chartView = [[AAChartView alloc] initWithFrame:self.view.bounds];
    chartView.top = kNavHeight + 60;
    chartView.height = kWinHeight - 220;
    [self.view addSubview:chartView];
    
    AAChartModel *chartModel= AAObject(AAChartModel)
    .chartTypeSet(AAChartTypeColumn)//设置图表的类型(这里以设置的为柱状图为例)
    .titleSet(@"编程语言热度")//设置图表标题
    .subtitleSet(@"虚拟数据")//设置图表副标题
    .categoriesSet(@[@"Java",@"Swift",@"Python",@"Ruby", @"PHP",@"Go",@"C",@"C#",@"C++"])//设置图表横轴的内容
    .yAxisTitleSet(@"摄氏度")//设置图表 y 轴的单位
    .seriesSet(@[
    AAObject(AASeriesElement)
    .nameSet(@"2017")
    .dataSet(@[@45,@56,@34,@43,@65,@56,@47,@28,@49]),

    AAObject(AASeriesElement)
    .nameSet(@"2018")
    .dataSet(@[@11,@12,@13,@14,@15,@16,@17,@18,@19]),

    AAObject(AASeriesElement)
    .nameSet(@"2019")
    .dataSet(@[@31,@22,@33,@54,@35,@36,@27,@38,@39]),

    AAObject(AASeriesElement)
    .nameSet(@"2020")
    .dataSet(@[@21,@22,@53,@24,@65,@26,@37,@28,@49]),
    ]);
    
//    [chartView aa_drawChartWithChartModel:chartModel];//图表视图对象调用图表模型对象,绘制最终图形

    [chartView aa_drawChartWithChartModel:chartModel];

}

@end
