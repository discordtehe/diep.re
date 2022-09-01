// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISUNITYADSADAPTER_H
#define ISUNITYADSADAPTER_H

@protocol OS_dispatch_semaphore;

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ISBaseAdapter;
@protocol UnityAdsDelegate;
@protocol UnityAdsExtendedDelegate;

@interface ISUnityAdsAdapter : ISBaseAdapter <UnityAdsDelegate, UnityAdsExtendedDelegate>

 {
    NSMutableSet *_mZoneReceivedFirstStatus;
}


@property (retain, nonatomic) NSObject<OS_dispatch_semaphore> *firstAvailabilitySemaphore; // ivar: _firstAvailabilitySemaphore
@property (nonatomic) BOOL didCallLoad; // ivar: _didCallLoad
@property (copy, nonatomic) NSString *readyZoneId; // ivar: _readyZoneId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(id)sdkVersion;
-(id)version;
-(id)systemFrameworks;
-(id)sdkName;
-(void)initRVWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)showRewardedVideoWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)fetchRewardedVideoWithAdapterConfig:(id)arg0 delegate:(id)arg1 ;
-(BOOL)hasAvailableAdsForAdapterConfig:(id)arg0 ;
-(void)initISWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadInterstitialWithAdapterConfig:(id)arg0 activeDelegate:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(BOOL)hasInterstitialWithAdapterConfig:(id)arg0 ;
-(void)initWithSourceId:(id)arg0 block:(id)arg1 ;
-(void)showAdWithZoneId:(id)arg0 viewController:(id)arg1 block:(id)arg2 ;
-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)setConsent:(BOOL)arg0 ;
-(void)unityAdsDidClick:(id)arg0 ;
-(void)unityAdsPlacementStateChanged:(id)arg0 oldState:(NSInteger)arg1 newState:(NSInteger)arg2 ;
-(id)placementStateToString:(NSInteger)arg0 ;


@end


#endif