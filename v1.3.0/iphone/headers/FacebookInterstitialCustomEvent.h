// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKINTERSTITIALCUSTOMEVENT_H
#define FACEBOOKINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPInterstitialCustomEvent;
@class FBInterstitialAd;
@class MPRealTimeTimer;
@protocol FBInterstitialAdDelegate;

@interface FacebookInterstitialCustomEvent : MPInterstitialCustomEvent <FBInterstitialAdDelegate>



@property (retain, nonatomic) FBInterstitialAd *fbInterstitialAd; // ivar: _fbInterstitialAd
@property (retain, nonatomic) MPRealTimeTimer *expirationTimer; // ivar: _expirationTimer
@property (nonatomic) BOOL hasTrackedImpression; // ivar: _hasTrackedImpression
@property (copy, nonatomic) NSString *fbPlacementId; // ivar: _fbPlacementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestInterstitialWithCustomEventInfo:(id)arg0 ;
-(void)requestInterstitialWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(void)dealloc;
-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)cancelExpirationTimer;
-(void)interstitialAdDidLoad:(id)arg0 ;
-(void)interstitialAdWillLogImpression:(id)arg0 ;
-(void)interstitialAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)interstitialAdDidClick:(id)arg0 ;
-(void)interstitialAdDidClose:(id)arg0 ;
-(void)interstitialAdWillClose:(id)arg0 ;


@end


#endif