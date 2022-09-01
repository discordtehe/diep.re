// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISREWARDEDVIDEODELEGATEWRAPPER_H
#define ISREWARDEDVIDEODELEGATEWRAPPER_H


#import <Foundation/Foundation.h>

@protocol ISRewardedVideoDelegate;
@protocol ISDemandOnlyRewardedVideoDelegate;

@interface ISRewardedVideoDelegateWrapper : NSObject {
    id<ISRewardedVideoDelegate> *_delegate;
    id<ISDemandOnlyRewardedVideoDelegate> *_demandOnlyDelegate;
    BOOL _isDemandOnlyModeOn;
    BOOL _wasModeSet;
}




-(id)init;
-(void)setISDemandOnlyMode:(BOOL)arg0 ;
-(void)setDelegate:(id)arg0 ;
-(void)setInstDelegate:(id)arg0 ;
-(void)verifyDemandOnlyMode:(id)arg0 ;
-(void)verifyMediationMode:(id)arg0 ;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 ;
-(void)didReceiveRewardForPlacement:(id)arg0 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 ;
-(void)rewardedVideoDidOpen;
-(void)rewardedVideoDidClose;
-(void)rewardedVideoDidStart;
-(void)rewardedVideoDidEnd;
-(void)didClickRewardedVideo:(id)arg0 ;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 instanceId:(id)arg1 ;
-(void)didReceiveRewardForPlacement:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidOpen:(id)arg0 ;
-(void)rewardedVideoDidClose:(id)arg0 ;
-(void)didClickRewardedVideo:(id)arg0 instanceId:(id)arg1 ;
+(id)sharedInstance;


@end


#endif