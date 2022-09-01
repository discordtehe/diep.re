// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SUPERSONICADSPUBLISHER_H
#define SUPERSONICADSPUBLISHER_H

@protocol SuperSonicAdsDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class SSADataManager;
@class SSAProductParameters;
@class SSAGeneralParameters;
@class SSADemandSourcesCollection;
@class ISSplitViewController;
@class ISNMOATJSInterface;
@class ISNRingerButtonJSHandler;
@class ISNProductPresenterJSHandler;
@class ISNOrientationJSHandler;
@class ISNAdViewJSInterfaceHandler;
@class SSAJSInterfaceHandler;
@class SupersonicAdsViewController;
@class ISNNativeSessionConfiguration;
@class SupersonicAdsView;
@protocol ISAppStoreInsideSessionDelegate;
@protocol ISSplitViewDelegate;
@protocol SSWVWebViewDelegate;
@protocol SSENotifierProtocol;
@protocol SSWVWebViewP;
@protocol SSAOfferWallDelegate;

@interface SupersonicAdsPublisher : NSObject <ISAppStoreInsideSessionDelegate, ISSplitViewDelegate, SSWVWebViewDelegate, SSENotifierProtocol>

 {
    BOOL _initOWCalledButControllerNotInitiatedYet;
    BOOL _getOWCreditsCalledButControllerNotInitiatedYet;
    BOOL _noMoreOffersWasCalled;
    BOOL _isInitingController;
    CGRect mRaidDefaultPosition;
    BOOL firstISAvailabiltyStatusReported;
    BOOL shouldCatchAppStoreSchemes;
    NSArray *appStoreSchemes;
}


