// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCONNECTIONUTILITY_H
#define FBADCONNECTIONUTILITY_H


#import <Foundation/Foundation.h>


@interface FBAdConnectionUtility : NSObject



+(id)sharedLock;
+(id)forceThrottle;
+(void)setForceThrottle:(id)arg0 ;
+(BOOL)shouldThrottleFrequentLoadForEnvironmentData:(id)arg0 ;
+(id)sharedLastLoadTimeMap;
+(void)setLastLoadTime:(id)arg0 forEnvironmentData:(id)arg1 ;
+(id)getLastLoadTimeForEnvironmentData:(id)arg0 ;
+(id)sharedLastRefreshThresholdMap;
+(void)setLastRefreshThreshold:(NSInteger)arg0 forEnvironmentData:(id)arg1 ;
+(NSInteger)getLastRefreshThresholdForEnvironmentData:(id)arg0 ;
+(id)cachedResponseForEnvironmentData:(id)arg0 ;
+(void)setCachedResponse:(id)arg0 forEnvironmentData:(id)arg1 ;


@end


#endif