// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOADVIEWCONTROLLER_H
#define FBADVIDEOADVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdVideoAdView;
@class FBAdReportingCoordinator;
@class FBAdPlacementDefinition;
@class FBAdViewabilityValidator;
@class FBAdFunnelLogger;
@class FBAdDetailsAndCTAButtonContainerView;
@class FBInterstitialAdToolbarView;
@protocol FBAdReportingCoordinatorDelegate;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBAdVideoAdViewDelegate;
@protocol FBAdGoToEndcardTransitionable;
@protocol FBAdCardToFullscreenTransitionable;
@protocol FBAdIntroCardTransitionable;
@protocol FBAdVideoAdViewControllerDelegate;

@interface FBAdVideoAdViewController : UIViewController <FBAdReportingCoordinatorDelegate, FBAdViewabilityValidatorDelegate, FBAdVideoAdViewDelegate, FBAdGoToEndcardTransitionable, FBAdCardToFullscreenTransitionable, FBAdIntroCardTransitionable>



@property (weak, nonatomic) FBAdVideoAdView *videoAdView; // ivar: _videoAdView
@property (nonatomic) BOOL isAutoRotateEnabled; // ivar: _isAutoRotateEnabled
@property (nonatomic) BOOL isLoaded; // ivar: _isLoaded
@property (nonatomic) BOOL hasAppearedBefore; // ivar: _hasAppearedBefore
@property (nonatomic) BOOL processCommandOnVideoDoneOrBecomingSkippable; // ivar: _processCommandOnVideoDoneOrBecomingSkippable
@property (nonatomic) BOOL autoplay; // ivar: _autoplay
@property (nonatomic) BOOL toldDelegateToLogImpression; // ivar: _toldDelegateToLogImpression
@property BOOL videoReadyToDisplay; // ivar: _videoReadyToDisplay
@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (copy, nonatomic) NSString *token; // ivar: _token
@property (weak, nonatomic) FBAdFunnelLogger *funnelLogger; // ivar: _funnelLogger
@property (nonatomic, getter=isLoggedShowOrFailure) BOOL loggedShowOrFailure; // ivar: _loggedShowOrFailure
@property (weak, nonatomic) NSObject<FBAdVideoAdViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, weak, nonatomic) FBAdDetailsAndCTAButtonContainerView *adDetailsAndCTAButtonContainerView;
@property (readonly, nonatomic) UIView *mainView;
@property (readonly, nonatomic) UIImage *targetImage;
@property (readonly, nonatomic) UIView *targetView;
@property (readonly, nonatomic) CGRect targetFrame;
@property (readonly, weak, nonatomic) FBInterstitialAdToolbarView *toolbarView;


-(id)initWithPlacementID:(id)arg0 adDataModel:(id)arg1 placementDefinition:(id)arg2 useNewLayout:(BOOL)arg3 useNewToolbar:(BOOL)arg4 showCta:(BOOL)arg5 autoplay:(BOOL)arg6 isRewardedAd:(BOOL)arg7 forcedViewTime:(struct ? )arg8 rootViewController:(id)arg9 ;
-(void)dealloc;
-(BOOL)prefersStatusBarHidden;
-(NSUInteger)supportedInterfaceOrientations;
-(NSInteger)preferredInterfaceOrientationForPresentation;
-(void)setupViewabilityValidation;
-(void)stopViewabilityValidation;
-(void)tellDelegateToLogImpressionIfCriteriasAreMet;
-(BOOL)criteriasForLoggingImpressionForVideoIsMet;
-(void)showWaitingToast;
-(void)viewWillLayoutSubviews;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)viewWillTransitionToSize:(struct CGSize )arg0 withTransitionCoordinator:(id)arg1 ;
-(void)videoAdViewDidLoad:(id)arg0 ;
-(void)videoAdView:(id)arg0 didEndWithError:(id)arg1 ;
-(void)videoAdView:(id)arg0 skippedWithTouchData:(id)arg1 ;
-(void)videoAdView:(id)arg0 didTouchCTAWithEvent:(id)arg1 ;
-(void)videoAdViewIsSkippable:(id)arg0 ;
-(void)adReportingCoordinatorDidCompleteFlow:(id)arg0 reason:(id)arg1 flowType:(NSInteger)arg2 ;
-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(id)arg0 ;
-(void)adReportingCoordinatorDidCancelFlow:(id)arg0 ;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;


@end


#endif