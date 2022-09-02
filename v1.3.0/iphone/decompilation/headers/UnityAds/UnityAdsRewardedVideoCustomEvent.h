// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYADSREWARDEDVIDEOCUSTOMEVENT_H
#define UNITYADSREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@protocol UnityRouterDelegate;

@interface UnityAdsRewardedVideoCustomEvent : MPRewardedVideoCustomEvent <UnityRouterDelegate>



@property (copy, nonatomic) NSString *placementId; // ivar: _placementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)initializeSdkWithParameters:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(void)handleCustomEventInvalidated;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)unityAdsDidClick:(id)arg0 ;
-(void)unityAdsDidFailWithError:(id)arg0 ;


@end


#endif