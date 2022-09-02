// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERTAPJOY_H
#define GADMADAPTERTAPJOY_H


#import <Foundation/Foundation.h>

@class TJPlacement;
@protocol TJPlacementVideoDelegate;
@protocol TJPlacementDelegate;
@protocol GADMRewardBasedVideoAdNetworkAdapter;
@protocol GADMAdNetworkAdapter;
@protocol GADMRewardBasedVideoAdNetworkConnector;
@protocol GADMAdNetworkConnector;

@interface GADMAdapterTapjoy : NSObject <TJPlacementVideoDelegate, TJPlacementDelegate, GADMRewardBasedVideoAdNetworkAdapter, GADMAdNetworkAdapter>

 {
    id<GADMRewardBasedVideoAdNetworkConnector> *_rewardBasedVideoAdConnector;
    id<GADMAdNetworkConnector> *_interstitialConnector;
    TJPlacement *_rvPlacement;
    TJPlacement *_intPlacement;
    BOOL _rvIsRequesting;
    BOOL _intIsRequesting;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRewardBasedVideoAdNetworkConnector:(id)arg0 ;
-(void)setUp;
-(void)initRVPlacement;
-(void)requestRewardBasedVideoAd;
-(void)presentRewardBasedVideoAdWithRootViewController:(id)arg0 ;
-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)initInterstitialPlacement;
-(void)getInterstitial;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
-(void)setupListeners;
-(void)tjcConnectSuccess:(id)arg0 ;
-(void)tjcConnectFail:(id)arg0 ;
-(void)stopBeingDelegate;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(void)requestDidSucceed:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
-(void)contentIsReady:(id)arg0 ;
-(void)contentDidAppear:(id)arg0 ;
-(void)contentDidDisappear:(id)arg0 ;
-(void)videoDidStart:(id)arg0 ;
-(void)videoDidComplete:(id)arg0 ;
-(void)videoDidFail:(id)arg0 error:(id)arg1 ;
+(id)adapterVersion;
+(Class)networkExtrasClass;


@end


#endif