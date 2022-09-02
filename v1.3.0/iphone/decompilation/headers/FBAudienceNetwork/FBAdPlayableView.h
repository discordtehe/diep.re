// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPLAYABLEVIEW_H
#define FBADPLAYABLEVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdCommandProcessor;
@class FBAdTimer;
@class FBAdViewabilityValidator;
@class FBAdPlacementDefinition;
@class FBInterstitialAdToolbarView;
@class FBAdLabel;
@class FBAdVideoCallToActionButton;
@class FBNativeAdDataModel;
@protocol FBAdCommandProcessorDelegate;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBAdViewNavigationPolicy;
@protocol FBInterstitialAdToolbarViewDelegate;
@protocol FBAdContentContainerDelegate;
@protocol FBAdContentContainer;
@protocol FBAdPlayableViewDelegate;

@interface FBAdPlayableView : UIView <FBAdCommandProcessorDelegate, FBAdViewabilityValidatorDelegate, FBAdViewNavigationPolicy, FBInterstitialAdToolbarViewDelegate, FBAdContentContainerDelegate>



@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (nonatomic, getter=isImpressionSent) BOOL impressionSent; // ivar: _impressionSent
@property (nonatomic) BOOL ctaClicked; // ivar: _ctaClicked
@property (retain, nonatomic) FBAdCommandProcessor *commandHandler; // ivar: _commandHandler
@property (retain, nonatomic) NSObject<FBAdContentContainer> *contentContainer; // ivar: _contentContainer
@property (retain, nonatomic) FBAdTimer *toolbarTimer; // ivar: _toolbarTimer
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (weak, nonatomic) FBInterstitialAdToolbarView *toolbarView; // ivar: _toolbarView
@property (nonatomic) CGFloat elapsedTime; // ivar: _elapsedTime
@property (retain, nonatomic) UIView *waitingToast; // ivar: _waitingToast
@property (weak, nonatomic) UIView *adDetailsView; // ivar: _adDetailsView
@property (weak, nonatomic) FBAdLabel *subtitleView; // ivar: _subtitleView
@property (weak, nonatomic) FBAdLabel *titleView; // ivar: _titleView
@property (weak, nonatomic) FBAdVideoCallToActionButton *callToActionButton; // ivar: _callToActionButton
@property (nonatomic) CGFloat callToActionButtonShownTime; // ivar: _callToActionButtonShownTime
@property (weak, nonatomic) NSObject<FBAdPlayableViewDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) FBNativeAdDataModel *nativeAdDataModel; // ivar: _nativeAdDataModel
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (nonatomic, getter=isModalViewPresenting) BOOL modalViewPresenting; // ivar: _modalViewPresenting
@property (readonly, nonatomic, getter=isMarkupImpressionEventReceived) BOOL markupImpressionEventReceived; // ivar: _markupImpressionEventReceived
@property (readonly, nonatomic, getter=isTerminated) BOOL terminated;
@property (copy, nonatomic) id *onInfo; // ivar: _onInfo
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(id)initWithPlacementID:(id)arg0 adData:(id)arg1 placementDefinition:(id)arg2 rootViewController:(id)arg3 ;
-(void)dealloc;
-(void)setupToolbarTimer;
-(void)removeToolbarTimer;
-(void)layoutSubviews;
-(void)layoutToolbarViewWithInsets:(struct UIEdgeInsets )arg0 withBounds:(struct CGRect )arg1 ;
-(void)layoutWebViewWithInsets:(struct UIEdgeInsets )arg0 withBounds:(struct CGRect )arg1 ;
-(void)layoutCallToActionButtonWithInsets:(struct UIEdgeInsets )arg0 withBounds:(struct CGRect )arg1 ;
-(void)layoutMetadataViewWithInsets:(struct UIEdgeInsets )arg0 withBounds:(struct CGRect )arg1 ;
-(void)setFrameOnShow:(struct CGRect )arg0 ;
-(void)setMarkup:(id)arg0 ;
-(void)updateWaitingTime;
-(id)getDelayClickText:(NSInteger)arg0 ;
-(void)updateElapsedTime;
-(struct ? )currentTime;
-(BOOL)forcedTimeFinished;
-(void)addToolbarView;
-(void)addWebView;
-(void)animateAppearance;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(id)commandProcessorTouchInformation:(id)arg0 ;
-(void)setupNotifications;
-(void)ensureViewabilityValidation;
-(void)disableViewabilityValidation;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;
-(void)adDidLoad;
-(void)adWillLogImpression;
-(void)adCTAClick;
-(void)adNativeCTAClick:(id)arg0 withEvent:(id)arg1 ;
-(BOOL)processAccidentalClicksWithExtraData:(id)arg0 withFirstImpressionTime:(CGFloat)arg1 ;
-(void)adCTAClick:(id)arg0 ;
-(void)processCtaClick:(BOOL)arg0 extraData:(id)arg1 ;
-(void)showWaitingToast;
-(void)showCallToActionButton;
-(void)adDidLogClick;
-(void)adDidFailToLoadWithError:(id)arg0 ;
-(void)adDidTerminate;
-(BOOL)processRequestURL:(id)arg0 adDataModel:(id)arg1 withExtraData:(id)arg2 ;
-(void)interstitialAdToolbarDidClose:(id)arg0 withTouchData:(id)arg1 ;
-(void)interstitialAdToolbarDidTapAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidCloseAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidTapAdInfo:(id)arg0 ;


@end


#endif