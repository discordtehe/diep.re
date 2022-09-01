// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKREWARDEDVIDEOCUSTOMEVENT_H
#define FACEBOOKREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@class FBRewardedVideoAd;
@class MPRealTimeTimer;
@protocol FBRewardedVideoAdDelegate;

@interface FacebookRewardedVideoCustomEvent : MPRewardedVideoCustomEvent <FBRewardedVideoAdDelegate>



@property (retain, nonatomic) FBRewardedVideoAd *fbRewardedVideoAd; // ivar: _fbRewardedVideoAd
@property (retain, nonatomic) MPRealTimeTimer *expirationTimer; // ivar: _expirationTimer
@property (nonatomic) BOOL hasTrackedImpression; // ivar: _hasTrackedImpression
@property (copy, nonatomic) NSString *fbPlacementId; // ivar: _fbPlacementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)initializeSdkWithParameters:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(void)dealloc;
-(void)cancelExpirationTimer;
-(void)rewardedVideoAdDidClick:(id)arg0 ;
-(void)rewardedVideoAdDidLoad:(id)arg0 ;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(void)rewardedVideoAdDidClose:(id)arg0 ;
-(void)rewardedVideoAdWillClose:(id)arg0 ;
-(void)rewardedVideoAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)rewardedVideoAdVideoComplete:(id)arg0 ;
-(void)rewardedVideoAdWillLogImpression:(id)arg0 ;


@end


#endif