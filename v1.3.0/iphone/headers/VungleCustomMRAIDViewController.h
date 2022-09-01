// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLECUSTOMMRAIDVIEWCONTROLLER_H
#define VUNGLECUSTOMMRAIDVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@class VungleMRAIDViewController;
@class VunglePlacement;
@class VungleMRAIDController;
@class VungleReportIncentivizedController;
@class VNGStoreKitProductViewProvider;
@class VungleTapPassingView;
@class VunglePublisherInformationProvider;
@protocol VungleMRAIDControllerDelegate;
@protocol VNGStoreKitProductViewProviderDelegate;
@protocol VungleAdDelegate;

@interface VungleCustomMRAIDViewController : VungleMRAIDViewController <VungleMRAIDControllerDelegate, VNGStoreKitProductViewProviderDelegate>



@property (retain, nonatomic) VunglePlacement *placement; // ivar: _placement
@property (retain, nonatomic) VungleMRAIDController *MRAIDController; // ivar: _MRAIDController
@property (copy, nonatomic) id *completionBlock; // ivar: _completionBlock
@property (weak, nonatomic) UIView *container; // ivar: _container
@property (weak, nonatomic) VungleReportIncentivizedController *reportIncentivizedController; // ivar: _reportIncentivizedController
@property (retain, nonatomic) VNGStoreKitProductViewProvider *productViewProvider; // ivar: _productViewProvider
@property (retain, nonatomic) SKStoreProductViewController *productViewController; // ivar: _productViewController
@property (nonatomic, getter=isLoadingProductView) BOOL loadingProductView; // ivar: _loadingProductView
@property (nonatomic, getter=isAdPaused) BOOL adPaused; // ivar: _adPaused
@property (retain, nonatomic) NSTimer *flexCloseTimer; // ivar: _flexCloseTimer
@property (nonatomic) CGFloat flexCloseTimeValue; // ivar: _flexCloseTimeValue
@property (nonatomic) CGFloat flexCloseTimerStartTimestamp; // ivar: _flexCloseTimerStartTimestamp
@property (nonatomic) CGFloat flexCloseTimerElapsedTime; // ivar: _flexCloseTimerElapsedTime
@property (retain, nonatomic) VungleTapPassingView *tapPassingView; // ivar: _tapPassingView
@property (retain, nonatomic) NSMutableArray *adViewConstraints; // ivar: _adViewConstraints
@property (weak, nonatomic) NSObject<VungleAdDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) VunglePublisherInformationProvider *publisherInformation; // ivar: _publisherInformation
@property (retain, nonatomic) CADisplayLink *link; // ivar: _link
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPlacement:(id)arg0 frame:(struct CGRect )arg1 viewController:(id)arg2 reportIncentivizedController:(id)arg3 ;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)updateViewConstraints;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewDidLoad;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(void)didReceiveMemoryWarning;
-(void)dealloc;
-(void)activateDisplayLinkViewabilityTracking;
-(void)adViewabilityChange:(id)arg0 ;
-(void)pauseAdExperience:(BOOL)arg0 ;
-(void)resumeAdExperience;
-(void)closeFlexAdExperienceFromTimer;
-(void)closeFlexAdExperience:(BOOL)arg0 ;
-(void)loadAdWithPlayOptions:(id)arg0 completionBlock:(id)arg1 ;
-(void)setupAutoLayoutConstraintsForAdContainer:(id)arg0 ;
-(void)appWillResignActive:(id)arg0 ;
-(void)appDidBecomeActive:(id)arg0 ;
-(void)appWillEnterBackground:(id)arg0 ;
-(void)appWillEnterForeground:(id)arg0 ;
-(void)viewWillTransitionToSize:(struct CGSize )arg0 withTransitionCoordinator:(id)arg1 ;
-(void)deviceOrientationChangeNotification:(id)arg0 ;
-(void)rotate;
-(void)didPresentInterstitialAd;
-(BOOL)prefersStatusBarHidden;
-(id)controllerToPresentModalAdView;
-(void)vungleMRAIDController:(id)arg0 didLoadAdInContainerView:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 didFailToLoadAd:(id)arg1 error:(id)arg2 ;
-(void)vungleMRAIDController:(id)arg0 setOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(void)applyInterfaceOrientationCorrectionWithMask:(NSUInteger)arg0 ;
-(void)vungleMRAIDController:(id)arg0 executeRequestWithTPATURLArray:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 prepareStoreViewWithAppStoreParams:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 expandWith:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 resizeWith:(id)arg1 ;
-(void)vungleMRAIDControllerWillStartAdExperienceWithReportable:(id)arg0 ;
-(void)vungleMRAIDControllerWillCloseAdExperienceWithReportable:(id)arg0 ;
-(void)vungleMRAIDControllerSuccessfulView:(BOOL)arg0 reportable:(id)arg1 ;
-(void)vungleMRAIDControllerDidCloseAdExperienceWithReportable:(id)arg0 ;
-(void)vungleMRAIDControllerIsEnteringBackgroundWithReportable:(id)arg0 ;
-(void)productViewControllerDidDismiss:(id)arg0 ;
-(void)productViewControllerLoadingDidFailWithError:(id)arg0 ;
+(BOOL)validateFlexContainerSize:(struct CGSize )arg0 error:(*id)arg1 ;


@end


#endif