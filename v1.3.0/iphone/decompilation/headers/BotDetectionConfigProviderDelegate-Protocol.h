// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol BotDetectionConfigProviderDelegate


-(BOOL)isBotDetectionEnabledForProductType:(NSUInteger)arg0 ;
-(BOOL)isWONetworkSignalLargePayloadEnabled;
-(NSUInteger)payloadSize;
-(NSUInteger)largePayloadSamplingRate;
-(NSUInteger)networkSignalSamplingRateForProductType:(NSUInteger)arg0 ;
-(id)woNetworkSignalUrlString;
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
-(BOOL)isNativeSignalCollectionEventModeEnabled;
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

@end

