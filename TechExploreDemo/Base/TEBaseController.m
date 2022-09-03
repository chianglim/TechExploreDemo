//
//  TEBaseController.m
//  TechExploreDemo
//
//  Created by xjiang on 2021/2/2.
//

#import "TEBaseController.h"

@interface TEBaseController ()

@end

@implementation TEBaseController
 
+ (TEItemModel *)buildItem
{
    TEItemModel *item = [TEItemModel new];
    item.title = [self techTitle];
    item.targeVC = NSStringFromClass(self);
    return item;
}

+ (NSString *)techTitle
{
    return @"";
}

- initWithTitle:(NSString *)title
{
    if(self = [super init]) {
        self.navigationItem.title = title;
         
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}



 

@end
