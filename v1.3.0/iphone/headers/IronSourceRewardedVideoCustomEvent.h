// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCEREWARDEDVIDEOCUSTOMEVENT_H
#define IRONSOURCEREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@class MPRewardedVideoReward;
@protocol ISDemandOnlyRewardedVideoDelegate;

@interface IronSourceRewardedVideoCustomEvent : MPRewardedVideoCustomEvent <ISDemandOnlyRewardedVideoDelegate>



@property (retain, nonatomic) MPRewardedVideoReward *reward; // ivar: _reward
@property (nonatomic) NSString *placementName; // ivar: _placementName
@property (copy, nonatomic) NSString *instanceId; // ivar: _instanceId
@property (nonatomic) BOOL isTestEnabled; // ivar: _isTestEnabled
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)initializeSdkWithParameters:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(void)handleCustomEventInvalidated;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)initializeRewardedVideoIronSourceSDKWithApplicationKey:(id)arg0 ;
-(void)parseCredentials:(id)arg0 ;
-(void)logInfo:(id)arg0 ;
-(void)logError:(id)arg0 ;
-(BOOL)isEmpty:(id)arg0 ;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 instanceId:(id)arg1 ;
-(void)didReceiveRewardForPlacement:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidOpen:(id)arg0 ;
-(void)rewardedVideoDidStart:(id)arg0 ;
-(void)rewardedVideoDidClose:(id)arg0 ;
-(void)rewardedVideoDidEnd:(id)arg0 ;
-(void)didClickRewardedVideo:(id)arg0 instanceId:(id)arg1 ;


@end


#endif