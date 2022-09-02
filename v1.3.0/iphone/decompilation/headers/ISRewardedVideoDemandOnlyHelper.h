// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISREWARDEDVIDEODEMANDONLYHELPER_H
#define ISREWARDEDVIDEODEMANDONLYHELPER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISPlacement;
@protocol ISRewardedVideoSMASHDelegate;

@interface ISRewardedVideoDemandOnlyHelper : NSObject <ISRewardedVideoSMASHDelegate>

 {
    NSMutableDictionary *_smashDic;
    NSMutableDictionary *_instanceIdToWaterfallPos;
    ISPlacement *_placement;
    NSUInteger _event7LastSentStatus;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(BOOL)addSmash:(id)arg0 adapter:(id)arg1 ;
-(void)showRewardedVideoWithViewController:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
-(BOOL)hasAvailableAds:(id)arg0 ;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 forSMASH:(id)arg1 ;
-(void)rewardedVideoDidOpenForSMASH:(id)arg0 ;
-(void)rewardedVideoDidStartForSMASH:(id)arg0 ;
-(void)rewardedVideoDidEndForSMASH:(id)arg0 ;
-(void)rewardedVideoDidCloseForSMASH:(id)arg0 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)didReceiveRewardForSMASH:(id)arg0 ;
-(void)didClickRewardedVideoForSMASH:(id)arg0 ;
-(void)rewardedVideoDidBecomeVisibileForSMASH:(id)arg0 ;
-(void)sendProviderEvent:(id)arg0 eventId:(NSInteger)arg1 data:(id)arg2 ;
-(void)sendProviderEvent:(id)arg0 eventId:(NSInteger)arg1 data:(id)arg2 timestamp:(NSInteger)arg3 ;
-(void)sendProviderEventWithPlacement:(id)arg0 eventId:(NSInteger)arg1 ;
-(void)sendMediationEvent:(NSInteger)arg0 data:(id)arg1 ;
-(void)setSmash:(id)arg0 withInstanceId:(id)arg1 ;
-(id)getSmash:(id)arg0 ;
-(BOOL)isAtLeastOneSmashAvailable;
-(BOOL)doesAllSmashesHaveAvailability;
-(void)addWaterfallPosition:(id)arg0 ;
-(id)getWaterfallPosition:(id)arg0 ;


@end


#endif