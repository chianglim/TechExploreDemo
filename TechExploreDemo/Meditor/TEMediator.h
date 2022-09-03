//
//  TEMeditor.h
//  TechExploreDemo
//
//  Created by xjiang on 2022/3/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^HandlerBlock)(NSDictionary *);

@interface TEMediator : NSObject
 
@end


@interface TEMediator(UrlScheme)

+ (void)registerUrl:(NSString *)url toHandler:(HandlerBlock)handler;

+ (void)openUrl:(NSString *)url params:(NSDictionary *)params;

@end


@interface TEMediator(ProtocolClass)

+ (void)registerProtocol:(Protocol *)protocol toClass:(Class)cls;

+ (Class)classForProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
