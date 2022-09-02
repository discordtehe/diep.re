// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADENDCARDNOMEDIAVIEW_H
#define FBADENDCARDNOMEDIAVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdBlurredOverlayView;
@class FBAdCTAButton;
@class FBAdLabel;
@class FBAdCommandProcessor;
@class FBInterstitialAdToolbarView;
@class FBNativeAdDataModel;
@protocol FBAdCommandProcessorDelegate;
@protocol FBInterstitialAdToolbarViewDelegate;
@protocol FBAdFunnelLoggingDelegate;
@protocol FBAdEndCardNoMediaViewDelegate;

@interface FBAdEndCardNoMediaView : UIView <FBAdCommandProcessorDelegate, FBInterstitialAdToolbarViewDelegate>



@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (weak, nonatomic) UIView *adDetailsView; // ivar: _adDetailsView
@property (weak, nonatomic) FBAdBlurredOverlayView *blurredBackgroundImageView; // ivar: _blurredBackgroundImageView
@property (weak, nonatomic) FBAdCTAButton *callToActionButton; // ivar: _callToActionButton
@property (weak, nonatomic) UIImageView *iconView; // ivar: _iconView
@property (weak, nonatomic) FBAdLabel *titleView; // ivar: _titleView
@property (weak, nonatomic) FBAdLabel *subtitleView; // ivar: _subtitleView
@property (retain, nonatomic) FBAdCommandProcessor *commandHandler; // ivar: _commandHandler
@property (nonatomic) BOOL isAutoRotateEnabled; // ivar: _isAutoRotateEnabled
@property (weak, nonatomic) FBInterstitialAdToolbarView *toolbarView; // ivar: _toolbarView
@property (nonatomic, getter=isEndcardAnimated) BOOL endcardAnimated; // ivar: _endcardAnimated
@property (nonatomic) CGFloat firstImpressionTime; // ivar: _firstImpressionTime
@property (readonly, nonatomic) FBNativeAdDataModel *adDataModel; // ivar: _adDataModel
@property (weak, nonatomic) NSObject<FBAdFunnelLoggingDelegate> *funnelLoggerDelegate; // ivar: _funnelLoggerDelegate
@property (weak, nonatomic) NSObject<FBAdEndCardNoMediaViewDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (nonatomic, getter=isModalViewPresenting) BOOL modalViewPresenting; // ivar: _modalViewPresenting
@property (copy, nonatomic) id *onInfo; // ivar: _onInfo
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(id)initWithPlacementID:(id)arg0 adDataModel:(id)arg1 rootViewController:(id)arg2 toolbarView:(id)arg3 ;
-(void)dealloc;
-(void)didMoveToSuperview;
-(void)layoutSubviews;
-(void)layoutBackgroundViewWithBounds:(struct CGRect )arg0 ;
-(void)layoutToolbarViewWithInsets:(struct UIEdgeInsets )arg0 withBounds:(struct CGRect )arg1 ;
-(void)layoutAdMetadataViewForOrientation:(BOOL)arg0 withInsets:(struct UIEdgeInsets )arg1 withBounds:(struct CGRect )arg2 ;
-(void)addToolbarView:(id)arg0 ;
-(void)addBlurredBackgroundImageView;
-(void)addAdDetailsView;
-(void)addIconView;
-(void)addTitleView;
-(void)addCallToActionButton;
-(void)adClicked:(id)arg0 withEvent:(id)arg1 ;
-(void)processCommand:(id)arg0 withExtraData:(id)arg1 ;
-(void)animateViews;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(id)commandProcessorTouchInformation:(id)arg0 ;
-(void)adDidLogClick;
-(void)adDidTerminate;
-(void)interstitialAdToolbarDidClose:(id)arg0 withTouchData:(id)arg1 ;
-(void)interstitialAdToolbarDidTapAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidCloseAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidTapAdInfo:(id)arg0 ;
-(BOOL)processFBAdSchemeLink:(id)arg0 adDataModel:(id)arg1 withExtraData:(id)arg2 ;
-(void)handleClickWithExtraData:(id)arg0 ;


@end


#endif