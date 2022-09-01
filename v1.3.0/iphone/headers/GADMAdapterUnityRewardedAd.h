// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERUNITYREWARDEDAD_H
#define GADMADAPTERUNITYREWARDEDAD_H


#import <Foundation/Foundation.h>

@class GADMediationAdConfiguration;
@protocol GADMediationRewardedAd;
@protocol GADMAdapterUnityDataProvider;
@protocol UnityAdsExtendedDelegate;
@protocol GADMediationRewardedAdEventDelegate;

@interface GADMAdapterUnityRewardedAd : NSObject <GADMediationRewardedAd, GADMAdapterUnityDataProvider, UnityAdsExtendedDelegate>

 {
    id *_adLoadCompletionHandler;
    GADMediationAdConfiguration *_adConfiguration;
    id<GADMediationRewardedAdEventDelegate> *_adEventDelegate;
    NSString *_placementID;
    BOOL _isLoading;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)requestRewardedAd;
-(void)presentFromViewController:(id)arg0 ;
-(id)getPlacementID;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidClick:(id)arg0 ;
-(void)unityAdsPlacementStateChanged:(id)arg0 oldState:(NSInteger)arg1 newState:(NSInteger)arg2 ;


@end


#endif