// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDEBUGLOGGING_H
#define FBADDEBUGLOGGING_H


#import <Foundation/Foundation.h>


@interface FBAdDebugLogging : NSObject



+(void)logDSLErrorForRequestId:(id)arg0 withData:(id)arg1 ;
+(BOOL)shouldLogCacheDebugEventsForCurrentSession;
+(unsigned int)randomPercentage;
+(BOOL)recalculateCacheDebugEventsSamplingRate;
+(id)mutableDictionaryWithAdFormat:(id)arg0 creative:(id)arg1 cacheContext:(id)arg2 requestId:(id)arg3 ;
+(void)logCacheHitForAdFormat:(id)arg0 creative:(id)arg1 cacheContext:(id)arg2 requestId:(id)arg3 ;
+(void)logCacheMissForAdFormat:(id)arg0 creative:(id)arg1 cacheContext:(id)arg2 requestId:(id)arg3 ;
+(void)logCacheWriteToDiskSuccessForAdFormat:(id)arg0 creative:(id)arg1 cacheContext:(id)arg2 requestId:(id)arg3 ;
+(void)logCacheWriteToDiskFailureForAdFormat:(id)arg0 creative:(id)arg1 cacheContext:(id)arg2 requestId:(id)arg3 reason:(id)arg4 ;
+(void)logCacheOnDiskWipeFailure:(NSUInteger)arg0 reason:(id)arg1 ;
+(void)logCacheOnDiskWipeSuccess:(NSUInteger)arg0 ;
+(void)logCacheOnDiskWipeEventWithSize:(NSUInteger)arg0 reason:(id)arg1 success:(BOOL)arg2 ;
+(void)logVideoWrapperCachedWithVideoMissingForAdFormat:(id)arg0 requestId:(id)arg1 ;
+(void)logInMemoryCacheFailedForAdFormat:(id)arg0 creative:(id)arg1 requestId:(id)arg2 ;
+(void)logCreativeDownloadFailure:(id)arg0 creative:(id)arg1 requestId:(id)arg2 ;
+(void)logAdLoadedForAdFormat:(id)arg0 requestId:(id)arg1 ;
+(void)logAdapterFailedForAdFormat:(id)arg0 requestId:(id)arg1 reason:(id)arg2 ;
+(void)initialize;
+(void)logDebugEventWithType:(id)arg0 code:(NSUInteger)arg1 description:(id)arg2 ;
+(void)logDebugEventWithType:(id)arg0 code:(NSUInteger)arg1 exception:(id)arg2 ;
+(void)logDebugEventWithType:(id)arg0 code:(NSUInteger)arg1 info:(id)arg2 ;


@end


#endif