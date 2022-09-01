// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMRAIDINTERSTITIALCUSTOMEVENT_H
#define MPMRAIDINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPInterstitialCustomEvent;
@class MPMRAIDInterstitialViewController;
@protocol MPInterstitialViewControllerDelegate;
@protocol MPPrivateInterstitialCustomEventDelegate;

@interface MPMRAIDInterstitialCustomEvent : MPInterstitialCustomEvent <MPInterstitialViewControllerDelegate>



@property (retain, nonatomic) MPMRAIDInterstitialViewController *interstitial; // ivar: _interstitial
@property (weak, nonatomic) NSObject<MPPrivateInterstitialCustomEventDelegate> *delegate;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestInterstitialWithCustomEventInfo:(id)arg0 ;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
-(id)location;
-(id)adUnitId;
-(void)interstitialDidLoadAd:(id)arg0 ;
-(void)interstitialDidFailToLoadAd:(id)arg0 ;
-(void)interstitialWillAppear:(id)arg0 ;
-(void)interstitialDidAppear:(id)arg0 ;
-(void)interstitialWillDisappear:(id)arg0 ;
-(void)interstitialDidDisappear:(id)arg0 ;
-(void)interstitialDidReceiveTapEvent:(id)arg0 ;
-(void)interstitialWillLeaveApplication:(id)arg0 ;


@end


#endif