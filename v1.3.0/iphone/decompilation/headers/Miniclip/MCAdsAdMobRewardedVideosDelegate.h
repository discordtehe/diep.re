// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADSADMOBREWARDEDVIDEOSDELEGATE_H
#define MCADSADMOBREWARDEDVIDEOSDELEGATE_H


#import <Foundation/Foundation.h>

@protocol GADRewardBasedVideoAdDelegate;

@interface MCAdsAdMobRewardedVideosDelegate : NSObject <GADRewardBasedVideoAdDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)rewardBasedVideoAdDidOpen:(id)arg0 ;
-(void)rewardBasedVideoAdDidClose:(id)arg0 ;
-(void)rewardBasedVideoAdDidReceiveAd:(id)arg0 ;
-(void)rewardBasedVideoAd:(id)arg0 didFailToLoadWithError:(id)arg1 ;
-(void)rewardBasedVideoAdDidStartPlaying:(id)arg0 ;
-(void)rewardBasedVideoAdDidCompletePlaying:(id)arg0 ;
-(void)rewardBasedVideoAdWillLeaveApplication:(id)arg0 ;
-(void)rewardBasedVideoAd:(id)arg0 didRewardUserWithReward:(id)arg1 ;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )findNetworkName:(id)arg0 ;


@end


#endif