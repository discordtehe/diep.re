// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRTBMEDIATIONREWARDBASEDVIDEOADRENDERER_H
#define GADRTBMEDIATIONREWARDBASEDVIDEOADRENDERER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADInterstitialAd;
@class GADMediationRewardedAdConfiguration;
@class GADMediatedIntermission;
@protocol GADAdPresenting;
@protocol GADMediationRewardedAdEventDelegate;
@protocol GADAdRendering;
@protocol GADMediationAdapter;
@protocol GADMediationRewardedAd;

@interface GADRTBMediationRewardBasedVideoAdRenderer : NSObject <GADAdPresenting, GADMediationRewardedAdEventDelegate, GADAdRendering>

 {
    id<GADMediationAdapter> *_loadingAdapter;
    GADInterstitialAd *_rewardedAd;
    atomic_flag _clickEventReceived;
    id<GADMediationRewardedAd> *_mediatedAd;
    GADMediationRewardedAdConfiguration *_mediatedConfiguration;
    NSDictionary *_rewardGrantedUserInfo;
    GADMediatedIntermission *_intermission;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(id)adEventDelegateForAdapter:(id)arg0 mediatedAd:(id)arg1 adConfiguration:(struct NSDictionary *)arg2 transaction:(id)arg3 renderCompletionHandler:(id)arg4 ;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;
-(void)reportImpression;
-(void)reportClick;
-(void)willPresentFullScreenView;
-(void)willDismissFullScreenView;
-(void)didDismissFullScreenView;
-(void)didStartVideo;
-(void)didEndVideo;
-(void)didRewardUserWithReward:(id)arg0 ;
-(void)didFailToPresentWithError:(id)arg0 ;


@end


#endif