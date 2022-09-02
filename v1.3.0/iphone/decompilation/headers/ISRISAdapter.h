// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISRISADAPTER_H
#define ISRISADAPTER_H


#import <Foundation/Foundation.h>

@class ISBaseAdapter;
@class ISSupersonicAdsConfiguration;
@class SupersonicAdsPublisher;
@protocol SSARewardedVideoDelegate;

@interface ISRISAdapter : ISBaseAdapter <SSARewardedVideoDelegate>



@property (retain, nonatomic) ISSupersonicAdsConfiguration *configs; // ivar: _configs
@property (nonatomic) BOOL consent; // ivar: _consent
@property (nonatomic) BOOL didSetConsent; // ivar: _didSetConsent
@property (nonatomic) SupersonicAdsPublisher *instance; // ivar: _instance
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(id)version;
-(id)sdkVersion;
-(void)initISWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadInterstitialWithAdapterConfig:(id)arg0 activeDelegate:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(BOOL)hasInterstitialWithAdapterConfig:(id)arg0 ;
-(void)setSDK5ParametersWithAdapterConfig:(id)arg0 ;
-(void)ssaRewardedVideoDidUpdateAdUnits:(id)arg0 ;
-(void)ssaRewardedVideoNoMoreOffers;
-(void)ssaRewardedVideoDidFailInitWithError:(id)arg0 ;
-(void)ssaRewardedVideoDidFailShowWithError:(id)arg0 ;
-(void)ssaRewardedVideoWindowWillOpen;
-(void)ssaRewardedVideoWindowDidClose;
-(void)ssaRewardedVideoDidReceiveCredit:(id)arg0 ;
-(void)ssaRewardedVideoAdClicked;
-(void)ssaRewardedVideoAdDidReceiveNotificationOnEvent:(id)arg0 extData:(id)arg1 ;
-(void)setMediationState:(NSInteger)arg0 forAdUnit:(id)arg1 ;
-(void)applyConsent:(BOOL)arg0 ;


@end


#endif