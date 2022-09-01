// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISTAPJOYADAPTER_H
#define ISTAPJOYADAPTER_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ISBaseAdapter;
@protocol TJPlacementDelegate;
@protocol TJPlacementVideoDelegate;

@interface ISTapjoyAdapter : ISBaseAdapter <TJPlacementDelegate, TJPlacementVideoDelegate>

 {
    NSInteger _initState;
    NSMutableDictionary *_rvPlacementNameToDelegate;
    NSMutableDictionary *_isPlacementNameToDelegate;
    NSMutableDictionary *_rvPlacementNameToPlacement;
    NSMutableDictionary *_isPlacementNameToPlacement;
    NSMutableDictionary *_isPlacementToIsReady;
    NSMutableDictionary *_rvPlacementToIsReady;
    NSMutableSet *_programmaticPlacementNames;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(void)dealloc;
-(id)version;
-(id)sdkVersion;
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
-(void)loadInterstitialWithAdapterConfig:(id)arg0 activeDelegate:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(BOOL)hasInterstitialWithAdapterConfig:(id)arg0 ;
-(void)loadVideoInternal:(id)arg0 ;
-(id)getPlacement:(id)arg0 ;
-(id)getPlacementForBidding:(id)arg0 serverData:(id)arg1 ;
-(void)requestDidSucceed:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
-(void)contentIsReady:(id)arg0 ;
-(void)contentDidAppear:(id)arg0 ;
-(void)contentDidDisappear:(id)arg0 ;
-(void)placement:(id)arg0 didRequestPurchase:(id)arg1 productId:(id)arg2 ;
-(void)placement:(id)arg0 didRequestReward:(id)arg1 itemId:(id)arg2 quantity:(int)arg3 ;
-(void)videoDidStart:(id)arg0 ;
-(void)videoDidComplete:(id)arg0 ;
-(void)videoDidFail:(id)arg0 error:(id)arg1 ;
-(void)initWithUserId:(id)arg0 appId:(id)arg1 ;
-(void)log:(id)arg0 ;
-(void)tjcConnectSuccess:(id)arg0 ;
-(void)tjcConnectFail:(id)arg0 ;


@end


#endif