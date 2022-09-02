// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERUNITY_H
#define GADMADAPTERUNITY_H


#import <Foundation/Foundation.h>

@protocol GADMAdNetworkAdapter;
@protocol GADMAdapterUnityDataProvider;
@protocol UnityAdsExtendedDelegate;
@protocol UnityAdsBannerDelegate;
@protocol GADMAdNetworkConnector;

@interface GADMAdapterUnity : NSObject <GADMAdNetworkAdapter, GADMAdapterUnityDataProvider, UnityAdsExtendedDelegate, UnityAdsBannerDelegate>

 {
    id<GADMAdNetworkConnector> *_networkConnector;
    NSString *_placementID;
    BOOL _isLoading;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)stopBeingDelegate;
-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)getInterstitial;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(BOOL)isBannerAnimationOK:(NSInteger)arg0 ;
-(id)getPlacementID;
-(void)unityAdsPlacementStateChanged:(id)arg0 oldState:(NSInteger)arg1 newState:(NSInteger)arg2 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidClick:(id)arg0 ;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsBannerDidClick:(id)arg0 ;
-(void)unityAdsBannerDidError:(id)arg0 ;
-(void)unityAdsBannerDidHide:(id)arg0 ;
-(void)unityAdsBannerDidLoad:(id)arg0 view:(id)arg1 ;
-(void)unityAdsBannerDidShow:(id)arg0 ;
-(void)unityAdsBannerDidUnload:(id)arg0 ;
+(Class)mainAdapterClass;
+(id)adapterVersion;
+(Class)networkExtrasClass;


@end


#endif