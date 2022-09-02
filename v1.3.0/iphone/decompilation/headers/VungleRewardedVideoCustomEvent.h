// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEREWARDEDVIDEOCUSTOMEVENT_H
#define VUNGLEREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@protocol MPVungleRouterDelegate;

@interface VungleRewardedVideoCustomEvent : MPRewardedVideoCustomEvent <MPVungleRouterDelegate>



@property (copy, nonatomic) NSString *placementId; // ivar: _placementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)initializeSdkWithParameters:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(void)handleCustomEventInvalidated;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)vungleAdDidLoad;
-(void)vungleAdWillAppear;
-(void)vungleAdDidAppear;
-(void)vungleAdWillDisappear;
-(void)vungleAdDidDisappear;
-(void)vungleAdWasTapped;
-(void)vungleAdShouldRewardUser;
-(void)vungleAdDidFailToLoad:(id)arg0 ;
-(void)vungleAdDidFailToPlay:(id)arg0 ;
-(id)getPlacementID;


@end


#endif