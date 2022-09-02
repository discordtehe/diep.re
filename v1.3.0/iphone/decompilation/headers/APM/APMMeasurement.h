// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMMEASUREMENT_H
#define APMMEASUREMENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class APMAlarm;
@class APMAudience;
@class GULNetwork;
@class APMPersistedConfig;
@class APMRemoteConfig;
@class APMSearchAdReporter;
@class APMIdentity;
@class APMScheduler;
@class APMDatabase;
@class APMSessionReporter;
@protocol GULNetworkLoggerDelegate;
@protocol GULNetworkReachabilityDelegate;

@interface APMMeasurement : NSObject <GULNetworkLoggerDelegate, GULNetworkReachabilityDelegate>

 {
    NSString *_databaseName;
    NSInteger _initializeComponentsOnce;
    APMAlarm *_alarm;
    APMAudience *_audience;
    GULNetwork *_network;
    APMPersistedConfig *_persistedConfig;
    APMRemoteConfig *_remoteConfig;
    APMSearchAdReporter *_searchAdReporter;
    NSArray *_uploadingBundleIDs;
    NSString *_previousGMPAppID;
    uint8_t _backgroundUpdateTask;
    CGFloat _initTimestamp;
    CGFloat _suspendedUploadTimestamp;
    BOOL _needFirstOpenAfterReset;
    NSString *_appID;
    NSArray *_safelistedEvents;
}


