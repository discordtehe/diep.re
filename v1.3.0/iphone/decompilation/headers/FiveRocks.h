// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIVEROCKS_H
#define FIVEROCKS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FRPlacementContent;

@interface FiveRocks : NSObject

@property (retain) NSString *_analyticsApiKey; // ivar: __analyticsApiKey
@property (retain) NSString *_sdkApiKey; // ivar: __sdkApiKey
@property (retain) NSString *_appId; // ivar: __appId
@property (retain) NSString *_appKey; // ivar: __appKey
@property (retain) FRPlacementContent *currentPlacementContent; // ivar: _currentPlacementContent
@property BOOL bSessionStarted; // ivar: _bSessionStarted
@property BOOL bDebugLogEnabled; // ivar: _bDebugLogEnabled
@property BOOL bSecureTransportEnabled; // ivar: _bSecureTransportEnabled
@property CGFloat timeout; // ivar: _timeout
@property (retain) NSString *purchaseCurrency; // ivar: _purchaseCurrency
@property NSUInteger purchaseTotalCount; // ivar: _purchaseTotalCount
@property CGFloat purchaseTotalPrice; // ivar: _purchaseTotalPrice
@property CGFloat purchaseLastPrice; // ivar: _purchaseLastPrice
@property (retain) NSDate *purchaseLastAt; // ivar: _purchaseLastAt
@property NSUInteger sessionTotalCount; // ivar: _sessionTotalCount
@property CGFloat sessionTotalLength; // ivar: _sessionTotalLength
@property CGFloat sessionLastLength; // ivar: _sessionLastLength
@property (retain) NSDate *sessionLastAt; // ivar: _sessionLastAt
@property (retain) NSMutableDictionary *pushIds; // ivar: _pushIds
@property (retain) NSMutableDictionary *actionIds; // ivar: _actionIds
@property NSUInteger eventSeqNo; // ivar: _eventSeqNo
@property (retain) NSMutableDictionary *prevEvent; // ivar: _prevEvent
@property (retain) NSArray *FREnabledPlacements; // ivar: _FREnabledPlacements
@property (retain) NSMutableDictionary *FRPlacementContentCalls; // ivar: _FRPlacementContentCalls
@property (retain) NSMutableDictionary *FRUserProperties; // ivar: _FRUserProperties
@property (retain) NSMutableDictionary *FRUserPropertiesPurchase; // ivar: _FRUserPropertiesPurchase
@property (retain) NSMutableDictionary *FRUserPropertiesSession; // ivar: _FRUserPropertiesSession
@property (retain) NSArray *FRUserTags; // ivar: _FRUserTags
@property (retain) NSMutableDictionary *FRCampaignTracking; // ivar: _FRCampaignTracking
@property (retain) NSMutableDictionary *FRPurchaseTracking; // ivar: _FRPurchaseTracking
@property (retain) NSMutableDictionary *FRAppProperties; // ivar: _FRAppProperties
@property (retain) NSMutableDictionary *FRTimedEvents; // ivar: _FRTimedEvents
@property (retain) NSMutableArray *FRQueuedAppEvents; // ivar: _FRQueuedAppEvents
@property (retain) NSMutableArray *FRQueuedCampaignEvents; // ivar: _FRQueuedCampaignEvents
@property (retain) NSMutableArray *FRQueuedCustomEvents; // ivar: _FRQueuedCustomEvents
@property (retain) NSMutableArray *FRQueuedUsagesEvents; // ivar: _FRQueuedUsagesEvents
@property (retain) NSMutableArray *FRSendingAppEvents; // ivar: _FRSendingAppEvents
@property (retain) NSMutableArray *FRSendingCampaignEvents; // ivar: _FRSendingCampaignEvents
@property (retain) NSMutableArray *FRSendingCustomEvents; // ivar: _FRSendingCustomEvents
@property (retain) NSMutableArray *FRSendingUsagesEvents; // ivar: _FRSendingUsagesEvents
@property BOOL bShouldSendMore; // ivar: _bShouldSendMore
@property (retain) NSTimer *FRQueuedEventsSender; // ivar: _FRQueuedEventsSender
@property (retain) NSDictionary *FRInfoDictionary; // ivar: _FRInfoDictionary
@property (retain) NSDate *FQLastUpdateDate; // ivar: _FQLastUpdateDate
@property NSUInteger FQ7; // ivar: _FQ7
@property NSUInteger FQ30; // ivar: _FQ30


