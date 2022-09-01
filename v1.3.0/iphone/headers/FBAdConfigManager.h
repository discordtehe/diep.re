// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCONFIGMANAGER_H
#define FBADCONFIGMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdConfigManager : NSObject

@property (readonly, nonatomic) NSURL *configurationFileURL; // ivar: _configurationFileURL
@property (copy) NSDictionary *configuration; // ivar: _configuration
@property (readonly, nonatomic) CGFloat adClickguardThresholdInterval;
@property (readonly, copy, nonatomic) NSString *adTwoStepConfirmationLocalizedTitle;
@property (readonly, copy, nonatomic) NSString *adTwoStepConfirmationLocalizedBody;
@property (readonly, copy, nonatomic) NSString *adTwoStepLocalizedConfirmButtonText;
@property (readonly, copy, nonatomic) NSString *adTwoStepLocalizedCancelButtonText;
@property (readonly, nonatomic, getter=isAdClickguardEnabled) BOOL adClickguardEnabled;
@property (readonly, nonatomic, getter=isAdTwoStepConfirmationEnabled) BOOL adTwoStepConfirmationEnabled;
@property (readonly, nonatomic, getter=isFNFEnabled) BOOL fnfEnabled;
@property (readonly, nonatomic, getter=isFNFOffThreadRenderingEnabled) BOOL fnfOffThreadRenderingEnabled;
@property (readonly, nonatomic, getter=isMetalImageRendererEnabled) BOOL metalImageRendererEnabled;
@property (readonly, nonatomic) CGFloat unifiedLoggingImmediateDelay;
@property (readonly, nonatomic) NSInteger unifiedLoggingEventLimit;
@property (readonly, nonatomic) CGFloat adTapMargin; // ivar: _adTapMargin
@property (readonly, nonatomic) CGFloat minimumElapsedTimeAfterImpression;
@property (readonly, nonatomic, getter=isAdClickabilityRestrictedUntilImpression) BOOL adClickabilityRestrictedUntilImpression;
@property (readonly, nonatomic, getter=isVisibleAreaCheckEnabled) BOOL visibleAreaCheckEnabled;
@property (readonly, nonatomic) NSInteger visibleAreaPercentage;
@property (readonly, nonatomic) NSInteger adTapMarginPercentage;
@property (readonly, copy, nonatomic) NSString *rvAutoRotate;
@property (readonly, copy, nonatomic) NSString *loggingEndpointPrefix;
@property (readonly, nonatomic, getter=isInAppAppStoreDisabled) BOOL inAppAppStoreDisabled;
@property (readonly, nonatomic) BOOL useCachedImageContextForSoftwareRenderer;
@property (readonly, nonatomic) BOOL useCachedImageContextForMetalRenderer;
@property (readonly, nonatomic) BOOL useCachedImageContextForOpenGLRenderer;
@property (readonly, nonatomic, getter=isRVPlayPauseButtonEnabled) BOOL rvPlayPauseButtonEnabled;
@property (readonly, nonatomic, getter=isRVMetadataEnabled) BOOL rvMetadataEnabled;
@property (readonly, nonatomic, getter=isImpressionMissTrackingEnabled) BOOL impressionMissTrackingEnabled;
@property (readonly, nonatomic, getter=isDebugOverlayEnabled) BOOL debugOverlayEnabled;
@property (readonly, nonatomic) BOOL useStoreURL;
@property (readonly, nonatomic) BOOL shouldPurgeEventsAndTokensOn413Response;
@property (readonly, nonatomic) BOOL useArrowsInsteadOfXAsSkipButton;
@property (readonly, nonatomic, getter=isDebugLoggingEnabled) BOOL debugLoggingEnabled;
@property (readonly, nonatomic) NSSet *additionalDebugBlackList;
@property (readonly, nonatomic) NSInteger additionalDebugBlackListPercentage;
@property (readonly, nonatomic) NSInteger additionalDebugLoggingPercentage;
@property (readonly, nonatomic, getter=isWatchAndInstallEnabled) BOOL watchAndInstallEnabled;
@property (readonly, nonatomic, getter=shouldWaitForMarkuptImpressionEventBeforeLogging) BOOL waitForMarkuptImpressionEventBeforeLogging;
@property (readonly, nonatomic) BOOL shouldBlurImages;
@property (readonly, nonatomic, getter=isInlineAdReportingFlowEnabled) BOOL inlineAdReportingFlowEnabled;
@property (readonly, nonatomic, getter=isLoadAdOldBehaviourDisabled) BOOL loadAdOldBehaviourDisabled;
@property (readonly, nonatomic) BOOL useSimpleNativeScrollView;
@property (readonly, nonatomic) BOOL useIOSurfacePlayerLayer;
@property (readonly, nonatomic) BOOL useNativeNonFullscreenXoutFlow;
@property (readonly, nonatomic) BOOL sendFrameworkType;
@property (readonly, nonatomic) BOOL showToolbarInRVForMarkupEndCard;
@property (readonly, nonatomic) BOOL showCTAInRVPreEndCards;
@property (readonly, nonatomic) NSInteger nativeCarouselCompactThreshold;
@property (readonly, nonatomic) BOOL useRedesignedTemplates;
@property (readonly, nonatomic) BOOL useRedesignedBannerTemplates;
@property (readonly, nonatomic) BOOL useNewInterstitialVideoDesign;
@property (readonly, nonatomic) BOOL useNewRewardedVideoDesign;
@property (readonly, nonatomic) BOOL useNewToolbarDesign;
@property (readonly, nonatomic) BOOL blurWhitespaceInVideoRenderer;
@property (readonly, nonatomic) BOOL clickToPlayShouldFireImpressionOnVideoStart;
@property (readonly, nonatomic) BOOL useNativeDispatchUserAgentGenerating;
@property (readonly, nonatomic) BOOL shouldSendFBLoginASID;
@property (readonly, nonatomic) BOOL shouldSendHashedUserPIIData;
@property (readonly, nonatomic) BOOL shouldUseCacheForPlayableMarkup;
@property (readonly, nonatomic, getter=shouldUseSKAppStore) BOOL useSKAppStore;
@property (readonly, nonatomic, getter=shouldExplicitlyWaitForVideoToStartPlayingInNativeAd) BOOL explicitlyWaitForVideoToStartPlayingInNativeAd;
@property (readonly, nonatomic, getter=shouldUseAppStoreEndCard) BOOL useAppStoreEndCard;
@property (readonly, nonatomic, getter=isNetworkQualityMeasurementEnabled) BOOL networkQualityMeasurementEnabled;
@property (readonly, nonatomic, getter=isNewStoriesDesignEnabled) BOOL newStoriesDesignEnabled;
@property (readonly, nonatomic) CGFloat storiesImageDisplayDuration;
@property (readonly, nonatomic) NSInteger uxFunnelLoggingSamplingRate;
@property (readonly, copy, nonatomic) NSArray *uxFunnelLoggingEvents;
@property (readonly, nonatomic) NSInteger cacheDebugEventsSamplingRate;
@property (readonly, nonatomic) NSUInteger inMemoryCacheSizeLimit;
@property (readonly, nonatomic) NSUInteger onDiskCacheSizeLimit;
@property (readonly, nonatomic, getter=shouldUseVideoWrapperCacheFix) BOOL useVideoWrapperCacheFix;
@property (readonly, nonatomic, getter=shouldUseCacheWriteToDiskFix) BOOL useCacheWriteToDiskFix;
@property (readonly, nonatomic, getter=shouldUseNonNSCacheBasedCache) BOOL useNonNSCacheBasedCache;
@property (readonly, nonatomic) BOOL isWONetworkSignalEnabled;
@property (readonly, nonatomic) BOOL isWONetworkSignalLargePayloadEnabled;
@property (readonly, nonatomic) NSInteger getWONetworkSignalLargePayloadSize;
@property (readonly, nonatomic) NSInteger getWONetworkSignalSamplingRate;
@property (readonly, copy, nonatomic) NSString *woNetworkSignalUrl;
@property (readonly, nonatomic) NSInteger getWONetworkSignalLargePayloadSamplingRate;
@property (readonly, nonatomic) NSInteger getWOIntervalModeBackgroundInterval;
@property (readonly, nonatomic) NSInteger getWOIntervalModeForegroundInterval;
@property (readonly, nonatomic) BOOL woIntervalModeNoStartKillSwitch;
@property (readonly, nonatomic) BOOL woNativeSignalsEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsBatterySignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsBundleSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsApplicationInfoSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsTelephonySignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsDeviceSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsAudioSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsNetworkSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsReachabilitySignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsTouchSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsBootSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsBuildSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsCameraSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsLocalAuthSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsLocationSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsMotionSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsOtherUiSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsProcessSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsProxySignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsScreenSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsSimulatorSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsCaptiveSignalEnabled;
@property (readonly, nonatomic) BOOL woNativeSignalsJailbrokenSignalEnabled;
@property (readonly, nonatomic) BOOL isBDIntervalModeEnabled;
@property (readonly, nonatomic) NSUInteger bdBufferSize;
@property (readonly, nonatomic) NSInteger bdIntervalTime;
@property (readonly, nonatomic) NSInteger bdStaticSignalsBufferCapacity;
@property (readonly, nonatomic) NSInteger bdDynamicSignalsBufferCapacity;
@property (readonly, nonatomic) NSInteger bdBiometricSignalsBufferCapacity;
@property (readonly, nonatomic) NSInteger bdReputationTier;
@property (readonly, nonatomic) CGFloat bdMinDistanceBetweenTouches;
@property (readonly, copy, nonatomic) NSString *bdSignalsConfig;


