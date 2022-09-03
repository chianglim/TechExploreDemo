//
//  TEFileUtil.m
//  TechExploreDemo
//
//  Created by xjiang on 2021/2/2.
//

#import "TEFileUtil.h"

static NSString* g_aliyunCacheRootPath = nil;

@implementation TEFileUtil

+ (NSString *)aliYunCacheRootPath
{
    if (g_aliyunCacheRootPath.length > 0) {
        return g_aliyunCacheRootPath;
    }
    static NSString *s_rootPath;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        s_rootPath = [paths[0] stringByAppendingString:@"/Aliyun"];
        if ([[NSFileManager defaultManager] fileExistsAtPath:s_rootPath] == NO) {
            [[NSFileManager defaultManager] createDirectoryAtPath:s_rootPath withIntermediateDirectories:YES attributes:nil error:nil];
        }
    });
    return s_rootPath;
}

@end
