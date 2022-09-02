// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCESDK_H
#define IRONSOURCESDK_H

@protocol ISOfferwallDelegate, ISRewardedInterstitialDelegate, ISSegmentDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class ISLoggerManager;
@class ISConfigurations;
@class ISRewardedVideoManager;
@class ISInterstitialManager;
@class ISOfferwallManager;
@class ISBannerManager;
@class ISBannerSize;
@class ISDemandOnlyModeHelper;
@protocol SSENotifierProtocol;
@protocol ISKeyValueStorageProtocol;
@protocol ISLogDelegate;

@interface IronSourceSdk : NSObject <SSENotifierProtocol>

 {
    ISLoggerManager *loggerManager;
    id<ISKeyValueStorageProtocol> *storage;
}


@property (retain, nonatomic) ISConfigurations *configuration; // ivar: _configuration
@property (retain, nonatomic) NSOperationQueue *queue; // ivar: _queue
@property (nonatomic) NSInteger mediationSDKState; // ivar: _mediationSDKState
@property (retain, nonatomic) NSMutableArray *initiatedAdUnits; // ivar: _initiatedAdUnits
@property (retain, nonatomic) NSMutableArray *attachedAdUnits; // ivar: _attachedAdUnits
@property (retain, nonatomic) ISRewardedVideoManager *rewardedVideoManager; // ivar: _rewardedVideoManager
@property (retain, nonatomic) ISInterstitialManager *interstitialManager; // ivar: _interstitialManager
@property (retain, nonatomic) ISOfferwallManager *offerwallManager; // ivar: _offerwallManager
@property (retain, nonatomic) ISBannerManager *bannerManager; // ivar: _bannerManager
@property (retain, nonatomic) NSObject<ISOfferwallDelegate> *offerwallDelegate; // ivar: _offerwallDelegate
@property (retain, nonatomic) NSObject<ISRewardedInterstitialDelegate> *rewardedInterstitialDelegate; // ivar: _rewardedInterstitialDelegate
@property (retain, nonatomic) NSObject<ISLogDelegate> *logDelegate; // ivar: _logDelegate
@property (retain, nonatomic) NSObject<ISSegmentDelegate> *segmentDelegate; // ivar: _segmentDelegate
@property (nonatomic) BOOL rewardedVideoAdded; // ivar: _rewardedVideoAdded
@property (nonatomic) BOOL offerwallAdded; // ivar: _offerwallAdded
@property (nonatomic) BOOL didCallLoadBeforeResponse; // ivar: _didCallLoadBeforeResponse
@property (nonatomic) BOOL didCallLoadBannerBeforeResponse; // ivar: _didCallLoadBannerBeforeResponse
@property (nonatomic) int loadFailedDelay; // ivar: _loadFailedDelay
@property (nonatomic) BOOL shouldSendLoadBannerFailedEvent; // ivar: _shouldSendLoadBannerFailedEvent
@property (nonatomic) BOOL didReportInitialAvailabilityFalse; // ivar: _didReportInitialAvailabilityFalse
@property (nonatomic) BOOL didRevive; // ivar: _didRevive
@property (retain, nonatomic) NSString *serverBaseUrl; // ivar: _serverBaseUrl
@property (retain, nonatomic) NSNumber *serr; // ivar: _serr
@property (retain, nonatomic) NSTimer *countDownTimer15Secs; // ivar: _countDownTimer15Secs
@property (retain, nonatomic) NSTimer *countDownTimer60Secs; // ivar: _countDownTimer60Secs
@property (retain, nonatomic) NSTimer *retryTimer; // ivar: _retryTimer
@property (nonatomic) int retryInterval; // ivar: _retryInterval
@property (nonatomic) int retryLimit; // ivar: _retryLimit
@property (nonatomic) int retryGrowLimit; // ivar: _retryGrowLimit
@property (nonatomic) int retryAvailabilityLimit; // ivar: _retryAvailabilityLimit
@property (nonatomic) int retryCounter; // ivar: _retryCounter
@property (nonatomic) int initCounter; // ivar: _initCounter
@property (nonatomic) BOOL isRetryForMoreThan15Secs; // ivar: _isRetryForMoreThan15Secs
@property (nonatomic) NSInteger netStatus; // ivar: _netStatus
@property (retain, nonatomic) NSString *bannerToLoadPlacementName; // ivar: _bannerToLoadPlacementName
@property (retain, nonatomic) ISBannerSize *bannerToLoadSize; // ivar: _bannerToLoadSize
@property (retain, nonatomic) UIViewController *bannerToLoadViewController; // ivar: _bannerToLoadViewController
@property (retain, nonatomic) ISDemandOnlyModeHelper *rvDemandOnlyModeHelper; // ivar: _rvDemandOnlyModeHelper
@property (retain, nonatomic) ISDemandOnlyModeHelper *isDemandOnlyModeHelper; // ivar: _isDemandOnlyModeHelper
@property (retain, nonatomic) NSMutableSet *interstitialInstanceIds; // ivar: _interstitialInstanceIds
@property (nonatomic) BOOL interstitialInitRequested; // ivar: _interstitialInitRequested
@property (nonatomic) BOOL bannerInitRequested; // ivar: _bannerInitRequested
@property (nonatomic) BOOL didSetConsent; // ivar: _didSetConsent
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(BOOL)isRewardedVideoAvailable;
-(BOOL)isRvDemandOnlyMode;
-(BOOL)isIsDemandOnlyMode;
-(void)reportLifeCycleEvent:(NSInteger)arg0 ;
-(void)appWillResignActive:(id)arg0 ;
-(void)appBecameActive:(id)arg0 ;
-(void)removeLifecycleObservers;
-(void)appWillTerminate:(id)arg0 ;
-(void)initLifecycleObservers;
-(void)setRewardedVideoDelegate:(id)arg0 ;
-(void)setInstRewardedVideoDelegate:(id)arg0 ;
-(void)setInterstitialDelegate:(id)arg0 ;
-(void)setInstInterstitialDelegate:(id)arg0 ;
-(void)setBannerDelegate:(id)arg0 ;
-(id)sdkVersion;
-(void)setAge:(NSInteger)arg0 ;
-(void)setGender:(NSInteger)arg0 ;
-(void)shouldTrackReachability:(BOOL)arg0 ;
-(void)setAdaptersDebug:(BOOL)arg0 ;
-(BOOL)setDynamicUserId:(id)arg0 ;
-(void)setMediationType:(id)arg0 ;
-(void)setSegment:(id)arg0 ;
-(void)setMediationSegment:(id)arg0 ;
-(void)setUserId:(id)arg0 ;
-(void)setAndValidateUserID:(id)arg0 ;
-(void)initWithAppKey:(id)arg0 ;
-(void)initWithAppKey:(id)arg0 adUnits:(id)arg1 ;
-(void)initWithAppKey:(id)arg0 adUnits:(id)arg1 internal:(BOOL)arg2 isDemandOnly:(BOOL)arg3 ;
-(void)initISDemandOnly:(id)arg0 adUnits:(id)arg1 ;
-(void)attachAdUnits:(id)arg0 isDemandOnly:(BOOL)arg1 ;
-(void)handleAttachedAdUnits;
-(void)initiateAttachedAdUnits;
-(BOOL)didInitateAdUnit:(id)arg0 ;
-(BOOL)didInitateOrAttachAdUnit:(id)arg0 ;
-(void)initMediation;
-(void)sendAllEvents;
-(void)initFromServer;
-(void)serverErrorLoadIsFailed;
-(void)reportInitialAvailabilityFalseWithReason:(id)arg0 ;
-(void)handleInitRewardedVideo;
-(void)handleInitInterstitial;
-(void)handleInitBanner;
-(void)handleInitOfferwall;
-(void)getProvidersFromServerWithCompletion:(id)arg0 ;
-(void)sendDecryptFailedEvent;
-(id)loadFromCache;
-(void)saveToCache:(id)arg0 appKey:(id)arg1 userId:(id)arg2 ;
-(void)sendInititateMediationSDKEventForAdUnits:(id)arg0 internal:(BOOL)arg1 isDemandOnly:(BOOL)arg2 ;
-(BOOL)isValidApplicationKey;
-(void)onTick15Secs:(id)arg0 ;
-(void)onTick60Secs:(id)arg0 ;
-(void)onRetry:(id)arg0 ;
-(void)reportMediationAvailabilityFalseWithReason:(id)arg0 forAdUnits:(id)arg1 ;
-(id)showErrorMessage:(id)arg0 ;
-(void)notifySegmentReceived:(id)arg0 ;
-(id)parseMandatoryParamsToURL;
-(id)parseSegmentToUrl:(id)arg0 ;
-(void)handleParseSegment;
-(void)initRewardedVideoManager;
-(void)initInterstitialManager;
-(void)initOfferwallManager;
-(void)initBannerManager;
-(void)showRewardedVideoWithViewController:(id)arg0 ;
-(void)showRewardedVideoWithViewController:(id)arg0 placement:(id)arg1 ;
-(void)showRewardedVideoWithViewController:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
-(BOOL)hasRewardedVideo;
-(BOOL)hasRewardedVideo:(id)arg0 ;
-(BOOL)isRewardedVideoCappedForPlacement:(id)arg0 ;
-(BOOL)isRVPlacementCapped:(id)arg0 sendEvent:(BOOL)arg1 ;
-(id)rewardedVideoPlacementInfo:(id)arg0 ;
-(void)setRewardedVideoServerParameters:(id)arg0 ;
-(void)clearRewardedVideoServerParameters;
-(void)showOfferwallWithViewController:(id)arg0 ;
-(void)showOfferwallWithViewController:(id)arg0 placement:(id)arg1 ;
-(BOOL)hasOfferwall;
-(void)offerwallCredits;
-(void)showInterstitialWithViewController:(id)arg0 ;
-(void)showInterstitialWithViewController:(id)arg0 placement:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
-(void)loadInterstitial;
-(void)loadInterstitial:(id)arg0 ;
-(BOOL)hasInterstitial;
-(BOOL)hasInterstitial:(id)arg0 ;
-(BOOL)isInterstitialCappedForPlacement:(id)arg0 ;
-(BOOL)isISPlacementCapped:(id)arg0 sendEvent:(BOOL)arg1 ;
-(void)loadBannerWithViewController:(id)arg0 size:(id)arg1 ;
-(void)loadBannerWithViewController:(id)arg0 size:(id)arg1 placement:(id)arg2 ;
-(void)destroyBanner:(id)arg0 ;
-(BOOL)isBannerCappedForPlacement:(id)arg0 ;
-(void)sendIsCappedEvent:(BOOL)arg0 forAdUnit:(id)arg1 placement:(id)arg2 ;
-(id)advertiserId;
-(id)getAdvertiserIdInternal;
-(id)getAdvertiserId;
-(void)reachabilityChanged:(id)arg0 ;
-(void)notifyValidDelegatesWithShowFailResponse:(id)arg0 error:(id)arg1 fromProduct:(id)arg2 ;
-(void)setConsent:(BOOL)arg0 ;
+(id)sharedInstance;


@end


#endif