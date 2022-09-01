// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPGOOGLEADMOBINTERSTITIALCUSTOMEVENT_H
#define MPGOOGLEADMOBINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPInterstitialCustomEvent;
@class GADInterstitial;
@protocol GADInterstitialDelegate;

@interface MPGoogleAdMobInterstitialCustomEvent : MPInterstitialCustomEvent <GADInterstitialDelegate>



@property (retain, nonatomic) GADInterstitial *interstitial; // ivar: _interstitial
@property (copy, nonatomic) NSString *admobAdUnitId; // ivar: _admobAdUnitId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestInterstitialWithCustomEventInfo:(id)arg0 ;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
-(void)dealloc;
-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)interstitialDidReceiveAd:(id)arg0 ;
-(void)interstitial:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)interstitialWillPresentScreen:(id)arg0 ;
-(void)interstitialWillDismissScreen:(id)arg0 ;
-(void)interstitialDidDismissScreen:(id)arg0 ;
-(void)interstitialWillLeaveApplication:(id)arg0 ;
-(id)getAdNetworkId;


@end


#endif