-(void)trackEventInfo:(id)arg0 withError:(*id)arg1 ;
-(void)refreshIDFA;
-(id)init;
-(void)startSession:(id)arg0 withAppKey:(id)arg1 withSdkApiKey:(id)arg2 ;
-(void)endSession;
-(void)applicationDidRegisterForRemoteNotificationsWithDeviceToken:(id)arg0 ;
-(void)updateDeviceTokenAndUserInfo;
-(void)saveRemoteNotificationsDeviceToken:(id)arg0 ;
-(BOOL)updateFQ;
-(void)updatePushIds:(BOOL)arg0 ;
-(void)updateActionIds;
-(void)addNoMoreTodayPlacementContent:(id)arg0 ;
-(void)showPlacementContent:(id)arg0 ;
-(void)closePlacementContent;
-(void)dismissPlacementContent:(id)arg0 ;
-(void)handleClick:(id)arg0 placementContent:(id)arg1 ;
-(void)sendShowEvent:(id)arg0 ;
-(void)sendAllQueuedEvents;
-(void)sendQueuedEvents:(id)arg0 queuedEvents:(id)arg1 sendingEvents:(id)arg2 ;
-(void)unitTest_clearAllProperties;
-(void)unitTest_clearAllEvents;
+(void)setAnalyticsApiKey:(id)arg0 ;
+(void)startSession:(id)arg0 withAppKey:(id)arg1 withSdkApiKey:(id)arg2 ;
+(void)endSession;
+(void)applicationDidRegisterForRemoteNotificationsWithDeviceToken:(id)arg0 ;
+(void)applicationDidFinishLaunchingWithOptions:(id)arg0 ;
+(void)applicationDidReceiveRemoteNotification:(id)arg0 ;
+(void)applicationDidReceiveRemoteNotification:(id)arg0 pushClicked:(BOOL)arg1 ;
+(id)getFiveRocksSDKVersion;
+(void)setDebugEnabled:(BOOL)arg0 ;
+(void)setSecureTransportEnabled:(BOOL)arg0 ;
+(void)setFiveRocksNetworkTimeout:(CGFloat)arg0 ;
+(void)setAppDataVersion:(id)arg0 ;
+(void)setUserId:(id)arg0 ;
+(void)setUserLevel:(int)arg0 ;
+(void)setUserFriendCount:(int)arg0 ;
+(void)setUserCohortVariable:(int)arg0 value:(id)arg1 ;
+(id)getUserTags;
+(id)getInternalUserTagList;
+(void)setUserTags:(id)arg0 ;
+(void)showFRPlacementContent:(id)arg0 ;
+(void)closeFRPlacementContent;
+(void)dismissPlacementContent:(id)arg0 ;
+(BOOL)hasCurrentPlacementContent;
+(BOOL)isCurrentPlacementContentInterstitial;
+(BOOL)isCurrentPlacementContentContextual;
+(id)getActionIds;
+(void)trackPurchase:(id)arg0 currencyCode:(id)arg1 price:(CGFloat)arg2 campaignId:(id)arg3 transactionId:(id)arg4 withError:(*id)arg5 ;
+(void)trackException:(id)arg0 withError:(*id)arg1 ;
+(void)trackExceptionWithDescription:(id)arg0 withError:(*id)arg1 ;
+(void)trackUsageStat:(id)arg0 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 withError:(*id)arg4 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value:(NSInteger)arg4 withError:(*id)arg5 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value1name:(id)arg4 value1:(NSInteger)arg5 withError:(*id)arg6 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value1name:(id)arg4 value1:(NSInteger)arg5 value2name:(id)arg6 value2:(NSInteger)arg7 withError:(*id)arg8 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value1name:(id)arg4 value1:(NSInteger)arg5 value2name:(id)arg6 value2:(NSInteger)arg7 value3name:(id)arg8 value3:(NSInteger)arg9 withError:(*id)arg10 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 values:(id)arg4 withError:(*id)arg5 ;
+(BOOL)isFirstRun;
+(id)sharedInstance;
+(id)buildFiveRocksPostData:(id)arg0 ;
+(id)buildFRURLRequest:(id)arg0 path:(id)arg1 parameters:(id)arg2 ;
+(id)buildFRQueuedEventsURLRequest:(id)arg0 queuedEvents:(id)arg1 ;
+(id)getPendingEvents:(id)arg0 ;
+(void)savePendingEvents:(id)arg0 events:(id)arg1 ;
+(void)deletePendingEvents:(id)arg0 ;
+(void)increasePurchaseCount:(id)arg0 currency:(id)arg1 price:(CGFloat)arg2 ;
+(void)setUnityVersion:(id)arg0 ;
+(void)handleClick:(id)arg0 placementContent:(id)arg1 ;
+(void)addNoMoreTodayPlacementContent:(id)arg0 ;
+(void)unitTest_invalidateEventsSender;
+(BOOL)unitTest_checkSessionStart;
+(BOOL)unitTest_checkDebugEnable;
+(BOOL)unitTest_checkSecureTransport;
+(void)unitTest_clearAllProperties;
+(id)unitTest_getUserProperties;
+(id)unitTest_getUserSessionProperties;
+(id)unitTest_getUserPurchaseProperties;
+(id)unitTest_getAppProperties;
+(id)unitTest_getInfoProperties;
+(void)unitTest_clearAllEvents;
+(id)unitTest_getAppEvents;
+(id)unitTest_getCampaignEvents;
+(id)unitTest_getCustomEvents;
+(id)unitTest_getUsagesEvents;
+(id)unitTest_buildFRURLRequest:(id)arg0 parameters:(id)arg1 ;
+(id)unitTest_buildFRQueuedEventsURLRequest:(id)arg0 queuedEvents:(id)arg1 ;


@end


#endif