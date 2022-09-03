//
//  AppDelegate.m
//  TechExploreDemo
//
//  Created by xjiang on 2021/2/2.
//

#import "AppDelegate.h"
#import "TEMainController.h"
#if DEBUG
#import <DoraemonKit/DoraemonManager.h>
#endif
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
#if DEBUG
    [[DoraemonManager shareInstance] installWithPid:@"productId"];//productId为在“平台端操作指南”中申请的产品id
#endif
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.rootController = [[UINavigationController alloc] initWithRootViewController:[TEMainController new]];
    
    self.window.rootViewController = self.rootController;
    [self.window makeKeyAndVisible];
    return YES;
}
 
@end
