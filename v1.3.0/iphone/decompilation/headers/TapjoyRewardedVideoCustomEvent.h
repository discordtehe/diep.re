// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPJOYREWARDEDVIDEOCUSTOMEVENT_H
#define TAPJOYREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@class TJPlacement;
@protocol TJPlacementDelegate;
@protocol TJCVideoAdDelegate;

@interface TapjoyRewardedVideoCustomEvent : MPRewardedVideoCustomEvent <TJPlacementDelegate, TJCVideoAdDelegate>



@property (retain, nonatomic) TJPlacement *placement; // ivar: _placement
@property (nonatomic) BOOL isConnecting; // ivar: _isConnecting
@property (copy, nonatomic) NSString *placementName; // ivar: _placementName
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setupListeners;
-(void)initializeWithCustomNetworkInfo:(id)arg0 ;
-(void)initializeSdkWithParameters:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(void)requestPlacementContentWithAdMarkup:(id)arg0 ;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(BOOL)hasAdAvailable;
-(void)handleCustomEventInvalidated;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)dealloc;
-(void)requestDidSucceed:(id)arg0 ;
-(void)contentIsReady:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
-(void)contentDidAppear:(id)arg0 ;
-(void)contentDidDisappear:(id)arg0 ;
-(void)videoAdCompleted;
-(void)tjcConnectSuccess:(id)arg0 ;
-(void)tjcConnectFail:(id)arg0 ;
-(void)fetchMoPubGDPRSettings;


@end


#endif