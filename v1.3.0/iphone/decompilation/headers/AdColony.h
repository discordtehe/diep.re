// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_H
#define ADCOLONY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class AdColonyAppOptions;
@class AdColonyUserMetadata;
@class ADCDynamicControls;
@class ADCAdSessionAPI;
@class ADCWebServicesMPAPI;
@class ADCCustomNotificationAPI;
@class ADCLogManager;

@interface AdColony : NSObject

@property (nonatomic) BOOL blockRequests; // ivar: _blockRequests
@property (retain, nonatomic) NSTimer *moduleUpdateTimer; // ivar: _moduleUpdateTimer
@property (retain) NSThread *worker; // ivar: _worker
@property (retain) NSDictionary *sessionMap; // ivar: _sessionMap
@property (retain) NSObject *sessionMapLock; // ivar: _sessionMapLock
@property (retain) NSDictionary *rewardCallbacks; // ivar: _rewardCallbacks
@property (retain) NSObject *rewardCallbacksLock; // ivar: _rewardCallbacksLock
@property (readonly, nonatomic) BOOL configured; // ivar: _configured
@property (readonly) BOOL active; // ivar: _active
@property (readonly, nonatomic) BOOL reconfigurable; // ivar: _reconfigurable
@property (nonatomic) BOOL useForcedController; // ivar: _useForcedController
@property (nonatomic) BOOL useForcedAdUnit; // ivar: _useForcedAdUnit
@property (nonatomic) BOOL useStagingLaunchServer; // ivar: _useStagingLaunchServer
@property (nonatomic) BOOL dismissAdOnBackground; // ivar: _dismissAdOnBackground
@property (nonatomic) int dismissAdOnBackgroundDelayMs; // ivar: _dismissAdOnBackgroundDelayMs
@property (retain, nonatomic) NSDate *startTimeForConfigure; // ivar: _startTimeForConfigure
@property (retain, nonatomic) AdColonyAppOptions *options; // ivar: _options
@property (readonly) NSThread *workThread;
@property (readonly, nonatomic) NSString *appID; // ivar: _appID
@property (retain, nonatomic) NSString *controllerVersion; // ivar: _controllerVersion
@property (retain, nonatomic) AdColonyUserMetadata *userMetadata; // ivar: _userMetadata
@property (retain, nonatomic) ADCDynamicControls *dynamicControls; // ivar: _dynamicControls
@property (nonatomic) BOOL ringerSwitchDetectionEnabled; // ivar: _ringerSwitchDetectionEnabled
@property (retain, nonatomic) NSArray *zoneIDs; // ivar: _zoneIDs
@property (retain, nonatomic) NSMutableArray *zones; // ivar: _zones
@property (readonly, nonatomic) NSMutableDictionary *zoneFromID; // ivar: _zoneFromID
@property (nonatomic) BOOL showingInterstitial; // ivar: _showingInterstitial
@property (retain, nonatomic) NSString *appSessionID; // ivar: _appSessionID
@property (readonly) NSDictionary *sessionFromID;
@property (readonly, nonatomic) ADCAdSessionAPI *sessionAPI; // ivar: _sessionAPI
@property (readonly, nonatomic) ADCWebServicesMPAPI *webServicesAPI; // ivar: _webServicesAPI
@property (readonly, nonatomic) ADCCustomNotificationAPI *notificationAPI; // ivar: _notificationAPI
@property (copy, nonatomic) id *configCompletion; // ivar: _configCompletion
@property (readonly, nonatomic) ADCLogManager *logManager; // ivar: _logManager
@property (retain, nonatomic) NSString *pieKey; // ivar: _pieKey


-(id)init;
-(void)setupWorkerThread;
-(void)addTimer:(id)arg0 ;
-(void)disableActiveSessions;
-(void)configureWithAppID:(id)arg0 zoneIDs:(id)arg1 options:(id)arg2 forceIt:(BOOL)arg3 completion:(id)arg4 ;
-(void)onInitialConfig:(id)arg0 ;
-(void)onConfigError;
-(void)measureTimeTakenToConfigure;
-(void)checkForFirstInstall;
-(void)addZone:(id)arg0 ;
-(void)onModuleError:(NSUInteger)arg0 ;
-(id)getSession:(id)arg0 ;
-(void)addSession:(id)arg0 ;
-(void)removeSession:(id)arg0 ;
-(void)onSessionError:(id)arg0 ;
// -(void)setRewardCallback:(id)arg0 forZone:(unk)arg1  ;
-(id)rewardCallbackForZone:(SEL)arg0 ;
-(id)containerForAdSessionID:(id)arg0 isFullscreen:(BOOL)arg1 ;
-(id)containerForViewID:(NSUInteger)arg0 adSessionID:(id)arg1 ;
-(void)disableAdColony;
-(id)currentAdSession;
// -(void)performBlockOnWorkerThread:(id)arg0 mode:(unk)arg1  ;
-(void)runBlock:(id)arg0 ;
-(void)applicationDidReceiveMemoryWarning:(id)arg0 ;
+(id)sharedInstance;
+(void)configureWithAppID:(id)arg0 zoneIDs:(id)arg1 options:(id)arg2 completion:(id)arg3 ;
// +(void)requestInterstitialInZone:(id)arg0 options:(id)arg1 success:(id)arg2 failure:(unk)arg3  ;
// +(void)requestNativeAdViewInZone:(id)arg0 size:(struct CGSize )arg1 options:(id)arg2 viewController:(id)arg3 success:(id)arg4 failure:(unk)arg5  ;
+(id)getUserID;
+(id)getAdvertisingID;
+(void)setAppOptions:(id)arg0 ;
+(id)getAppOptions;
+(void)sendCustomMessageOfType:(id)arg0 withContent:(id)arg1 reply:(id)arg2 ;
// +(void)registerHandler:(id)arg0 forCustomMessagesOfType:(unk)arg1  ;
+(void)unregisterHandlerForCustomMessagesOfType:(id)arg0 ;
+(void)iapCompleteWithTransactionID:(id)arg0 productID:(id)arg1 price:(id)arg2 currencyCode:(id)arg3 ;
+(id)getSDKVersion;
+(id)zoneForID:(id)arg0 ;


@end


#endif