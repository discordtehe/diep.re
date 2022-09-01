// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBOTDETECTIONWHITEOPSHELPERS_H
#define FBBOTDETECTIONWHITEOPSHELPERS_H


#import <Foundation/Foundation.h>


@interface FBBotDetectionWhiteOpsHelpers : NSObject



+(void)sendBotDetectionSignalsForEventId:(id)arg0 sessionID:(id)arg1 productType:(NSUInteger)arg2 eventType:(id)arg3 withSignalsAndErrorsDict:(id)arg4 withLoggerDelegate:(id)arg5 withConfigDelegate:(id)arg6 withDynamicLibraryProviderDelegate:(id)arg7 ;
+(id)dataSession;
+(id)urlRequestWithURL:(id)arg0 eventId:(id)arg1 sessionID:(id)arg2 eventType:(id)arg3 productType:(NSUInteger)arg4 ;
+(id)createQueryStringFromParameters:(id)arg0 ;
+(id)constructNativeSignalsJsonWithSessionId:(id)arg0 withProductType:(NSUInteger)arg1 withEventType:(id)arg2 withEventId:(id)arg3 withNetworkSignalsResponseDict:(id)arg4 withSignalsDict:(id)arg5 andErrorsDict:(id)arg6 ;
+(id)convertKeysToSignalNamesForDict:(id)arg0 ;
+(void)currentUserAgentWithBlock:(id)arg0 ;
+(id)javaScriptSafeCreate:(id)arg0 ;
+(void)logEventWithAppSessionId:(id)arg0 signalType:(id)arg1 eventId:(id)arg2 productType:(NSUInteger)arg3 eventType:(id)arg4 jsonData:(id)arg5 errorDescription:(id)arg6 ;


@end


#endif