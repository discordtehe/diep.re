// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPINTERSTITIALCUSTOMEVENTADAPTER_H
#define MPINTERSTITIALCUSTOMEVENTADAPTER_H


#import <Foundation/Foundation.h>

@class MPBaseInterstitialAdapter;
@class MPInterstitialCustomEvent;
@class MPAdConfiguration;
@class MPRealTimeTimer;
@protocol MPPrivateInterstitialCustomEventDelegate;

@interface MPInterstitialCustomEventAdapter : MPBaseInterstitialAdapter <MPPrivateInterstitialCustomEventDelegate>



@property (retain, nonatomic) MPInterstitialCustomEvent *interstitialCustomEvent; // ivar: _interstitialCustomEvent
@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (nonatomic) BOOL hasTrackedImpression; // ivar: _hasTrackedImpression
@property (nonatomic) BOOL hasTrackedClick; // ivar: _hasTrackedClick
@property (retain, nonatomic) MPRealTimeTimer *expirationTimer; // ivar: _expirationTimer
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)getAdWithConfiguration:(id)arg0 targeting:(id)arg1 ;
-(void)showInterstitialFromViewController:(id)arg0 ;
-(id)adUnitId;
-(id)location;
-(id)interstitialDelegate;
-(void)interstitialCustomEvent:(id)arg0 didLoadAd:(id)arg1 ;
-(void)interstitialCustomEvent:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)interstitialCustomEventWillAppear:(id)arg0 ;
-(void)interstitialCustomEventDidAppear:(id)arg0 ;
-(void)interstitialCustomEventWillDisappear:(id)arg0 ;
-(void)interstitialCustomEventDidDisappear:(id)arg0 ;
-(void)interstitialCustomEventDidExpire:(id)arg0 ;
-(void)interstitialCustomEventDidReceiveTapEvent:(id)arg0 ;
-(void)interstitialCustomEventWillLeaveApplication:(id)arg0 ;
-(void)trackImpression;


@end


#endif