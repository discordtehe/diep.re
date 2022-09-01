// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADEVENTMANAGER_H
#define FBADEVENTMANAGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdDatabaseManager;
@class FBAdTimer;
@class FBAdConcurrentArray;

@interface FBAdEventManager : NSObject

@property (retain, nonatomic) NSUUID *sessionId; // ivar: _sessionId
@property (retain, nonatomic) NSDate *sessionStartTime; // ivar: _sessionStartTime
@property (retain, nonatomic) FBAdDatabaseManager *databaseManager; // ivar: _databaseManager
@property (retain, nonatomic) FBAdTimer *dispatchTimer; // ivar: _dispatchTimer
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *dispatchTimerQueue; // ivar: _dispatchTimerQueue
@property (retain, nonatomic) FBAdConcurrentArray *eventsInTransit; // ivar: _eventsInTransit
@property (nonatomic) NSUInteger sendAttempts; // ivar: _sendAttempts
@property (readonly, nonatomic) CGFloat sessionTime;


-(id)init;
-(id)initWithDatabaseManager:(id)arg0 ;
-(id)urlSession;
-(void)dealloc;
-(void)migrateDatabaseV1ToV2:(struct sqlite3 *)arg0 ;
-(void)setupDatabaseWithCallback:(id)arg0 ;
-(void)tokenIdForToken:(id)arg0 withCallback:(id)arg1 ;
-(void)logEvent:(id)arg0 withCallback:(id)arg1 ;
-(void)logEventOfType:(id)arg0 withPriority:(NSUInteger)arg1 withToken:(id)arg2 withExtraData:(id)arg3 ;
-(void)logEventOfType:(id)arg0 withPriority:(NSUInteger)arg1 withToken:(id)arg2 withExtraData:(id)arg3 withCallback:(id)arg4 ;
-(void)logEventForWO:(id)arg0 ;
-(void)logAdSelectionForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logImpressionForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logImpressionMissForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logPreviewImpressionForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logStoreClickForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logLinkClickForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logSnapshotForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logVideoEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logCloseEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logBrowserSessionEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logAdCompleteEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logDeviceRotateEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logOffTargetClickEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logUserReturnEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logDebugEventWithSubtype:(id)arg0 code:(NSInteger)arg1 extraData:(id)arg2 ;
-(void)logUXFunnelEventForToken:(id)arg0 extraData:(id)arg1 ;
-(void)logDSLEventForToken:(id)arg0 extraData:(id)arg1 ;
-(void)logAdReportingEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logShowAdCalledEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logClickGuardEventForToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logTwoStepDialogWithToken:(id)arg0 withExtraData:(id)arg1 ;
-(void)logTwoStepCancelWithToken:(id)arg0 withExtraData:(id)arg1 ;
-(id)funnelLoggingDataForAdEvent:(id)arg0 withToken:(id)arg1 withExtraData:(id)arg2 ;
-(id)funnelLoggingDataForEvent:(id)arg0 withToken:(id)arg1 withExtraData:(id)arg2 ;
-(BOOL)shouldLogDebugEventWithSubtype:(id)arg0 code:(NSInteger)arg1 ;
-(BOOL)shouldDispatchNow:(id)arg0 ;
-(void)retryDispatch;
-(void)dispatchEvents;
-(void)dispatchEventsImmediately;
-(BOOL)shouldPurgeOn413Response;
-(void)sendRequestInternal:(id)arg0 withExtraData:(id)arg1 onRetry:(id)arg2 ;
-(BOOL)isEventSuccessful:(id)arg0 ;
-(BOOL)isEventRetriable:(id)arg0 ;
-(void)cleanupEventsSync:(id)arg0 withDatabase:(struct sqlite3 *)arg1 ;
-(void)insertEvent:(id)arg0 withDatabase:(struct sqlite3 *)arg1 withCallback:(id)arg2 ;
-(void)updateAttemptCountForEvent:(id)arg0 withDatabase:(struct sqlite3 *)arg1 withCallback:(id)arg2 ;
-(void)removeAllOrphanedTokensWithDatabase:(struct sqlite3 *)arg0 withCallback:(id)arg1 ;
-(void)removeAllOrphanedEventsWithDatabase:(struct sqlite3 *)arg0 withCallback:(id)arg1 ;
-(void)removeAllOrphanedTokensSyncWithDatabase:(struct sqlite3 *)arg0 withCallback:(id)arg1 ;
-(void)removeAllOrphanedEventsSyncWithDatabase:(struct sqlite3 *)arg0 withCallback:(id)arg1 ;
-(void)queryEventsSyncWithStatement:(char *)arg0 withDatabase:(struct sqlite3 *)arg1 withCallback:(id)arg2 ;
-(void)queryTokensSyncWithStatement:(char *)arg0 withDatabase:(struct sqlite3 *)arg1 withCallback:(id)arg2 ;
+(id)sharedManager;
+(char *)tokenTableString;
+(char *)eventTableString;


@end


#endif