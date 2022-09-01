// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONADAPTERVUNGLE_H
#define GADMEDIATIONADAPTERVUNGLE_H


#import <Foundation/Foundation.h>

@class GADMAdapterVungleRewardedAd;
@protocol GADMediationAdapter;

@interface GADMediationAdapterVungle : NSObject <GADMediationAdapter>



@property (retain, nonatomic) GADMAdapterVungleRewardedAd *rewardedAd; // ivar: _rewardedAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)loadRewardedAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(void)setUpWithConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(struct ? )adSDKVersion;
+(Class)networkExtrasClass;
+(struct ? )version;


@end


#endif