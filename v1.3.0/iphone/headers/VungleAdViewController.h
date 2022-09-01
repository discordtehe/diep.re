// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADVIEWCONTROLLER_H
#define VUNGLEADVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleVideoPlayer;
@class VunglePostRollWebView;
@class VunglePlacement;
@class VungleLegacyAdReport;
@class VungleReportAdController;
@class VungleReportIncentivizedController;
@class VNGUserConsentInfoModel;
@class VNGStoreKitProductViewProvider;
@protocol VNGStoreKitProductViewProviderDelegate;
@protocol VungleAdDelegate;

@interface VungleAdViewController : UIViewController <VNGStoreKitProductViewProviderDelegate>

 {
    BOOL _didPlayOnce;
    CGFloat _adStart;
}


@property (copy) NSNumber *appStoreId; // ivar: _appStoreId
@property BOOL statusBarHidden; // ivar: _statusBarHidden
@property BOOL willShowProductView; // ivar: _willShowProductView
@property BOOL firstView; // ivar: _firstView
@property (retain) NSDictionary *eventsDisplayed; // ivar: _eventsDisplayed
@property (copy, nonatomic) NSDictionary *events; // ivar: _events
@property CGFloat timeViewed; // ivar: _timeViewed
@property CGFloat videoLength; // ivar: _videoLength
@property BOOL finished; // ivar: _finished
@property BOOL storeLoaded; // ivar: _storeLoaded
@property BOOL removeLastBundle; // ivar: _removeLastBundle
@property BOOL ctaClicked; // ivar: _ctaClicked
@property BOOL isOpenAppStore; // ivar: _isOpenAppStore
@property (retain, nonatomic) VungleVideoPlayer *videoPlayer; // ivar: _videoPlayer
@property (retain, nonatomic) VunglePostRollWebView *webView; // ivar: _webView
@property (retain, nonatomic) VunglePlacement *placement; // ivar: _placement
@property (weak, nonatomic) NSObject<VungleAdDelegate> *interstitialAdDelegate; // ivar: _interstitialAdDelegate
@property (retain, nonatomic) VungleLegacyAdReport *report; // ivar: _report
@property (weak, nonatomic) VungleReportAdController *reportAdController; // ivar: _reportAdController
@property (weak, nonatomic) VungleReportIncentivizedController *reportIncentivizedController; // ivar: _reportIncentivizedController
@property (nonatomic) NSUInteger supportedOrientations; // ivar: _supportedOrientations
@property (retain, nonatomic) UIAlertController *consentAlertController; // ivar: _consentAlertController
@property (retain, nonatomic) VNGUserConsentInfoModel *consentInfo; // ivar: _consentInfo
@property (getter=isConsentRequired) BOOL consentRequired; // ivar: _consentRequired
@property (getter=isConsentDialogRequired) BOOL consentDialogRequired; // ivar: _consentDialogRequired
@property (copy, nonatomic) NSString *consentStatus; // ivar: _consentStatus
@property (retain, nonatomic) NSDictionary *storeOptions; // ivar: _storeOptions
@property (retain, nonatomic) VNGStoreKitProductViewProvider *storeProvider; // ivar: _storeProvider
@property (nonatomic) BOOL videoIsPlaying; // ivar: _videoIsPlaying
@property (copy, nonatomic) id *doneWithAdBlock; // ivar: _doneWithAdBlock
@property (nonatomic) BOOL validCTAURLResolved; // ivar: _validCTAURLResolved


-(id)initWithPlacement:(id)arg0 reportAdController:(id)arg1 videoPlayer:(id)arg2 playOptions:(id)arg3 interstitialAdDelegate:(id)arg4 reportIncentivizedController:(id)arg5 configController:(id)arg6 ;
-(BOOL)incentivized;
-(void)dealloc;
-(id)initWithNibName:(id)arg0 bundle:(id)arg1 ;
-(BOOL)prefersStatusBarHidden;
-(BOOL)shouldAutorotateToInterfaceOrientation:(NSInteger)arg0 ;
-(NSUInteger)supportedInterfaceOrientations;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)finishAdView:(BOOL)arg0 ;
-(void)didReceiveMemoryWarning;
-(void)viewWillTransitionToSize:(struct CGSize )arg0 withTransitionCoordinator:(id)arg1 ;
-(void)addClickSequenceToReport:(id)arg0 ;
-(void)vungleVideoPlayerDidFinish:(id)arg0 ;
-(void)videoCTAClicked:(id)arg0 ;
-(void)videoActionButtonClicked:(id)arg0 withName:(id)arg1 ;
-(void)updateReportAd;
-(void)updateLatestPlayInfo;
-(void)sendReportIncentivized;
-(void)dispatchEventNamed:(id)arg0 subCategory:(id)arg1 max:(int)arg2 ;
-(void)resetTpatEventCount:(id)arg0 subCategory:(id)arg1 ;
-(void)setUpConsentAlert;
-(void)updateConsentStatus;
-(id)playStateWithPlayer:(id)arg0 ;
-(id)viewProgressWithPlayer:(id)arg0 userAction:(id)arg1 ;
-(BOOL)isAdSuccessfullyViewed;
-(void)dispatchEventURLs:(id)arg0 ;
-(id)legacyAd;
-(BOOL)presentAppStoreView;
-(void)openProductInBrowser:(id)arg0 ;
-(void)presentStoreDelayed:(id)arg0 ;
-(void)productViewControllerDidDismiss:(id)arg0 ;
-(void)productViewControllerBecameReady;
-(void)productViewControllerLoadingDidFailWithError:(id)arg0 ;
-(void)vunglePostRollAction:(int)arg0 ;
-(void)updateViewProgressWithPlayer:(id)arg0 ;
-(void)generateMoatAdIdentifiers;
-(void)isAdViewable:(BOOL)arg0 notificationName:(id)arg1 ;
-(BOOL)isVersionMatching:(id)arg0 ;
-(void)appDidEnterBackground:(id)arg0 ;
-(void)appWillEnterForeground:(id)arg0 ;
-(void)appWillResignActive:(id)arg0 ;
-(void)appDidBecomeActive:(id)arg0 ;
+(id)filteredVersions;


@end


#endif