-(id)init;
-(id)initWithAsyncLoad:(BOOL)arg0 ;
-(id)loadConfigurationFromStorage:(BOOL)arg0 ;
-(id)loadConfigurationFromStorage;
-(id)loadConfigurationFromDictionary:(id)arg0 ;
-(id)loadConfigurationFromPropertyList:(id)arg0 ;
-(id)saveConfiguration:(BOOL)arg0 ;
-(id)saveConfiguration;
-(id)deleteConfiguration;
-(id)objectForKeyedSubscript:(id)arg0 ;
-(void)setObject:(id)arg0 forKeyedSubscript:(id)arg1 ;
-(BOOL)boolForKey:(id)arg0 defaultReturnValue:(BOOL)arg1 ;
-(NSInteger)integerForKey:(id)arg0 defaultReturnValue:(NSInteger)arg1 ;
-(NSUInteger)unsignedIntegerForKey:(id)arg0 defaultReturnValue:(NSUInteger)arg1 ;
-(CGFloat)timeIntervalforKey:(id)arg0 defaultReturnValue:(CGFloat)arg1 ;
-(id)stringForKey:(id)arg0 defaultReturnValue:(id)arg1 ;
-(CGFloat)doubleForKey:(id)arg0 defaultReturnValue:(CGFloat)arg1 ;
-(id)deserializeArrayFromString:(id)arg0 ;
-(id)arrayForKey:(id)arg0 defaultReturnValue:(id)arg1 ;
-(id)dictionaryForKey:(id)arg0 defaultReturnValue:(id)arg1 ;
-(id)accidental_clicks_config;
+(void)initialize;
+(id)sharedManager;
+(id)sharedManagerWithAsyncLoad:(BOOL)arg0 ;


@end


#endif