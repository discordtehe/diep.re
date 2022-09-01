// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMOPUBREWARDEDVIDEOCUSTOMEVENT_H
#define MPMOPUBREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@class MPMRAIDInterstitialViewController;
@protocol MPInterstitialViewControllerDelegate;
@protocol MPPrivateRewardedVideoCustomEventDelegate;

@interface MPMoPubRewardedVideoCustomEvent : MPRewardedVideoCustomEvent <MPInterstitialViewControllerDelegate>



@property (retain, nonatomic) MPMRAIDInterstitialViewController *interstitial; // ivar: _interstitial
@property (nonatomic) BOOL adAvailable; // ivar: _adAvailable
@property (weak, nonatomic) NSObject<MPPrivateRewardedVideoCustomEventDelegate> *delegate;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 ;
-(BOOL)hasAdAvailable;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)handleCustomEventInvalidated;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(void)interstitialDidLoadAd:(id)arg0 ;
-(void)interstitialDidAppear:(id)arg0 ;
-(void)interstitialWillAppear:(id)arg0 ;
-(void)interstitialDidFailToLoadAd:(id)arg0 ;
-(void)interstitialWillDisappear:(id)arg0 ;
-(void)interstitialDidDisappear:(id)arg0 ;
-(void)interstitialDidReceiveTapEvent:(id)arg0 ;
-(void)interstitialWillLeaveApplication:(id)arg0 ;
-(id)adUnitId;
-(id)configuration;


@end


#endif