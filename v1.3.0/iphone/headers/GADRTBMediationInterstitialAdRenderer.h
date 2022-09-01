// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRTBMEDIATIONINTERSTITIALADRENDERER_H
#define GADRTBMEDIATIONINTERSTITIALADRENDERER_H


#import <Foundation/Foundation.h>

@class GADInterstitialAd;
@class GADMediationInterstitialAdConfiguration;
@class GADMediatedIntermission;
@protocol GADAdPresenting;
@protocol GADMediationInterstitialAdEventDelegate;
@protocol GADAdRendering;
@protocol GADMediationAdapter;
@protocol GADMediationInterstitialAd;

@interface GADRTBMediationInterstitialAdRenderer : NSObject <GADAdPresenting, GADMediationInterstitialAdEventDelegate, GADAdRendering>

 {
    id<GADMediationAdapter> *_loadingAdapter;
    GADInterstitialAd *_interstitialAd;
    atomic_flag _clickEventReceived;
    id<GADMediationInterstitialAd> *_mediatedAd;
    GADMediationInterstitialAdConfiguration *_mediatedConfiguration;
    GADMediatedIntermission *_intermission;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(id)adEventDelegateForAdapter:(id)arg0 completedLoadWithAd:(id)arg1 adConfiguration:(struct NSDictionary *)arg2 transaction:(id)arg3 renderCompletionHandler:(id)arg4 ;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;
-(void)reportImpression;
-(void)reportClick;
-(void)willPresentFullScreenView;
-(void)willDismissFullScreenView;
-(void)didDismissFullScreenView;
-(void)willBackgroundApplication;
-(void)didFailToPresentWithError:(id)arg0 ;


@end


#endif