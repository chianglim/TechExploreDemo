//
//  TEBaseController.h
//  TechExploreDemo
//
//  Created by xjiang on 2021/2/2.
//

#import <UIKit/UIKit.h>
#import "TEItemModel.h"
 

#define winSize [UIScreen mainScreen].bounds.size
#define ccp(x,y) CGPointMake(x,y)
 
NS_ASSUME_NONNULL_BEGIN

@interface TEBaseController : UIViewController

- initWithTitle:(NSString *)title;

+ (TEItemModel *)buildItem;

+ (NSString *)techTitle;

@end

NS_ASSUME_NONNULL_END
