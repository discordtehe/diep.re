// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONINTERSTITIALADRENDERER_H
#define GADMEDIATIONINTERSTITIALADRENDERER_H


#import <Foundation/Foundation.h>

@class GADMediatedAdRenderer;
@class GADInterstitialAd;
@class GADMediatedIntermission;
@protocol GADAdPresenting;

@interface GADMediationInterstitialAdRenderer : GADMediatedAdRenderer <GADAdPresenting>

 {
    GADInterstitialAd *_interstitialAd;
    atomic_flag _clickEventReceived;
    id *_renderCompletionHandler;
    GADMediatedIntermission *_intermission;
    atomic_flag _adLoadCompleted;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)adapterCompletedLoadWithError:(id)arg0 ;
-(void)reportClick;
-(id)viewControllerForPresentingModalView;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;
-(void)adapterDidReceiveInterstitial:(id)arg0 ;
-(void)adapter:(id)arg0 didFailAd:(id)arg1 ;
-(void)adapterWillPresentInterstitial:(id)arg0 ;
-(void)adapterWillDismissInterstitial:(id)arg0 ;
-(void)adapterDidDismissInterstitial:(id)arg0 ;
-(void)adapterWillLeaveApplication:(id)arg0 ;
-(void)adapterDidGetAdClick:(id)arg0 ;


@end


#endif