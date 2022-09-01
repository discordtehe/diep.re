// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREWARDEDVIDEOADMANAGER_H
#define MPREWARDEDVIDEOADMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPRewardedVideoAdapter;
@class MPAdServerCommunicator;
@class MPAdConfiguration;
@class MPAdTargeting;
@class MPRewardedVideoReward;
@protocol MPAdServerCommunicatorDelegate;
@protocol MPRewardedVideoAdapterDelegate;
@protocol MPRewardedVideoAdManagerDelegate;

@interface MPRewardedVideoAdManager : NSObject <MPAdServerCommunicatorDelegate, MPRewardedVideoAdapterDelegate>



@property (retain, nonatomic) MPRewardedVideoAdapter *adapter; // ivar: _adapter
@property (retain, nonatomic) MPAdServerCommunicator *communicator; // ivar: _communicator
@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) NSMutableArray *remainingConfigurations; // ivar: _remainingConfigurations
@property (nonatomic) BOOL loading; // ivar: _loading
@property (nonatomic) BOOL playedAd; // ivar: _playedAd
@property (nonatomic) BOOL ready; // ivar: _ready
@property (nonatomic) CGFloat adapterLoadStartTimestamp; // ivar: _adapterLoadStartTimestamp
@property (weak, nonatomic) NSObject<MPRewardedVideoAdManagerDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (retain, nonatomic) NSArray *mediationSettings; // ivar: _mediationSettings
@property (copy, nonatomic) NSString *customerId; // ivar: _customerId
@property (retain, nonatomic) MPAdTargeting *targeting; // ivar: _targeting
@property (readonly, nonatomic) NSArray *availableRewards;
@property (readonly, nonatomic) MPRewardedVideoReward *selectedReward;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdUnitID:(id)arg0 delegate:(id)arg1 ;
-(void)dealloc;
-(Class)customEventClass;
-(BOOL)hasAdAvailable;
-(void)loadRewardedVideoAdWithCustomerId:(id)arg0 targeting:(id)arg1 ;
-(void)presentRewardedVideoAdFromViewController:(id)arg0 withReward:(id)arg1 customData:(id)arg2 ;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)loadAdWithURL:(id)arg0 ;
-(void)fetchAdWithConfiguration:(id)arg0 ;
-(void)communicatorDidReceiveAdConfigurations:(id)arg0 ;
-(void)communicatorDidFailWithError:(id)arg0 ;
-(NSUInteger)adTypeForAdServerCommunicator:(id)arg0 ;
-(id)adUnitIDForAdServerCommunicator:(id)arg0 ;
-(id)instanceMediationSettingsForClass:(Class)arg0 ;
-(void)rewardedVideoDidLoadForAdapter:(id)arg0 ;
-(void)rewardedVideoDidFailToLoadForAdapter:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoDidExpireForAdapter:(id)arg0 ;
-(void)rewardedVideoDidFailToPlayForAdapter:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoWillAppearForAdapter:(id)arg0 ;
-(void)rewardedVideoDidAppearForAdapter:(id)arg0 ;
-(void)rewardedVideoWillDisappearForAdapter:(id)arg0 ;
-(void)rewardedVideoDidDisappearForAdapter:(id)arg0 ;
-(void)rewardedVideoDidReceiveTapEventForAdapter:(id)arg0 ;
-(void)rewardedVideoDidReceiveImpressionEventForAdapter:(id)arg0 ;
-(void)rewardedVideoWillLeaveApplicationForAdapter:(id)arg0 ;
-(void)rewardedVideoShouldRewardUserForAdapter:(id)arg0 reward:(id)arg1 ;
-(id)rewardedVideoAdUnitId;
-(id)rewardedVideoCustomerId;


@end


#endif