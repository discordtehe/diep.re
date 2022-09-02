// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONREWARDBASEDVIDEOADRENDERER_H
#define GADMEDIATIONREWARDBASEDVIDEOADRENDERER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADServerTransaction;
@class GADInterstitialAd;
@class GADTargeting;
@protocol GADAdRendering;

@interface GADMediationRewardBasedVideoAdRenderer : NSObject <GADAdRendering>

 {
    GADServerTransaction *_transaction;
    *NSDictionary _adConfiguration;
    id *_connector;
    id *_renderCompletionHandler;
    atomic_flag _adLoadCompleted;
    GADInterstitialAd *_rewardBasedVideoAd;
}


@property (readonly, nonatomic) GADTargeting *targeting;
@property (readonly, nonatomic) NSDictionary *rewardGrantedUserInfo; // ivar: _rewardGrantedUserInfo
@property (readonly, nonatomic) NSString *shouldRenderTestAdLabel; // ivar: _shouldRenderTestAdLabel
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)failedToSetUpWithError:(id)arg0 ;
-(void)receivedRewardBasedVideoAdFromConnector:(id)arg0 ;
-(void)receivedRewardBasedVideoAdWithError:(id)arg0 ;
-(void)dealloc;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;


@end


#endif