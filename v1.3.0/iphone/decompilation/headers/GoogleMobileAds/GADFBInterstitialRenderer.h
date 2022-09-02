// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBINTERSTITIALRENDERER_H
#define GADFBINTERSTITIALRENDERER_H


#import <Foundation/Foundation.h>

@class FBInterstitialAd;
@protocol GADMediationInterstitialAd;
@protocol FBInterstitialAdDelegate;
@protocol GADMediationInterstitialAdEventDelegate;

@interface GADFBInterstitialRenderer : NSObject <GADMediationInterstitialAd, FBInterstitialAdDelegate>

 {
    id *_adLoadCompletionHandler;
    FBInterstitialAd *_interstitialAd;
    id<GADMediationInterstitialAdEventDelegate> *_adEventDelegate;
    BOOL _isRTBRequest;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderInterstitialForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)interstitialAdDidLoad:(id)arg0 ;
-(void)interstitialAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)interstitialAdWillLogImpression:(id)arg0 ;
-(void)interstitialAdDidClick:(id)arg0 ;
-(void)interstitialAdWillClose:(id)arg0 ;
-(void)interstitialAdDidClose:(id)arg0 ;
-(void)presentFromViewController:(id)arg0 ;


@end


#endif