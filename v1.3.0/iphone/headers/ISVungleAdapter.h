// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISVUNGLEADAPTER_H
#define ISVUNGLEADAPTER_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ISBaseAdapter;
@protocol VungleSDKDelegate;
@protocol VungleSDKHeaderBidding;

@interface ISVungleAdapter : ISBaseAdapter <VungleSDKDelegate, VungleSDKHeaderBidding>

 {
    NSInteger _initState;
    NSMutableDictionary *_rvPlacementToDelegate;
    NSMutableDictionary *_isPlacementToDelegate;
    NSString *_isPlacementForBidding;
    NSMutableSet *_programmaticRvPlacements;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(id)sdkVersion;
-(id)version;
-(id)systemFrameworks;
-(id)sdkName;
-(void)setConsent:(BOOL)arg0 ;
-(id)getRvBiddingData:(id)arg0 ;
-(void)initRvForBidding:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadVideo:(id)arg0 serverData:(id)arg1 ;
-(void)initRVWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)showRewardedVideoWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)fetchRewardedVideoWithAdapterConfig:(id)arg0 delegate:(id)arg1 ;
-(BOOL)hasAvailableAdsForAdapterConfig:(id)arg0 ;
-(id)getIsBiddingData:(id)arg0 ;
-(void)initInterstitialForBidding:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadInterstitial:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)initISWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(BOOL)initIsInternal:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadInterstitialWithAdapterConfig:(id)arg0 activeDelegate:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(BOOL)hasInterstitialWithAdapterConfig:(id)arg0 ;
-(void)vungleSDKDidInitialize;
-(void)vungleSDKFailedToInitializeWithError:(id)arg0 ;
-(void)vungleAdPlayabilityUpdate:(BOOL)arg0 placementID:(id)arg1 error:(id)arg2 ;
-(void)vungleWillShowAdForPlacementID:(id)arg0 ;
-(void)vungleWillCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)placementWillBeginCaching:(id)arg0 withBidToken:(id)arg1 ;
-(void)placementPrepared:(id)arg0 withBidToken:(id)arg1 ;
-(void)initSDK:(id)arg0 ;
-(void)loadRewardedVideoWithPlacment:(id)arg0 ;
-(void)log:(id)arg0 ;


@end


#endif