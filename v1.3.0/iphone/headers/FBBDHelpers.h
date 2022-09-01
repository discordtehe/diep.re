// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDHELPERS_H
#define FBBDHELPERS_H


#import <Foundation/Foundation.h>


@interface FBBDHelpers : NSObject



+(void)sendBotDetectionSignalsForEventId:(id)arg0 sessionID:(id)arg1 productType:(NSUInteger)arg2 eventType:(id)arg3 bdSessionIds:(id)arg4 withSignalsAndErrorsDict:(id)arg5 withLoggerDelegate:(id)arg6 withConfigDelegate:(id)arg7 withSignalCollectionUpdateBlock:(id)arg8 ;
+(int)reputationTierFromBDSessionDict:(id)arg0 ;
+(id)bdSessionIdsFromBDSessionDict:(id)arg0 ;
+(void)logEventWithBDSessionId:(id)arg0 withAppSessionId:(id)arg1 productType:(NSUInteger)arg2 jsonData:(id)arg3 withLoggerDelegate:(id)arg4 withConfigDelegate:(id)arg5 ;


@end


#endif