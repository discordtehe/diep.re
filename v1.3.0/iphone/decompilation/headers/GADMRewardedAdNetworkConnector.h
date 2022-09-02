// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMREWARDEDADNETWORKCONNECTOR_H
#define GADMREWARDEDADNETWORKCONNECTOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADInterstitialAd;
@class GADMediatedIntermission;
@class GADMediationRewardBasedVideoAdRenderer;
@protocol GADMediationRewardedAdEventDelegate;
@protocol GADAdPresenting;
@protocol GADRewardedConnector;
@protocol GADMediationAdapter;
@protocol GADMediationRewardedAd;

@interface GADMRewardedAdNetworkConnector : NSObject <GADMediationRewardedAdEventDelegate, GADAdPresenting, GADRewardedConnector>

 {
    id<GADMediationAdapter> *_rewardedAdAdapter;
    NSString *_adapterClassName;
    GADInterstitialAd *_rewardedAd;
    id<GADMediationRewardedAd> *_mediationRewardedAd;
    GADMediatedIntermission *_intermission;
}


@property (readonly, copy, nonatomic) NSString *adapterName;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (copy, nonatomic) NSDictionary *adConfiguration; // ivar: _adConfiguration
@property (weak, nonatomic) GADMediationRewardBasedVideoAdRenderer *renderer; // ivar: _renderer


-(id)initWithAdNetworkConfiguration:(id)arg0 adapterClassName:(id)arg1 renderer:(id)arg2 ;
-(void)setRewardBasedVideoAd:(id)arg0 ;
-(void)requestRewardBasedVideoAd;
-(void)didFailToPresentWithError:(id)arg0 ;
-(void)rewardedAdDidLoad;
-(void)rewardedAdDidFailToLoadWithError:(id)arg0 ;
-(void)willPresentFullScreenView;
-(void)didDismissFullScreenView;
-(void)reportClick;
-(void)didStartVideo;
-(void)didEndVideo;
-(void)didRewardUserWithReward:(id)arg0 ;
-(void)reportImpression;
-(void)willDismissFullScreenView;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;


@end


#endif