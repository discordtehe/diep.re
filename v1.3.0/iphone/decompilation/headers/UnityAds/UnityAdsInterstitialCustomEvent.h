// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYADSINTERSTITIALCUSTOMEVENT_H
#define UNITYADSINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPInterstitialCustomEvent;
@protocol UnityRouterDelegate;

@interface UnityAdsInterstitialCustomEvent : MPInterstitialCustomEvent <UnityRouterDelegate>



@property BOOL loadRequested; // ivar: _loadRequested
@property (copy, nonatomic) NSString *placementId; // ivar: _placementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)requestInterstitialWithCustomEventInfo:(id)arg0 ;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(BOOL)hasAdAvailable;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
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