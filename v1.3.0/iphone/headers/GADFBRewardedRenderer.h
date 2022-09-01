// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBREWARDEDRENDERER_H
#define GADFBREWARDEDRENDERER_H


#import <Foundation/Foundation.h>

@class FBRewardedVideoAd;
@protocol GADMediationRewardedAd;
@protocol FBRewardedVideoAdDelegate;
@protocol GADMediationRewardedAdEventDelegate;

@interface GADFBRewardedRenderer : NSObject <GADMediationRewardedAd, FBRewardedVideoAdDelegate>

 {
    id *_adLoadCompletionHandler;
    FBRewardedVideoAd *_rewardedAd;
    id<GADMediationRewardedAdEventDelegate> *_adEventDelegate;
    BOOL _isRTBRequest;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)loadRewardedAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)rewardedVideoAdDidLoad:(id)arg0 ;
-(void)rewardedVideoAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)rewardedVideoAdDidClick:(id)arg0 ;
-(void)rewardedVideoAdDidClose:(id)arg0 ;
-(void)rewardedVideoAdWillClose:(id)arg0 ;
-(void)rewardedVideoAdVideoComplete:(id)arg0 ;
-(void)rewardedVideoAdWillLogImpression:(id)arg0 ;
-(void)presentFromViewController:(id)arg0 ;


@end


#endif