// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIEWINTERNAL_H
#define FBADVIEWINTERNAL_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdView;
@class FBAdCommandProcessor;
@class FBAdViewabilityValidator;
@class FBAdPlacementDefinition;
@class FBHTMLAdDataModel;
@protocol FBAdCommandProcessorDelegate;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBAdContentContainerDelegate;
@protocol FBAdViewNavigationPolicy;
@protocol FBAdContentContainer;
@protocol FBAdViewInternalDelegate;

@interface FBAdViewInternal : FBAdView <FBAdCommandProcessorDelegate, FBAdViewabilityValidatorDelegate, FBAdContentContainerDelegate, FBAdViewNavigationPolicy>

 {
    BOOL _adValid;
}


@property (nonatomic) BOOL isInterstitial; // ivar: _isInterstitial
@property (nonatomic) BOOL forceUIWebView; // ivar: _forceUIWebView
@property (nonatomic) BOOL isImpressionSent; // ivar: _isImpressionSent
@property (retain, nonatomic) FBAdCommandProcessor *commandHandler; // ivar: _commandHandler
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (retain, nonatomic) NSObject<FBAdContentContainer> *adContentContainer; // ivar: _adContentContainer
@property (nonatomic) FBAdSize adSizeType; // ivar: _adSizeType
@property (weak, nonatomic) NSObject<FBAdViewInternalDelegate> *internalDelegate; // ivar: _internalDelegate
@property (readonly, nonatomic, getter=isAdValid) BOOL adValid;
@property (nonatomic, getter=isModalViewPresenting) BOOL modalViewPresenting; // ivar: _modalViewPresenting
@property (nonatomic, getter=isMarkupImpressionEventReceived) BOOL markupImpressionEventReceived; // ivar: _markupImpressionEventReceived
@property (nonatomic) NSInteger orientation; // ivar: _orientation
@property (weak, nonatomic) UIViewController *rootViewControllerInternal; // ivar: _rootViewControllerInternal
@property (readonly, nonatomic) FBHTMLAdDataModel *offsiteAd;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(id)initWithAdData:(id)arg0 placementDefinition:(id)arg1 adSize:(struct FBAdSize )arg2 rootViewController:(id)arg3 ;
-(void)loadAd;
-(void)dealloc;
-(struct CGRect )validRectForFrame:(struct CGRect )arg0 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)createAdContentContainer;
-(void)openAdChoicesURL:(id)arg0 adDataModel:(id)arg1 ;
-(void)ensureViewabilityValidation;
-(void)disableViewabilityValidation;
-(void)loadAdFromMarkup:(id)arg0 activationCommand:(id)arg1 orientation:(NSInteger)arg2 ;
-(void)didMoveToSuperview;
-(BOOL)processRequestURL:(id)arg0 adDataModel:(id)arg1 withExtraData:(id)arg2 ;
-(BOOL)processFBAdSchemeLink:(id)arg0 adDataModel:(id)arg1 withExtraData:(id)arg2 ;
-(void)handleClickWithExtraData:(id)arg0 ;
-(void)finishHandlingClick;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(id)commandProcessorTouchInformation:(id)arg0 ;
-(void)adDidLoad;
-(void)adWillLogImpression;
-(void)adDidLogClick;
-(void)adDidFinishHandlingClick;
-(void)adDidFailToLoadWithError:(id)arg0 ;
-(id)contentContainerViewabilityValidator;


@end


#endif