// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPJOY_H
#define TAPJOY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class TJCCurrencyManager;
@class TJCVideoManager;
@class TJCViewHandler;
@class TJCUtil;
@class TJCLog;

@interface Tapjoy : NSObject

@property (retain, nonatomic) NSMutableData *data; // ivar: _data
@property (nonatomic) int connectAttempts; // ivar: _connectAttempts
@property (nonatomic) BOOL isInitialConnect; // ivar: _isInitialConnect
@property (nonatomic) BOOL isInitialLimitedConnect; // ivar: _isInitialLimitedConnect
@property (retain, nonatomic) NSArray *URLArray; // ivar: _URLArray
@property (nonatomic) BOOL bManualSessionTracking; // ivar: _bManualSessionTracking
@property (nonatomic) BOOL bRetryConnectQueued; // ivar: _bRetryConnectQueued
@property (nonatomic) CGFloat nextBackoff; // ivar: _nextBackoff
@property (nonatomic) BOOL connectSuccessWithStoredResult; // ivar: _connectSuccessWithStoredResult
@property (weak) UIViewController *defaultViewController; // ivar: _defaultViewController
@property (copy, nonatomic) NSString *sdkKey; // ivar: _sdkKey
@property (copy, nonatomic) NSString *appID; // ivar: _appID
@property (copy, nonatomic) NSString *secretKey; // ivar: _secretKey
@property (copy, nonatomic) NSString *userID; // ivar: _userID
@property (copy, nonatomic) NSString *plugin; // ivar: _plugin
@property (nonatomic) float currencyMultiplier; // ivar: _currencyMultiplier
@property (copy, nonatomic) NSString *appGroupID; // ivar: _appGroupID
@property (copy, nonatomic) NSString *store; // ivar: _store
@property (copy, nonatomic) NSString *analyticsApiKey; // ivar: _analyticsApiKey
@property (copy, nonatomic) NSString *managedDeviceID; // ivar: _managedDeviceID
@property (retain, nonatomic) TJCCurrencyManager *currencyManager; // ivar: _currencyManager
@property (retain, nonatomic) TJCVideoManager *videoManager; // ivar: _videoManager
@property (retain, nonatomic) TJCViewHandler *viewHandler; // ivar: _viewHandler
@property (retain, nonatomic) TJCUtil *util; // ivar: _util
@property (retain, nonatomic) TJCLog *log; // ivar: _log
@property (copy, nonatomic) NSString *limitedSdkKey; // ivar: _limitedSdkKey
@property (copy, nonatomic) NSString *limitedAppID; // ivar: _limitedAppID
@property (copy, nonatomic) NSString *limitedSecretKey; // ivar: _limitedSecretKey
@property (copy, nonatomic) NSString *limitedAppGroupID; // ivar: _limitedAppGroupID


-(void)loadObjects;
-(BOOL)checkSupportedSystemVersion;
-(void)retryConnectTypeConnect:(id)arg0 ;
-(void)connectWithType:(int)arg0 withParams:(id)arg1 completion:(id)arg2 ;
-(void)limitedConnectWithType:(int)arg0 withParams:(id)arg1 completion:(id)arg2 ;
-(void)processConnectResult:(id)arg0 withParams:(id)arg1 isStoredResult:(BOOL)arg2 ;
-(void)processLimitedConnectResult:(id)arg0 withParams:(id)arg1 ;
-(id)connectParamsHash:(id)arg0 ;
-(id)loadConnectResultWithParams:(id)arg0 ;
-(void)storeConnectResult:(id)arg0 withParams:(id)arg1 cacheMaxAge:(id)arg2 ;
-(void)initConnectWithSdkKey:(id)arg0 withAppID:(id)arg1 withSecretKey:(id)arg2 ;
-(void)initLimitedConnectWithSdkKey:(id)arg0 withAppID:(id)arg1 withSecretKey:(id)arg2 ;
-(void)initEventOptimizer;
-(float)getCurrencyMultiplier;
-(void)dealloc;
+(void)setVideoAdDelegate:(id)arg0 ;
+(void)getCurrencyBalance;
+(void)getCurrencyBalanceWithCompletion:(id)arg0 ;
+(void)spendCurrency:(int)arg0 ;
+(void)spendCurrency:(int)arg0 completion:(id)arg1 ;
+(void)awardCurrency:(int)arg0 ;
+(void)awardCurrency:(int)arg0 completion:(id)arg1 ;
+(void)showDefaultEarnedCurrencyAlert;
+(void)updateViewsWithOrientation:(NSInteger)arg0 ;
+(BOOL)isRetina;
+(void)setDebugEnabled:(BOOL)arg0 ;
+(void)connect:(id)arg0 ;
+(void)connect:(id)arg0 options:(id)arg1 ;
+(void)limitedConnect:(id)arg0 ;
+(void)startSession;
+(void)endSession;
+(void)setAppDataVersion:(id)arg0 ;
+(void)setApplicationLaunchingOptions:(id)arg0 ;
+(void)setReceiveRemoteNotification:(id)arg0 ;
+(void)setDeviceToken:(id)arg0 ;
+(void)setUserLevel:(int)arg0 ;
+(void)setUserFriendCount:(int)arg0 ;
+(void)setUserCohortVariable:(int)arg0 value:(id)arg1 ;
+(id)getUserTags;
+(void)setUserTags:(id)arg0 ;
+(void)clearUserTags;
+(void)addUserTag:(id)arg0 ;
+(void)removeUserTag:(id)arg0 ;
+(void)trackPurchase:(id)arg0 currencyCode:(id)arg1 price:(CGFloat)arg2 campaignId:(id)arg3 transactionId:(id)arg4 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value:(NSInteger)arg4 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value1name:(id)arg4 value1:(NSInteger)arg5 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value1name:(id)arg4 value1:(NSInteger)arg5 value2name:(id)arg6 value2:(NSInteger)arg7 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 value1name:(id)arg4 value1:(NSInteger)arg5 value2name:(id)arg6 value2:(NSInteger)arg7 value3name:(id)arg8 value3:(NSInteger)arg9 ;
+(void)trackEvent:(id)arg0 category:(id)arg1 parameter1:(id)arg2 parameter2:(id)arg3 values:(id)arg4 ;
+(id)sharedTapjoyConnect;
+(void)deviceNotificationReceived;
+(void)exitNotificationReceived;
+(void)requestTapjoyConnect:(id)arg0 options:(id)arg1 ;
+(void)requestTapjoyConnect:(id)arg0 ;
+(void)requestLimitedTapjoyConnect:(id)arg0 ;
+(void)setNotificationObservers;
+(void)reachabilityChanged:(id)arg0 ;
+(void)orientationChanged:(id)arg0 ;
+(void)orientationChangedDelay;
+(void)actionComplete:(id)arg0 ;
+(id)getAppID;
+(id)getUserID;
+(id)getSecretKey;
+(float)getCurrencyMultiplier;
+(void)enableLogging:(BOOL)arg0 ;
+(void)enableLoggingInternal:(BOOL)arg0 ;
+(id)getVersion;
+(void)dismissContent;
+(void)load;
+(void)applicationDidFinishLaunching:(id)arg0 ;
+(BOOL)isConnected;
+(BOOL)isLimitedConnected;
+(id)getSupportURL;
+(id)getSupportURL:(id)arg0 ;
+(void)getOfferwallURL:(id)arg0 completion:(id)arg1 ;
+(void)subjectToGDPR:(BOOL)arg0 ;
+(void)setUserConsent:(id)arg0 ;
+(void)belowConsentAge:(BOOL)arg0 ;
+(id)getUserToken;


@end


#endif