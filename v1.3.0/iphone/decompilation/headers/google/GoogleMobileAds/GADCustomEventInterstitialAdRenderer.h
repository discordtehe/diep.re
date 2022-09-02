// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCUSTOMEVENTINTERSTITIALADRENDERER_H
#define GADCUSTOMEVENTINTERSTITIALADRENDERER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADServerTransaction;
@class GADInterstitialAd;
@class GADMediatedIntermission;
@protocol GADCustomEventInterstitialDelegate;
@protocol GADAdPresenting;
@protocol GADAdRendering;
@protocol GADCustomEventInterstitial;

@interface GADCustomEventInterstitialAdRenderer : NSObject <GADCustomEventInterstitialDelegate, GADAdPresenting, GADAdRendering>

 {
    GADServerTransaction *_transaction;
    NSDictionary *_adConfiguration;
    id<GADCustomEventInterstitial> *_customEventInterstitial;
    id *_renderCompletionHandler;
    GADInterstitialAd *_interstitialAd;
    atomic_flag _clickEventReceived;
    GADMediatedIntermission *_intermission;
    atomic_flag _adLoadCompleted;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)customEventCompletedLoadWithInterstitial:(id)arg0 error:(id)arg1 ;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;
-(void)customEventInterstitialDidReceiveAd:(id)arg0 ;
-(void)customEventInterstitial:(id)arg0 didFailAd:(id)arg1 ;
-(void)customEventInterstitialWasClicked:(id)arg0 ;
-(void)customEventInterstitialWillPresent:(id)arg0 ;
-(void)customEventInterstitialWillDismiss:(id)arg0 ;
-(void)customEventInterstitialDidDismiss:(id)arg0 ;
-(void)customEventInterstitialWillLeaveApplication:(id)arg0 ;
-(void)customEventInterstitial:(id)arg0 didReceiveAd:(id)arg1 ;


@end


#endif