// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYADS_H
#define UNITYADS_H


#import <Foundation/Foundation.h>


@interface UnityAds : NSObject



+(void)initialize:(id)arg0 delegate:(id)arg1 ;
+(void)initialize:(id)arg0 delegate:(id)arg1 testMode:(BOOL)arg2 ;
+(void)show:(id)arg0 ;
+(void)show:(id)arg0 placementId:(id)arg1 ;
+(id)getDelegate;
+(void)setDelegate:(id)arg0 ;
+(BOOL)getDebugMode;
+(void)setDebugMode:(BOOL)arg0 ;
+(BOOL)isSupported;
+(BOOL)isReady;
+(BOOL)isReady:(id)arg0 ;
+(NSInteger)getPlacementState;
+(NSInteger)getPlacementState:(id)arg0 ;
+(id)getVersion;
+(BOOL)isInitialized;
+(void)handleShowError:(id)arg0 unityAdsError:(NSInteger)arg1 message:(id)arg2 ;


@end


#endif