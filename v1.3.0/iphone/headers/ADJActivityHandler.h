// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJACTIVITYHANDLER_H
#define ADJACTIVITYHANDLER_H

@protocol OS_dispatch_queue, AdjustDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADJActivityState;
@class ADJTimerCycle;
@class ADJTimerOnce;
@class ADJInternalState;
@class ADJDeviceInfo;
@class ADJSessionParameters;
@class ADJConfig;
@class ADJAttribution;
@protocol ADJActivityHandler;
@protocol ADJPackageHandler;
@protocol ADJAttributionHandler;
@protocol ADJSdkClickHandler;
@protocol ADJLogger;

@interface ADJActivityHandler : NSObject <ADJActivityHandler>



@property (retain, nonatomic) NSObject<OS_dispatch_queue> *internalQueue; // ivar: _internalQueue
@property (retain, nonatomic) NSObject<ADJPackageHandler> *packageHandler; // ivar: _packageHandler
@property (retain, nonatomic) NSObject<ADJAttributionHandler> *attributionHandler; // ivar: _attributionHandler
@property (retain, nonatomic) NSObject<ADJSdkClickHandler> *sdkClickHandler; // ivar: _sdkClickHandler
@property (retain, nonatomic) ADJActivityState *activityState; // ivar: _activityState
@property (retain, nonatomic) ADJTimerCycle *foregroundTimer; // ivar: _foregroundTimer
@property (retain, nonatomic) ADJTimerOnce *backgroundTimer; // ivar: _backgroundTimer
@property (retain, nonatomic) ADJInternalState *internalState; // ivar: _internalState
@property (retain, nonatomic) ADJDeviceInfo *deviceInfo; // ivar: _deviceInfo
@property (retain, nonatomic) ADJTimerOnce *delayStartTimer; // ivar: _delayStartTimer
@property (retain, nonatomic) ADJSessionParameters *sessionParameters; // ivar: _sessionParameters
@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (weak, nonatomic) NSObject<AdjustDelegate> *adjustDelegate; // ivar: _adjustDelegate
@property (copy, nonatomic) ADJConfig *adjustConfig; // ivar: _adjustConfig
@property (copy, nonatomic) NSData *deviceTokenData; // ivar: _deviceTokenData
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (copy, nonatomic) ADJAttribution *attribution; // ivar: _attribution


