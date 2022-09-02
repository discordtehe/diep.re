// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBOTDETECTOR_H
#define FBADBOTDETECTOR_H


#import <Foundation/Foundation.h>

@protocol BotDetectionConfigProviderDelegate;
@protocol BotDetectionSignalLoggerDelegate;
@protocol BotDetectionSignalsProviderDelegate;
@protocol BotDetectionDynamicLoadedLibraryProviderDelegate;

@interface FBAdBotDetector : NSObject <BotDetectionConfigProviderDelegate, BotDetectionSignalLoggerDelegate, BotDetectionSignalsProviderDelegate, BotDetectionDynamicLoadedLibraryProviderDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)loadBotDetectionModule;
-(void)performBotDetectionForEvent:(id)arg0 withEventType:(id)arg1 withBDSessionIds:(id)arg2 ;
-(void)dealloc;
-(void)addLocationSignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
-(void)addReachabilitySignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
-(void)addBuildInfoSignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
-(id)bdTelephonySignals;
-(void)addTelephonySignalsForSignalList:(id)arg0 toDictionary:(id)arg1 usingDispatchGroup:(id)arg2 ;
-(void)addJailbrokenSignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
-(void)startTimerWithTimeInterval:(CGFloat)arg0 queue:(id)arg1 block:(id)arg2 ;
-(void)stopTimer;
-(BOOL)isNativeSignalCollectionEventModeEnabled;
-(BOOL)isBotDetectionEnabledForProductType:(NSUInteger)arg0 ;
-(BOOL)isWONetworkSignalLargePayloadEnabled;
-(NSUInteger)payloadSize;
-(NSUInteger)largePayloadSamplingRate;
-(NSUInteger)networkSignalSamplingRateForProductType:(NSUInteger)arg0 ;
-(id)woNetworkSignalUrlString;
-(BOOL)isNativeSignalAudioEnabled;
-(BOOL)isNativeSignalBatteryEnabled;
-(BOOL)isNativeSignalBootEnabled;
-(BOOL)isNativeSignalBuildEnabled;
-(BOOL)isNativeSignalBundleEnabled;
-(BOOL)isNativeSignalCameraEnabled;
-(BOOL)isNativeSignalLocalAuthEnabled;
-(BOOL)isNativeSignalLocationEnabled;
-(BOOL)isNativeSignalMotionEnabled;
-(BOOL)isNativeSignalNetworkEnabled;
-(BOOL)isNativeSignalOtherUIThreadEnabled;
-(BOOL)isNativeSignalProcessInfoEnabled;
-(BOOL)isNativeSignalProxyEnabled;
-(BOOL)isNativeSignalScreenEnabled;
-(BOOL)isNativeSignalSimulatorEnabled;
-(BOOL)isNativeSignalTelephonyEnabled;
-(BOOL)isNativeSignalUIApplicationEnabled;
-(BOOL)isNativeSignalUIDeviceEnabled;
-(BOOL)isNativeSignalCaptiveNetworkEnabled;
-(BOOL)isNativeSignalReachabilityEnabled;
-(BOOL)isNativeSignalTouchEnabled;
-(BOOL)isNativeSignalJailbrokenEnabled;
-(BOOL)isNativeSignalIntervalModeEnabled;
-(NSUInteger)nativeSignalsBufferSize;
-(NSInteger)signalCollectionIntervalTime;
-(NSInteger)staticSignalsBufferCapacity;
-(NSInteger)dynamicSignalsBufferCapacity;
-(NSInteger)biometricSignalsBufferCapacity;
-(int)reputationTier;
-(id)signalConfig;
-(CGFloat)minDistanceBetweenTouches;
-(int)surfaceFlag;
-(void)logBotDetectionSignalData:(id)arg0 forProductName:(id)arg1 forLoggerEventName:(id)arg2 ;
-(id)dynamicLoadedLAContext;
-(id)dynamicLoadedWKWebView;
+(id)appSessionId;
+(id)eventId;
+(id)botDetector;


@end


#endif