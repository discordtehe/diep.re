// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREWARDEDAD_H
#define GADREWARDEDAD_H

@protocol OS_dispatch_queue, GADRewardedAdMetadataDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADInterstitialAd;
@class GADAdSource;
@class GADObserverCollection;
@class GADAdReward;
@class GADServerSideVerificationOptions;
@protocol GADRewardedAdDelegate;

@interface GADRewardedAd : NSObject {
    GADInterstitialAd *_rewardedAd;
    GADAdSource *_adSource;
    BOOL _requestInProgress;
    GADObserverCollection *_intermissionObservers;
    GADObserverCollection *_rewardedObservers;
    BOOL _isAdPresenting;
    id<GADRewardedAdDelegate> *_delegate;
    BOOL _hasBeenUsed;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSDictionary *_adMetadata;
}


@property (readonly, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (readonly, nonatomic, getter=isReady) BOOL ready;
@property (readonly, copy, nonatomic) NSString *adNetworkClassName;
@property (readonly, nonatomic) GADAdReward *reward; // ivar: _reward
@property (copy, nonatomic) GADServerSideVerificationOptions *serverSideVerificationOptions; // ivar: _serverSideVerificationOptions
@property (readonly, nonatomic) NSDictionary *adMetadata;
@property (weak, nonatomic) NSObject<GADRewardedAdMetadataDelegate> *adMetadataDelegate; // ivar: _adMetadataDelegate


-(id)initWithAdUnitID:(id)arg0 ;
-(void)updateTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadRequest:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadWithTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)presentFromRootViewController:(id)arg0 delegate:(id)arg1 ;
-(void)adPresentationDidFailWithError:(id)arg0 ;
-(id)adSource;
-(void)attachRewardedCallbackObservers;
-(void)attachLifecycleEventObservers;


@end


#endif