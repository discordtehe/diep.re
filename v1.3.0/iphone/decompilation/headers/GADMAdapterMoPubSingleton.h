// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERMOPUBSINGLETON_H
#define GADMADAPTERMOPUBSINGLETON_H


#import <Foundation/Foundation.h>

@protocol MPRewardedVideoDelegate;

@interface GADMAdapterMoPubSingleton : NSObject <MPRewardedVideoDelegate>



@property (retain, nonatomic) NSMapTable *adapterDelegates; // ivar: _adapterDelegates
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)initializeMoPubSDKWithAdUnitID:(id)arg0 completionHandler:(id)arg1 ;
-(void)addDelegate:(id)arg0 forAdUnitID:(id)arg1 ;
-(void)removeDelegateForAdUnitID:(id)arg0 ;
-(id)getDelegateForAdUnitID:(id)arg0 ;
-(id)requestRewardedAdForAdUnitID:(id)arg0 adConfig:(id)arg1 delegate:(id)arg2 ;
-(id)getKeywords:(BOOL)arg0 forAdConfig:(id)arg1 ;
-(BOOL)keywordsContainUserData:(id)arg0 ;
-(void)rewardedVideoAdDidLoadForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoAdWillAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidExpireForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(id)arg0 ;
-(void)rewardedVideoWillLeaveApplicationForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdShouldRewardForAdUnitID:(id)arg0 reward:(id)arg1 ;
+(id)sharedInstance;


@end


#endif