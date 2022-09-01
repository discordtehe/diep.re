// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREWARDEDVIDEOADAPTER_H
#define MPREWARDEDVIDEOADAPTER_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@class MPAdConfiguration;
@class MPTimer;
@class MPRealTimeTimer;
@protocol MPPrivateRewardedVideoCustomEventDelegate;
@protocol MPRewardedVideoAdapterDelegate;

@interface MPRewardedVideoAdapter : NSObject <MPPrivateRewardedVideoCustomEventDelegate>



@property (retain, nonatomic) MPRewardedVideoCustomEvent *rewardedVideoCustomEvent; // ivar: _rewardedVideoCustomEvent
@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) MPTimer *timeoutTimer; // ivar: _timeoutTimer
@property (nonatomic) BOOL hasTrackedImpression; // ivar: _hasTrackedImpression
@property (nonatomic) BOOL hasTrackedClick; // ivar: _hasTrackedClick
@property (nonatomic) BOOL hasSuccessfullyLoaded; // ivar: _hasSuccessfullyLoaded
@property (nonatomic) BOOL hasExpired; // ivar: _hasExpired
@property (retain, nonatomic) MPRealTimeTimer *expirationTimer; // ivar: _expirationTimer
@property (copy, nonatomic) NSString *customData; // ivar: _customData
@property (weak, nonatomic) NSObject<MPRewardedVideoAdapterDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(void)getAdWithConfiguration:(id)arg0 targeting:(id)arg1 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 customData:(id)arg1 ;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)startTimeoutTimer;
-(void)timeout;
-(void)didStopLoading;
-(id)rewardedVideoCompletionUrlByAppendingClientParams;
-(void)trackImpression;
-(void)trackClick;
-(id)instanceMediationSettingsForClass:(Class)arg0 ;
-(void)rewardedVideoDidLoadAdForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidFailToLoadAdForCustomEvent:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoDidExpireForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidFailToPlayForCustomEvent:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoWillAppearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidAppearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoWillDisappearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidDisappearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoWillLeaveApplicationForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidReceiveTapEventForCustomEvent:(id)arg0 ;
-(void)rewardedVideoShouldRewardUserForCustomEvent:(id)arg0 reward:(id)arg1 ;
-(id)customerIdForRewardedVideoCustomEvent:(id)arg0 ;
-(id)adUnitId;


@end


#endif