@property (readonly, nonatomic) BOOL isNetworkRequestPending; // ivar: _isNetworkRequestPending
@property (readonly, nonatomic) BOOL wasEnabledDuringInitialization; // ivar: _wasEnabledDuringInitialization
@property (nonatomic) BOOL isAnalyticsCollectionEnabled; // ivar: _isAnalyticsCollectionEnabled
@property (nonatomic) BOOL isAnalyticsCollectionDeactivated; // ivar: _isAnalyticsCollectionDeactivated
@property (nonatomic, getter=isEnabled) BOOL enabled; // ivar: _enabled
@property (readonly, nonatomic) APMIdentity *identity; // ivar: _identity
@property (readonly, nonatomic) APMScheduler *scheduler; // ivar: _scheduler
@property (readonly, nonatomic) APMDatabase *database; // ivar: _database
@property (readonly, nonatomic) APMSessionReporter *sessionReporter; // ivar: _sessionReporter
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)handleNonFirstOpenEventURL:(id)arg0 eventTimestampInSeconds:(CGFloat)arg1 ;
-(void)handleOpenURL:(id)arg0 clickTimestampInMs:(id)arg1 eventTimestampInSeconds:(CGFloat)arg2 ;
-(void)handleDeepLink:(id)arg0 clickTimestampInMs:(id)arg1 eventTimestampInSeconds:(CGFloat)arg2 ;
-(void)handleOpenURLOnWorkerQueue:(id)arg0 clickTimestampInMs:(id)arg1 eventTimestampInSeconds:(CGFloat)arg2 ;
-(void)handleDebugModeWithURL:(id)arg0 ;
-(BOOL)isValidCampaignURLParamDictionary:(id)arg0 ;
-(id)initWithAppID:(id)arg0 isAnalyticsCollectionEnabled:(BOOL)arg1 isAnalyticsCollectionDeactivated:(BOOL)arg2 safelistedEvents:(id)arg3 ;
-(id)initWithDatabaseName:(id)arg0 persistedConfig:(id)arg1 network:(id)arg2 scheduler:(id)arg3 alarm:(id)arg4 appID:(id)arg5 isAnalyticsCollectionEnabled:(BOOL)arg6 isAnalyticsCollectionDeactivated:(BOOL)arg7 safelistedEvents:(id)arg8 ;
-(BOOL)shouldEnableMeasurement;
-(void)dealloc;
-(BOOL)shouldWipeDataWithAppID:(id)arg0 appIDFromGMP:(id)arg1 appIDFromAdMob:(id)arg2 persistedAppIDFromGMP:(id)arg3 persistedAppIDFromAdMob:(id)arg4 ;
-(BOOL)startMeasurementOnWorkerQueue;
-(void)reachabilityDidChange;
-(void)reportStoredCampaignEventOnWorkerQueue:(id)arg0 ;
-(void)reportSessionStartOnWorkerQueueWithTimestamp:(CGFloat)arg0 ;
-(void)reportFirstOpenOnWorkerQueue;
-(void)reportAppUpdateOnWorkerQueue;
-(void)reportOSUpdateOnWorkerQueue;
-(NSInteger)timestampMillisRoundedUpToNextHour:(NSInteger)arg0 ;
-(id)fileAttributesForPath:(id)arg0 ;
-(BOOL)isAppUpdateWithAnalytics;
-(void)setMinimumSessionInterval:(CGFloat)arg0 ;
-(void)setSessionTimeoutInterval:(CGFloat)arg0 ;
-(void)backfillSessionNumber;
-(void)updateSchedule;
-(CGFloat)nextUploadingTime;
-(void)uploadDataOrRegisterAlarm;
-(void)uploadData;
-(BOOL)isNetworkReadyForRequest;
-(id)filteredBundlesWithCompatibleAppID:(id)arg0 resettableDeviceID:(id)arg1 vendorDeviceID:(id)arg2 bundlesToUpload:(id)arg3 ;
-(void)networkUploadCompletionHandlerWithResponse:(id)arg0 error:(id)arg1 ;
-(void)incrementRetryCounter;
-(void)setUploadInProgressWithBundleIDs:(id)arg0 ;
-(void)logEvent:(id)arg0 ;
-(void)handleEventOnWorkerQueue:(id)arg0 ;
-(void)writeEventOnWorkerQueue:(id)arg0 ;
-(void)maybeAddDebugAndRealtimeParameters:(id)arg0 ;
-(void)removeUserAttribute:(id)arg0 ;
-(void)removeUserAttributeOnWorkerQueue:(id)arg0 ;
-(void)setUserAttribute:(id)arg0 ;
-(void)setUserAttributeOnWorkerQueue:(id)arg0 ;
-(NSInteger)setUserPropertyInDatabaseOnWorkerQueue:(id)arg0 ;
-(void)userAttributeWithName:(id)arg0 callback:(id)arg1 ;
-(void)userPropertiesIncludingInternal:(BOOL)arg0 callback:(id)arg1 ;
-(void)maxUserPropertiesForOrigin:(id)arg0 callback:(id)arg1 ;
-(void)resetAnalyticsData;
-(void)wipeoutAnalyticsDataAndResetComponents;
-(id)createRawEventMetadataWithUserAttributes:(id)arg0 ;
-(BOOL)bundleRawEvents;
-(BOOL)hasDataToUpload;
-(BOOL)removeBundlesFromDatabaseWithIDs:(id)arg0 ;
-(CGFloat)firstOpenTimestamp;
-(void)fetchRemoteConfig;
-(void)networkRemoteConfigFetchCompletionHandler:(id)arg0 data:(id)arg1 error:(id)arg2 ;
-(void)filterPurchaseTransactions:(id)arg0 callback:(id)arg1 ;
-(void)swapBackgroundTaskWithNewTaskID:(NSUInteger)arg0 ;
-(void)handleAppDidBecomeActiveEvent:(id)arg0 ;
-(void)handleAppWillEnterForegroundNotification:(id)arg0 ;
-(void)terminateBackgroundTask;
-(void)handleAppWillResignActiveEvent:(id)arg0 ;
-(void)GULNetwork_logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 ;
-(void)GULNetwork_logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 context:(id)arg3 ;
-(void)GULNetwork_logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 contexts:(id)arg3 ;
-(BOOL)canEventBeSampled:(id)arg0 ;
-(BOOL)isEventBundledAfterRoll:(int)arg0 ;
-(id)sampleEvents:(id)arg0 error:(*id)arg1 ;
+(void)initializeSharedInstanceWithAppID:(id)arg0 isAnalyticsCollectionEnabled:(BOOL)arg1 isAnalyticsCollectionDeactivated:(BOOL)arg2 safelistedEvents:(id)arg3 ;
+(BOOL)hasSharedInstance;
+(id)sharedInstance;
+(id)monitor;
+(id)remoteConfig;
+(void)load;
+(id)deepLinkFromUserActivity:(id)arg0 ;
+(void)handleAppDidFinishLaunching:(id)arg0 ;


@end


#endif