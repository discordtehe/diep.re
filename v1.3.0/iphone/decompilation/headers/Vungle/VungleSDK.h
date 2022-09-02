// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLESDK_H
#define VUNGLESDK_H

@protocol VungleSDKHeaderBidding, VungleSDKCreativeTracking;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleAdViewController;
@class VungleRequestAdController;
@class VunglePlacementsCoordinator;
@class VungleConfigController;
@class VungleNewRequestController;
@class VungleRequestStreamingAdController;
@class VungleReportAdController;
@class VungleReportIncentivizedController;
@class VNGAppLifecycleCoordinator;
@class VungleInternalMRAIDViewController;
@class VungleCustomMRAIDViewController;
@class VungleSDKInitializer;
@class VunglePlayabilityCoordinator;
@class VunglePlayOptionsProvider;
@class VunglePublisherInformationProvider;
@class VungleFlexViewPresentationManager;
@class VungleHTTPLogSender;
@class VNGAdRequestCoordinator;
@protocol VungleRequestStreamingAdControllerDelegate;
@protocol VungleStreamingConfigurableDelegate;
@protocol VungleSDKInitializerDelegate;
@protocol VunglePlacementsCoordinatorDelegate;
@protocol VungleAdDelegate;
@protocol VungleSDKDelegate;
@protocol VungleSDKNativeAds;
@protocol VungleSDKDelegate;

@interface VungleSDK : NSObject <VungleRequestStreamingAdControllerDelegate, VungleStreamingConfigurableDelegate, VungleSDKInitializerDelegate, VunglePlacementsCoordinatorDelegate, VungleAdDelegate>



