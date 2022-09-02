// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREWARDEDVIDEO_H
#define MPREWARDEDVIDEO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPRewardedVideoAdManagerDelegate;
@protocol MPRewardedVideoConnectionDelegate;

@interface MPRewardedVideo : NSObject <MPRewardedVideoAdManagerDelegate, MPRewardedVideoConnectionDelegate>



@property (retain, nonatomic) NSMutableDictionary *rewardedVideoAdManagers; // ivar: _rewardedVideoAdManagers
@property (retain, nonatomic) NSMutableArray *rewardedVideoConnections; // ivar: _rewardedVideoConnections
@property (retain, nonatomic) NSMapTable *delegateTable; // ivar: _delegateTable
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)rewardedVideoDidLoadForAdManager:(id)arg0 ;
-(void)rewardedVideoDidFailToLoadForAdManager:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoDidExpireForAdManager:(id)arg0 ;
-(void)rewardedVideoDidFailToPlayForAdManager:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoWillAppearForAdManager:(id)arg0 ;
-(void)rewardedVideoDidAppearForAdManager:(id)arg0 ;
-(void)rewardedVideoWillDisappearForAdManager:(id)arg0 ;
-(void)rewardedVideoDidDisappearForAdManager:(id)arg0 ;
-(void)rewardedVideoDidReceiveTapEventForAdManager:(id)arg0 ;
-(void)rewardedVideoAdManager:(id)arg0 didReceiveImpressionEventWithImpressionData:(id)arg1 ;
-(void)rewardedVideoWillLeaveApplicationForAdManager:(id)arg0 ;
-(void)rewardedVideoShouldRewardUserForAdManager:(id)arg0 reward:(id)arg1 ;
-(void)startRewardedVideoConnectionWithUrl:(id)arg0 ;
-(void)rewardedVideoConnectionCompleted:(id)arg0 url:(id)arg1 ;
+(void)setDelegate:(id)arg0 forAdUnitId:(id)arg1 ;
+(void)removeDelegate:(id)arg0 ;
+(void)removeDelegateForAdUnitId:(id)arg0 ;
+(void)loadRewardedVideoAdWithAdUnitID:(id)arg0 withMediationSettings:(id)arg1 ;
+(void)loadRewardedVideoAdWithAdUnitID:(id)arg0 keywords:(id)arg1 userDataKeywords:(id)arg2 location:(id)arg3 mediationSettings:(id)arg4 ;
+(void)loadRewardedVideoAdWithAdUnitID:(id)arg0 keywords:(id)arg1 userDataKeywords:(id)arg2 location:(id)arg3 customerId:(id)arg4 mediationSettings:(id)arg5 ;
+(void)loadRewardedVideoAdWithAdUnitID:(id)arg0 keywords:(id)arg1 userDataKeywords:(id)arg2 location:(id)arg3 customerId:(id)arg4 mediationSettings:(id)arg5 localExtras:(id)arg6 ;
+(BOOL)hasAdAvailableForAdUnitID:(id)arg0 ;
+(id)availableRewardsForAdUnitID:(id)arg0 ;
+(id)selectedRewardForAdUnitID:(id)arg0 ;
+(void)presentRewardedVideoAdForAdUnitID:(id)arg0 fromViewController:(id)arg1 withReward:(id)arg2 customData:(id)arg3 ;
+(void)presentRewardedVideoAdForAdUnitID:(id)arg0 fromViewController:(id)arg1 withReward:(id)arg2 ;
+(id)sharedInstance;


@end


#endif