//
//  TEItemModel.h
//  TechExploreDemo
//
//  Created by xjiang on 2021/2/2.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

@interface TEItemModel : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *targeVC;

@end

NS_ASSUME_NONNULL_END