@property (retain, nonatomic) SSADataManager *dataManager; // ivar: _dataManager
@property (retain, nonatomic) SSAProductParameters *parametersForRV; // ivar: _parametersForRV
@property (retain, nonatomic) SSAProductParameters *parametersForIS; // ivar: _parametersForIS
@property (retain, nonatomic) SSAProductParameters *parametersForBN; // ivar: _parametersForBN
@property (retain, nonatomic) SSAGeneralParameters *parametersForOW; // ivar: _parametersForOW
@property (retain, nonatomic) NSDictionary *adCreditedParameters; // ivar: _adCreditedParameters
@property (nonatomic) BOOL shouldInterceptMRAID; // ivar: _shouldInterceptMRAID
@property (retain, nonatomic) SSADemandSourcesCollection *demandSourcesCollection; // ivar: _demandSourcesCollection
@property (retain, nonatomic) ISSplitViewController *splitViewCtrl; // ivar: _splitViewCtrl
@property (retain, nonatomic) ISNMOATJSInterface *moatJSInterfaceHandler; // ivar: _moatJSInterfaceHandler
@property (retain, nonatomic) ISNRingerButtonJSHandler *ringerButtonJSInterfaceHandler; // ivar: _ringerButtonJSInterfaceHandler
@property (retain, nonatomic) ISNProductPresenterJSHandler *presenterJSInterfaceHandler; // ivar: _presenterJSInterfaceHandler
@property (retain, nonatomic) ISNOrientationJSHandler *orientationJSInterfaceHandler; // ivar: _orientationJSInterfaceHandler
@property (retain, nonatomic) ISNAdViewJSInterfaceHandler *isnAdViewJSInterfaceHandler; // ivar: _isnAdViewJSInterfaceHandler
@property (nonatomic) NSInteger adViewContainerCounter; // ivar: _adViewContainerCounter
@property (retain, nonatomic) NSString *externalAdViewDemandSourceName; // ivar: _externalAdViewDemandSourceName
@property (nonatomic) BOOL shouldSendDebugModeInProduction; // ivar: _shouldSendDebugModeInProduction
@property (readonly, nonatomic, getter=shouldUseWKWebViewWhenCreatingWebViews) BOOL useWKWebViewWhenCreatingWebViews;
@property (retain, nonatomic) NSObject<SSWVWebViewP> *webViewController; // ivar: _webViewController
@property (retain, nonatomic) NSDictionary *expandProperties; // ivar: _expandProperties
@property (retain, nonatomic) NSDictionary *orientationProperties; // ivar: _orientationProperties
@property (retain, nonatomic) NSDictionary *resizeProperties; // ivar: _resizeProperties
@property (retain, nonatomic) NSDictionary *controllerOrientationsDict; // ivar: _controllerOrientationsDict
@property (readonly, nonatomic) BOOL hasSecondaryView; // ivar: _hasSecondaryView
@property (nonatomic) NSUInteger controllerState; // ivar: _controllerState
@property (nonatomic) BOOL isComingBackFromBG; // ivar: _isComingBackFromBG
@property (retain, nonatomic) NSMutableDictionary *currentSession; // ivar: _currentSession
@property (retain, nonatomic) NSTimer *controllerLoadTimer; // ivar: _controllerLoadTimer
@property (retain, nonatomic) NSTimer *controllerGlobalInitTimer; // ivar: _controllerGlobalInitTimer
@property (nonatomic) NSInteger numberOfControllerLoadFails; // ivar: _numberOfControllerLoadFails
@property (retain, nonatomic) SSAJSInterfaceHandler *jsInterfaceHandler; // ivar: _jsInterfaceHandler
@property (retain, nonatomic) SupersonicAdsViewController *viewController; // ivar: _viewController
@property (retain, nonatomic) ISNNativeSessionConfiguration *nativeSessionConfiguration; // ivar: _nativeSessionConfiguration
@property (retain) NSMutableArray *controllerCommandsQueue; // ivar: _controllerCommandsQueue
@property (retain, nonatomic) SupersonicAdsView *supersonicAdsView; // ivar: _supersonicAdsView
@property (weak, nonatomic) NSObject<SSAOfferWallDelegate> *offerWallDelegate; // ivar: _offerWallDelegate
@property (weak, nonatomic) NSObject<SuperSonicAdsDelegate> *superSonicAdsDelegate; // ivar: _superSonicAdsDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initInstance;
-(void)dealloc;
-(id)createwebViewControllerWithSize:(struct CGSize )arg0 ;
-(void)initControllerInternal:(BOOL)arg0 productionDebugMode:(BOOL)arg1 ;
-(void)downloadController;
-(id)controllerConfigMandatoryParams:(id)arg0 withError:(*id)arg1 ;
-(void)loadController;
-(void)controllerGlobalInitTimerFired:(id)arg0 ;
-(void)controllerLoadTimerFired:(id)arg0 ;
-(void)handleInitControllerCallbackWithSuccess:(BOOL)arg0 error:(id)arg1 ;
-(void)invokePendingCommands;
-(void)controllerFailedInitiatingWithError:(id)arg0 demandSourceName:(id)arg1 ;
-(void)runCommand:(id)arg0 andParameters:(id)arg1 successMethodName:(id)arg2 failMethodName:(id)arg3 decodeFirst:(BOOL)arg4 ;
-(void)dispatchCommandOnJavaScriptLayer:(id)arg0 ;
-(BOOL)controllerCommandSupportsQueue:(id)arg0 ;
-(void)initProduct:(NSUInteger)arg0 withParameters:(id)arg1 error:(id)arg2 demandSourceName:(id)arg3 ;
-(id)getInitProductCommandForType:(NSUInteger)arg0 ;
-(void)sendInitFailureForProduct:(NSUInteger)arg0 withError:(id)arg1 demandSourceName:(id)arg2 ;
-(void)setInitCalledFlagForProduct:(NSUInteger)arg0 isTrue:(BOOL)arg1 demandSourceName:(id)arg2 ;
-(void)initRewardedVideoWithApplicationKey:(id)arg0 userId:(id)arg1 demandSourceName:(id)arg2 delegate:(id)arg3 additionalParameters:(id)arg4 ;
-(void)initInterstitialWithApplicationKey:(id)arg0 userId:(id)arg1 demandSourceName:(id)arg2 delegate:(id)arg3 additionalParameters:(id)arg4 ;
-(void)initBannerWithApplicationKey:(id)arg0 userId:(id)arg1 demandSourceName:(id)arg2 delegate:(id)arg3 additionalParameters:(id)arg4 ;
-(void)loadBanner:(id)arg0 andParameters:(id)arg1 ;
-(void)reloadBanner:(id)arg0 ;
-(void)sendBannerLoadMessageToController:(id)arg0 ;
-(id)getExternalAdViewIdAndIncreaseAdViewCounter;
-(void)initOfferWallWithApplicationKey:(id)arg0 userId:(id)arg1 delegate:(id)arg2 additionalParameters:(id)arg3 ;
-(void)getOfferWallCreditsWithApplicationKey:(id)arg0 userId:(id)arg1 delegate:(id)arg2 ;
-(void)showOfferWallFromViewController:(id)arg0 parameters:(id)arg1 ;
-(void)showRewardedVideoFromViewController:(id)arg0 parameters:(id)arg1 ;
-(void)showInterstitialFromViewController:(id)arg0 parameters:(id)arg1 ;
-(void)loadInterstitialWithParameters:(id)arg0 ;
-(BOOL)isInterstitialAdAvailableWithDemandSourceName:(id)arg0 ;
-(void)setMediationStateForProductType:(id)arg0 withDemandSourceName:(id)arg1 withState:(NSInteger)arg2 ;
-(void)updateConsentInfo:(id)arg0 ;
-(id)orientationDataForProductType:(NSUInteger)arg0 ;
-(BOOL)handleControllerCallback:(id)arg0 navigationType:(NSInteger)arg1 ;
-(id)parseParametersToDictionary:(id)arg0 ;
-(BOOL)handleSecondaryCallbacks:(id)arg0 ;
-(void)handleSupersonicCallbackWithCommand:(id)arg0 andParameters:(id)arg1 withFullUrl:(id)arg2 ;
-(void)handleInitController:(id)arg0 ;
-(void)handleSetNativeSessionConfiguration:(id)arg0 ;
-(void)checkInstalledApps:(id)arg0 ;
-(void)handleInitRewardedVideoWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleShowRewardedVideo:(id)arg0 parameters:(id)arg1 ;
-(void)handleInitInterstitialWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleInitOfferWallWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleLoadInterstitial:(id)arg0 parameters:(id)arg1 ;
-(void)handleShowInterstitial:(id)arg0 parameters:(id)arg1 ;
-(void)handleShowOWWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleInitBannerWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleLoadBannerWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleAdUnitsReady:(id)arg0 ;
-(void)handleAdCredited:(id)arg0 ;
-(void)handleAdWindowsClosed:(id)arg0 ;
-(void)handleSetWebViewHidden:(id)arg0 ;
-(void)handleDisplayWebViewWithparameters:(id)arg0 ;
-(void)sendAdCreditedVerificationSuccess:(id)arg0 fail:(id)arg1 timeStamp:(id)arg2 ;
-(void)handleCallSupersonicAdsFunction:(id)arg0 parameters:(id)arg1 ;
-(id)getViewFromStringViewType:(id)arg0 viewUniqueId:(id)arg1 ;
-(CGFloat)getScreenRatioFromHybridViewDictionary:(id)arg0 useDefualtIfNotFound:(CGFloat)arg1 ;
-(void)showHybridViewControllerWithDictionary:(id)arg0 withProductType:(NSUInteger)arg1 ;
-(void)didDisplaySplitViewCtrlWithViewUniqueId:(id)arg0 ;
-(void)didHideSplitViewCtrlWithViewUniqueId:(id)arg0 ;
-(void)handleHybridViewRatioConstrains:(id)arg0 ;
-(void)preLoadAppPage:(id)arg0 ;
-(void)clearStoreKitAppPage:(id)arg0 ;
-(void)handleOpenUrl:(id)arg0 ;
-(void)didStartAppStoreInsideSessionForAppId:(id)arg0 andViewUniqueId:(id)arg1 ;
-(void)didFinishAppStoreInsideSession:(BOOL)arg0 forAppId:(id)arg1 andViewUniqueId:(id)arg2 ;
-(void)didLoadAppStoreInsideSession:(BOOL)arg0 forAppId:(id)arg1 andViewUniqueId:(id)arg2 ;
-(void)didShowAppStoreInsideForAppId:(id)arg0 andViewUniqueId:(id)arg1 ;
-(void)handleGetOrientation:(id)arg0 ;
-(void)handleGetAppOrientationData:(id)arg0 ;
-(void)handleSetBackgroundColor:(id)arg0 ;
-(void)handleSetUserUniqueId:(id)arg0 ;
-(void)handleGetUserUniqueId:(id)arg0 ;
-(void)handleGetUDIAWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleToggleUDIA:(id)arg0 ;
-(void)handleGetDeviceStatus:(id)arg0 ;
-(void)handleGetDeviceVolume:(id)arg0 ;
-(void)handleAllowFileAccessFromFileURLs:(id)arg0 ;
-(void)sendFailCallbackToControllerWithErrorMsg:(id)arg0 callbackName:(id)arg1 ;
-(void)handleGetDemandSourceState:(id)arg0 ;
-(void)handleGetApplicationInfo:(id)arg0 ;
-(void)handleGetBandwidth:(id)arg0 ;
-(void)handleGetUserData:(id)arg0 ;
-(void)handleSetUserDate:(id)arg0 ;
-(void)handleGetUserCreditsWithCommand:(id)arg0 parameters:(id)arg1 ;
-(void)handleSaveFile:(id)arg0 ;
-(void)handleDeleteFile:(id)arg0 ;
-(void)handleDeleteFolder:(id)arg0 ;
-(void)handleGetCachedFilesMap:(id)arg0 string:(id)arg1 ;
-(id)getKeyInDictionaryWithPrefix:(id)arg0 andPrefix:(id)arg1 ;
-(void)windowDidBecomeVisible:(id)arg0 ;
-(void)appDidEnterBackground:(id)arg0 ;
-(void)appWillEnterForeground:(id)arg0 ;
-(void)appWillResignActive:(id)arg0 ;
-(void)appDidBecomeActive:(id)arg0 ;
-(void)reachabilityChanged:(id)arg0 ;
-(void)audioHardwareRouteChanged:(id)arg0 ;
-(void)saveCurrentSession;
-(void)closeWebViewIsSecondaryWebview:(BOOL)arg0 withParametersDict:(id)arg1 ;
-(BOOL)isAnyViewPresented;
-(void)stopForceCloseTimerFromJsParams:(id)arg0 ;
-(id)getPresentedViewController;
-(BOOL)checkAndHandleAppStoreRedirectForCommand:(id)arg0 andFullUrl:(id)arg1 isSecondary:(BOOL)arg2 ;
-(void)image:(id)arg0 didFinishSavingWithError:(id)arg1 contextInfo:(*void)arg2 ;
-(void)loadSuccessfully:(id)arg0 ;
-(void)failedToLoadWithError:(id)arg0 webView:(id)arg1 ;
-(BOOL)shouldLoadRequestForWebview:(id)arg0 request:(id)arg1 navigationType:(NSInteger)arg2 ;
+(id)sharedInstance;
+(void)setControllerURL:(id)arg0 ;
+(void)setDebugMode:(NSInteger)arg0 ;
+(void)setControllerConfig:(id)arg0 ;
+(void)setStorekitTimeout:(id)arg0 ;
+(void)setUserGroup:(id)arg0 ;
+(id)getUserGroup;
+(id)getSDKVersion;


@end


#endif