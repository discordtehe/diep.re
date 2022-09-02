// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADENDCARDVIEWCONTROLLER_H
#define FBADENDCARDVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdEndCardAppStoreView;
@class FBAdEndCardScreenshotView;
@class FBAdEndCardNoMediaView;
@class FBInterstitialAdToolbarView;
@class FBAdReportingCoordinator;
@class FBAdDetailsAndCTAButtonContainerView;
@protocol FBAdReportingCoordinatorDelegate;
@protocol FBAdEndCardScreenshotViewDelegate;
@protocol FBAdEndCardNoMediaViewDelegate;
@protocol FBAdEndCardAppStoreViewDelegate;
@protocol FBAdGoToEndcardTransitionable;
@protocol FBAdEndCardViewControllerDelegate;

@interface FBAdEndCardViewController : UIViewController <FBAdReportingCoordinatorDelegate, FBAdEndCardScreenshotViewDelegate, FBAdEndCardNoMediaViewDelegate, FBAdEndCardAppStoreViewDelegate, FBAdGoToEndcardTransitionable>



@property (retain, nonatomic) FBAdEndCardAppStoreView *endCardAppStoreView; // ivar: _endCardAppStoreView
@property (weak, nonatomic) FBAdEndCardScreenshotView *endCardScreenshotView; // ivar: _endCardScreenshotView
@property (weak, nonatomic) FBAdEndCardNoMediaView *endCardNoMediaView; // ivar: _endCardNoMediaView
@property (retain, nonatomic) FBInterstitialAdToolbarView *toolbarView; // ivar: _toolbarView
@property (nonatomic) BOOL isAutoRotateEnabled; // ivar: _isAutoRotateEnabled
@property (nonatomic) BOOL hasAppearedBefore; // ivar: _hasAppearedBefore
@property (nonatomic) BOOL useNewToolbar; // ivar: _useNewToolbar
@property (nonatomic) BOOL isAppStoreEndCard; // ivar: _isAppStoreEndCard
@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (copy, nonatomic) NSString *token; // ivar: _token
@property (nonatomic) BOOL shouldFadeInCloseButton; // ivar: _shouldFadeInCloseButton
@property (weak, nonatomic) NSObject<FBAdEndCardViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, weak, nonatomic) FBAdDetailsAndCTAButtonContainerView *adDetailsAndCTAButtonContainerView;


-(id)initWithPlacementID:(id)arg0 adDataModel:(id)arg1 useNewLayout:(BOOL)arg2 useNewToolbar:(BOOL)arg3 rootViewController:(id)arg4 ;
-(void)dealloc;
-(BOOL)prefersStatusBarHidden;
-(NSUInteger)supportedInterfaceOrientations;
-(NSInteger)preferredInterfaceOrientationForPresentation;
-(void)viewWillLayoutSubviews;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)setupToolbarViewWithRootViewController:(id)arg0 adDataModel:(id)arg1 ;
-(void)hideCloseButton;
-(void)fadeInCloseButtonWithDuration:(CGFloat)arg0 delay:(CGFloat)arg1 ;
-(void)endCardScreenshotViewClicked:(id)arg0 ;
-(void)endCardScreenshotViewWillClose:(id)arg0 ;
-(void)endCardScreenshotView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)endCardScreenshotViewDidTerminate:(id)arg0 ;
-(void)endCardNoMediaViewClicked:(id)arg0 ;
-(void)endCardNoMediaViewWillClose:(id)arg0 ;
-(void)endCardNoMediaView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)endCardNoMediaViewDidTerminate:(id)arg0 ;
-(void)endCardAppStoreView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)endCardAppStoreViewWillClose:(id)arg0 ;
-(void)adReportingCoordinatorDidCompleteFlow:(id)arg0 reason:(id)arg1 flowType:(NSInteger)arg2 ;
-(void)adReportingCoordinatorDidCancelFlow:(id)arg0 ;
-(void)setupNotifications;


@end


#endif