-(id)initWithConfig:(id)arg0 sessionParametersActionsArray:(id)arg1 deviceToken:(id)arg2 ;
-(void)applicationDidBecomeActive;
-(void)applicationWillResignActive;
-(void)trackEvent:(id)arg0 ;
-(void)finishedTracking:(id)arg0 ;
-(void)launchEventResponseTasks:(id)arg0 ;
-(void)launchSessionResponseTasks:(id)arg0 ;
-(void)launchSdkClickResponseTasks:(id)arg0 ;
-(void)launchAttributionResponseTasks:(id)arg0 ;
-(void)setEnabled:(BOOL)arg0 ;
-(void)setOfflineMode:(BOOL)arg0 ;
-(BOOL)isEnabled;
-(id)adid;
-(BOOL)hasChangedState:(BOOL)arg0 nextState:(BOOL)arg1 trueMessage:(id)arg2 falseMessage:(id)arg3 ;
-(void)updateState:(BOOL)arg0 pausingMessage:(id)arg1 remainsPausedMessage:(id)arg2 unPausingMessage:(id)arg3 ;
-(void)appWillOpenUrl:(id)arg0 ;
-(void)setDeviceToken:(id)arg0 ;
-(void)setIadDate:(id)arg0 withPurchaseDate:(id)arg1 ;
-(void)sendIad3ClickPackage:(id)arg0 attributionDetails:(id)arg1 ;
-(void)saveAttributionDetailsI:(id)arg0 attributionDetails:(id)arg1 ;
-(void)setAskingAttribution:(BOOL)arg0 ;
-(void)updateHandlersStatusAndSend;
-(void)sendFirstPackages;
-(void)addSessionCallbackParameter:(id)arg0 value:(id)arg1 ;
-(void)addSessionPartnerParameter:(id)arg0 value:(id)arg1 ;
-(void)removeSessionCallbackParameter:(id)arg0 ;
-(void)removeSessionPartnerParameter:(id)arg0 ;
-(void)resetSessionCallbackParameters;
-(void)resetSessionPartnerParameters;
-(void)teardown:(BOOL)arg0 ;
-(void)initI:(id)arg0 sessionParametersActionsArray:(id)arg1 ;
-(void)startI:(id)arg0 ;
-(void)processSessionI:(id)arg0 ;
-(void)transferSessionPackageI:(id)arg0 now:(CGFloat)arg1 ;
-(void)checkAttributionStateI:(id)arg0 ;
-(void)endI:(id)arg0 ;
-(void)eventI:(id)arg0 event:(id)arg1 ;
-(void)launchEventResponseTasksI:(id)arg0 eventResponseData:(id)arg1 ;
-(void)launchSessionResponseTasksI:(id)arg0 sessionResponseData:(id)arg1 ;
-(void)launchSdkClickResponseTasksI:(id)arg0 sdkClickResponseData:(id)arg1 ;
-(void)launchAttributionResponseTasksI:(id)arg0 attributionResponseData:(id)arg1 ;
-(void)prepareDeeplinkI:(id)arg0 responseData:(id)arg1 ;
-(void)updateAdidI:(id)arg0 adid:(id)arg1 ;
-(BOOL)updateAttributionI:(id)arg0 attribution:(id)arg1 ;
-(void)appWillOpenUrlI:(id)arg0 url:(id)arg1 ;
-(BOOL)readDeeplinkQueryStringI:(id)arg0 queryString:(id)arg1 adjustDeepLinks:(id)arg2 attribution:(id)arg3 ;
-(BOOL)trySetAttributionDeeplink:(id)arg0 withKey:(id)arg1 withValue:(id)arg2 ;
-(void)setDeviceTokenI:(id)arg0 deviceToken:(id)arg1 ;
-(void)setIadDateI:(id)arg0 iAdImpressionDate:(id)arg1 withPurchaseDate:(id)arg2 ;
-(BOOL)isEnabledI:(id)arg0 ;
-(BOOL)isToUpdatePackagesI:(id)arg0 ;
-(BOOL)updateActivityStateI:(id)arg0 now:(CGFloat)arg1 ;
-(void)writeActivityStateI:(id)arg0 ;
-(void)writeActivityStateS:(id)arg0 changesInStateBlock:(id)arg1 ;
-(void)teardownActivityStateS:(BOOL)arg0 ;
-(void)writeAttributionI:(id)arg0 ;
-(void)teardownAttributionS:(BOOL)arg0 ;
-(void)readActivityState;
-(void)readAttribution;
-(void)writeSessionCallbackParametersI:(id)arg0 ;
-(void)writeSessionPartnerParametersI:(id)arg0 ;
-(void)teardownAllSessionParametersS:(BOOL)arg0 ;
-(void)readSessionCallbackParametersI:(id)arg0 ;
-(void)readSessionPartnerParametersI:(id)arg0 ;
-(void)updateHandlersStatusAndSendI:(id)arg0 ;
-(void)pauseSendingI:(id)arg0 ;
-(void)resumeSendingI:(id)arg0 ;
-(BOOL)pausedI:(id)arg0 ;
-(BOOL)pausedI:(id)arg0 sdkClickHandlerOnly:(BOOL)arg1 ;
-(BOOL)toSendI:(id)arg0 ;
-(BOOL)toSendI:(id)arg0 sdkClickHandlerOnly:(BOOL)arg1 ;
-(void)startForegroundTimerI:(id)arg0 ;
-(void)stopForegroundTimerI:(id)arg0 ;
-(void)foregroundTimerFiredI:(id)arg0 ;
-(void)startBackgroundTimerI:(id)arg0 ;
-(void)stopBackgroundTimerI:(id)arg0 ;
-(void)backgroundTimerFiredI:(id)arg0 ;
-(void)delayStartI:(id)arg0 ;
-(void)sendFirstPackagesI:(id)arg0 ;
-(void)updatePackagesI:(id)arg0 ;
-(void)addSessionCallbackParameterI:(id)arg0 key:(id)arg1 value:(id)arg2 ;
-(void)addSessionPartnerParameterI:(id)arg0 key:(id)arg1 value:(id)arg2 ;
-(void)removeSessionCallbackParameterI:(id)arg0 key:(id)arg1 ;
-(void)removeSessionPartnerParameterI:(id)arg0 key:(id)arg1 ;
-(void)resetSessionCallbackParametersI:(id)arg0 ;
-(void)resetSessionPartnerParametersI:(id)arg0 ;
-(void)sessionParametersActionsI:(id)arg0 sessionParametersActionsArray:(id)arg1 ;
-(void)addNotificationObserver;
-(void)removeNotificationObserver;
-(BOOL)checkTransactionIdI:(id)arg0 transactionId:(id)arg1 ;
-(BOOL)checkEventI:(id)arg0 event:(id)arg1 ;
-(BOOL)checkActivityStateI:(id)arg0 ;
+(id)handlerWithConfig:(id)arg0 sessionParametersActionsArray:(id)arg1 deviceToken:(id)arg2 ;


@end


#endif