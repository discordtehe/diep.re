// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONADAPTERMOPUB_H
#define GADMEDIATIONADAPTERMOPUB_H


#import <Foundation/Foundation.h>

@class GADMMoPubRewardedAd;
@protocol MPRewardedVideoDelegate;
@protocol GADMediationAdapter;

@interface GADMediationAdapterMoPub : NSObject <MPRewardedVideoDelegate, GADMediationAdapter>



@property (retain, nonatomic) GADMMoPubRewardedAd *rewardedAd; // ivar: _rewardedAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)loadRewardedAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(void)setUpWithConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(struct ? )adSDKVersion;
+(Class)networkExtrasClass;
+(struct ? )version;


@end


#endif