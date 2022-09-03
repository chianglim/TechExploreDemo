//
//  TEUrlMeditor.m
//  TechExploreDemo
//
//  Created by xjiang on 2022/3/16.
//

#import "TEMediator.h"

typedef void(^TEMediatorProcessBlock)(NSDictionary *);

@implementation TEMediator

+ (NSMutableDictionary *)mediatorCache
{
    static NSMutableDictionary *cacheSheme;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cacheSheme = [NSMutableDictionary dictionary];
    });
    return cacheSheme;
}

@end


@implementation TEMediator(UrlScheme)

+ (void)registerUrl:(NSString *)url toHandler:(HandlerBlock)handler
{
    if(url.length > 0 && handler) {
        [[self mediatorCache] setValue:handler forKey:url];
    }
}

+ (void)openUrl:(NSString *)url params:(NSDictionary *)params
{
    TEMediatorProcessBlock block = [[self mediatorCache] valueForKey:url];
    !block ?: block(params);
}
 
@end

@implementation TEMediator (ProtocolClass)

+ (void)registerProtocol:(Protocol *)protocol toClass:(Class)cls
{
    if(protocol && cls) {
        [[self mediatorCache] setValue:cls forKey:NSStringFromProtocol(protocol)];
    }
}

+ (Class)classForProtocol:(Protocol *)protocol
{
    return [[self mediatorCache] valueForKey:NSStringFromProtocol(protocol)];
}

@end
