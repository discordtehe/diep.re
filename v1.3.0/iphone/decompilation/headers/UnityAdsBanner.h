// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYADSBANNER_H
#define UNITYADSBANNER_H


#import <Foundation/Foundation.h>


@interface UnityAdsBanner : NSObject



+(void)loadBanner;
+(void)loadBanner:(id)arg0 ;
+(void)setBannerPosition:(NSInteger)arg0 ;
+(void)destroy;
+(id)getDelegate;
+(void)setDelegate:(id)arg0 ;
+(void)handleShowError:(id)arg0 message:(id)arg1 ;


@end


#endif