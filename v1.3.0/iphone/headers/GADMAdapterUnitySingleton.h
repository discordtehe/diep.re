// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERUNITYSINGLETON_H
#define GADMADAPTERUNITYSINGLETON_H

@protocol GADMAdapterUnityDataProvider><UnityAdsExtendedDelegate, GADMAdapterUnityDataProvider><UnityAdsBannerDelegate;

#import <Foundation/Foundation.h>

@protocol UnityAdsExtendedDelegate;
@protocol UnityAdsBannerDelegate;

@interface GADMAdapterUnitySingleton : NSObject <UnityAdsExtendedDelegate, UnityAdsBannerDelegate>

 {
    NSMapTable *_adapterDelegates;
    id<GADMAdapterUnityDataProvider><UnityAdsExtendedDelegate> *_currentShowingUnityDelegate;
    id<GADMAdapterUnityDataProvider><UnityAdsBannerDelegate> *_currentBannerDelegate;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)initializeWithGameID:(id)arg0 ;
-(void)addAdapterDelegate:(id)arg0 ;
-(void)configureRewardedAdWithGameID:(id)arg0 ;
-(void)requestRewardedAdWithDelegate:(id)arg0 ;
-(void)presentRewardedAdForViewController:(id)arg0 delegate:(id)arg1 ;
-(void)configureInterstitialAdWithGameID:(id)arg0 delegate:(id)arg1 ;
-(void)presentInterstitialAdForViewController:(id)arg0 delegate:(id)arg1 ;
-(void)presentBannerAd:(id)arg0 delegate:(id)arg1 ;
-(void)unityAdsBannerDidLoad:(id)arg0 view:(id)arg1 ;
-(void)unityAdsBannerDidUnload:(id)arg0 ;
-(void)unityAdsBannerDidShow:(id)arg0 ;
-(void)unityAdsBannerDidHide:(id)arg0 ;
-(void)unityAdsBannerDidClick:(id)arg0 ;
-(void)unityAdsBannerDidError:(id)arg0 ;
-(void)unityAdsPlacementStateChanged:(id)arg0 oldState:(NSInteger)arg1 newState:(NSInteger)arg2 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidClick:(id)arg0 ;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)stopTrackingDelegate:(id)arg0 ;
+(id)sharedInstance;


@end


#endif