@property (nonatomic) NSUInteger presentationMode; // ivar: _presentationMode
@property (getter=isInitialized) BOOL initialized; // ivar: _initialized
@property BOOL loggingEnabled; // ivar: _loggingEnabled
@property CGFloat preventPlayUntilTime; // ivar: _preventPlayUntilTime
@property (copy) id *playableEventTimer; // ivar: _playableEventTimer
@property BOOL isPlaying; // ivar: _isPlaying
@property (weak, nonatomic) UIViewController *tmpViewController; // ivar: _tmpViewController
@property (retain, nonatomic) VungleAdViewController *currentAdViewController; // ivar: _currentAdViewController
@property (retain, nonatomic) NSUserDefaults *defaults; // ivar: _defaults
@property (retain, nonatomic) VungleRequestAdController *requestAdController; // ivar: _requestAdController
@property (retain, nonatomic) VunglePlacementsCoordinator *placementsCoordinator; // ivar: _placementsCoordinator
@property (retain, nonatomic) VungleConfigController *configController; // ivar: _configController
@property (retain, nonatomic) VungleNewRequestController *createNewRequestController; // ivar: _createNewRequestController
@property (retain, nonatomic) VungleRequestStreamingAdController *requestStreamingAdController; // ivar: _requestStreamingAdController
@property (retain, nonatomic) VungleReportAdController *reportingController; // ivar: _reportingController
@property (retain, nonatomic) VungleReportIncentivizedController *reportIncentivizedController; // ivar: _reportIncentivizedController
@property (retain, nonatomic) VNGAppLifecycleCoordinator *appLifecycleCoordinator; // ivar: _appLifecycleCoordinator
@property (retain, nonatomic) VungleInternalMRAIDViewController *vmraidController; // ivar: _vmraidController
@property (retain, nonatomic) VungleCustomMRAIDViewController *customMRAIDController; // ivar: _customMRAIDController
@property BOOL didStartup; // ivar: _didStartup
@property (nonatomic, getter=isHeaderBiddingEnabled) BOOL headerBiddingEnabled; // ivar: _headerBiddingEnabled
@property (nonatomic) NSUInteger endTaskId; // ivar: _endTaskId
@property (retain, nonatomic) VungleSDKInitializer *SDKInitializer; // ivar: _SDKInitializer
@property (nonatomic, getter=isSuccessfulAdView) BOOL successfulAdView; // ivar: _successfulAdView
@property (retain, nonatomic) VunglePlayabilityCoordinator *playabilityCoordinator; // ivar: _playabilityCoordinator
@property (copy, nonatomic) VunglePlayOptionsProvider *currentPlayOptions; // ivar: _currentPlayOptions
@property (retain, nonatomic) VunglePublisherInformationProvider *publisherInformation; // ivar: _publisherInformation
@property (retain, nonatomic) NSObject<VungleSDKDelegate> *internalDelegate; // ivar: _internalDelegate
@property (retain, nonatomic) VungleFlexViewPresentationManager *presentationManager; // ivar: _presentationManager
@property (retain, nonatomic) VungleHTTPLogSender *vngLogSender; // ivar: _vngLogSender
@property (nonatomic, getter=isAdDismissInProgress) BOOL adDismissInProgress; // ivar: _adDismissInProgress
@property (retain, nonatomic) VNGAdRequestCoordinator *adRequestCoordinator; // ivar: _adRequestCoordinator
@property (retain, nonatomic) NSMutableDictionary *customControllerDict; // ivar: _customControllerDict
@property (weak, nonatomic) NSObject<VungleSDKNativeAds> *nativeAdsDelegate; // ivar: _nativeAdsDelegate
@property (weak, nonatomic) NSObject<VungleSDKHeaderBidding> *headerBiddingDelegate; // ivar: _headerBiddingDelegate
@property (weak) NSObject<VungleSDKCreativeTracking> *creativeTrackingDelegate; // ivar: _creativeTrackingDelegate
@property (copy, nonatomic) NSString *pluginName; // ivar: _pluginName
@property (nonatomic) BOOL validCTAURLResolved; // ivar: _validCTAURLResolved
@property (retain) NSDictionary *userData; // ivar: _userData
@property (retain) NSObject<VungleSDKDelegate> *delegate;
@property BOOL muted; // ivar: _muted
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setHTTPHeaderPair:(id)arg0 ;
-(void)clearAdUnitCreativesForPlacement:(id)arg0 completionBlock:(id)arg1 ;
-(id)getValidPlacementInfo;
-(void)setEnableDebugMinimumFileSystemSizeForInit:(BOOL)arg0 ;
-(void)setEnableDebugMinimumFileSystemSizeForAdRequest:(BOOL)arg0 ;
-(void)setEnableDebugMinimumFileSystemSizeForAssetDownload:(BOOL)arg0 ;
-(BOOL)isDebugMinimumFileSystemSizeForInitEnabled;
-(void)dealloc;
-(void)setupEndpointControllersWithDefaults:(id)arg0 ;
-(id)initWithDefaults:(id)arg0 ;
-(BOOL)startWithAppId:(id)arg0 placements:(id)arg1 error:(*id)arg2 ;
-(BOOL)startWithAppId:(id)arg0 error:(*id)arg1 ;
-(void)updateCacheWithSDKVersion:(id)arg0 ;
-(void)setupInitialOperationChain;
-(id)deviceInfo;
-(BOOL)presentAdForPlacement:(id)arg0 viewController:(id)arg1 playOptions:(id)arg2 ;
-(BOOL)isAdPlaying;
-(BOOL)playAd:(id)arg0 options:(id)arg1 placementID:(id)arg2 error:(*id)arg3 ;
-(BOOL)canProceedWithFeedBasedAdExperience:(BOOL)arg0 error:(*id)arg1 ;
-(id)placementWithID:(id)arg0 error:(*id)arg1 ;
-(BOOL)addAdViewToView:(id)arg0 withOptions:(id)arg1 placementID:(id)arg2 error:(*id)arg3 ;
-(void)finishedDisplayingAd;
-(void)processLoadAdErrorResponseForPlacement:(id)arg0 loadedAd:(id)arg1 error:(id)arg2 ;
-(void)processSuccessfulLoadAdForPlacement:(id)arg0 loadedAd:(id)arg1 presentingController:(id)arg2 ;
-(BOOL)isAdCachedForPlacementID:(id)arg0 ;
-(BOOL)loadPlacementWithID:(id)arg0 error:(*id)arg1 ;
-(void)didGetIFA:(id)arg0 ;
-(void)didGetIDFV:(id)arg0 ;
-(void)didGetUserAgent:(id)arg0 ;
-(void)didPresentInterstitialAdViewControllerForPlacement:(id)arg0 ;
-(void)willPresentInterstitialAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;
-(void)didFinishAdViewForPlacement:(id)arg0 withSuccess:(BOOL)arg1 ;
-(void)willDismissInterstitialAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;
-(void)didDismissInterstitialAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;
-(void)willBackgroundAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;
-(void)updateCachedReportable:(id)arg0 ;
-(void)willLaunchURLFromAdViewControllerForPlacement:(id)arg0 ;
-(void)log:(id)arg0 ;
-(void)placementCoordinatorWillPreparePlacement:(id)arg0 ;
-(void)placementCoordinatorDidLoadPlacement:(id)arg0 error:(id)arg1 ;
-(void)streamingAdControllerFailedToLoadStreamingAdForPlacement:(id)arg0 error:(id)arg1 ;
-(void)streamingAdControllerDidValidateCTA:(BOOL)arg0 ;
-(void)streamingAdControllerShouldPlayAdForPlacement:(id)arg0 ;
-(void)streamingSettingsUpdateShouldStream:(BOOL)arg0 streamingRequestTimeout:(CGFloat)arg1 bufferingTimeout:(CGFloat)arg2 ;
-(id)debugInfo;
-(void)attachLogger:(id)arg0 ;
-(void)detachLogger:(id)arg0 ;
-(void)setup;
-(void)clearSleep;
-(BOOL)isViewabilityEnabled:(id)arg0 ;
-(void)updateConsentStatus:(NSInteger)arg0 consentMessageVersion:(id)arg1 ;
-(NSInteger)getCurrentConsentStatus;
-(id)getConsentMessageVersion;
-(BOOL)placementHasNativeAdsTemplateType:(id)arg0 ;
-(id)bidTokenForPlacement:(id)arg0 ;
-(void)forwardCachedBidTokens;
+(void)initialize;
+(id)sharedSDK;
+(void)setPublishIDFV:(BOOL)arg0 ;
+(BOOL)shouldPublishIDFV;


@end


#endif