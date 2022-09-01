// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADSMOPUBREWARDEDVIDEOSDELEGATE_H
#define MCADSMOPUBREWARDEDVIDEOSDELEGATE_H


#import <Foundation/Foundation.h>

@protocol MPRewardedVideoDelegate;

@interface MCAdsMoPubRewardedVideosDelegate : NSObject <MPRewardedVideoDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)rewardedVideoAdDidLoadForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoAdDidExpireForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidFailToPlayForAdUnitID:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoAdWillDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillLeaveApplicationForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdShouldRewardForAdUnitID:(id)arg0 reward:(id)arg1 ;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )findNetworkName:(id)arg0 adUnitId:(id)arg1 ;


@end


#endif