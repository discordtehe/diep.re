// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCEDELEGATE_H
#define IRONSOURCEDELEGATE_H


#import <Foundation/Foundation.h>

@protocol ISInterstitialDelegate;
@protocol ISRewardedVideoDelegate;

@interface IronSourceDelegate : NSObject <ISInterstitialDelegate, ISRewardedVideoDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)interstitialDidLoad;
-(void)interstitialDidFailToLoadWithError:(id)arg0 ;
-(void)interstitialDidOpen;
-(void)interstitialDidClose;
-(void)interstitialDidShow;
-(void)interstitialDidFailToShowWithError:(id)arg0 ;
-(void)didClickInterstitial;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 ;
-(void)didReceiveRewardForPlacement:(id)arg0 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 ;
-(void)rewardedVideoDidOpen;
-(void)rewardedVideoDidClose;
-(void)rewardedVideoDidStart;
-(void)rewardedVideoDidEnd;
-(void)didClickRewardedVideo:(id)arg0 ;


@end


#endif