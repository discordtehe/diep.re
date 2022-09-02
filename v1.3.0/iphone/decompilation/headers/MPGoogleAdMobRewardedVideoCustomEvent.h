// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPGOOGLEADMOBREWARDEDVIDEOCUSTOMEVENT_H
#define MPGOOGLEADMOBREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@class GADRewardedAd;
@protocol GADRewardedAdDelegate;

@interface MPGoogleAdMobRewardedVideoCustomEvent : MPRewardedVideoCustomEvent <GADRewardedAdDelegate>



@property (copy, nonatomic) NSString *admobAdUnitId; // ivar: _admobAdUnitId
@property (retain, nonatomic) GADRewardedAd *rewardedAd; // ivar: _rewardedAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)initializeSdkWithParameters:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)rewardedAd:(id)arg0 userDidEarnReward:(id)arg1 ;
-(void)rewardedAdDidPresent:(id)arg0 ;
-(void)rewardedAd:(id)arg0 didFailToPresentWithError:(id)arg1 ;
-(void)rewardedAdDidDismiss:(id)arg0 ;
-(id)getAdNetworkId;


@end


#endif