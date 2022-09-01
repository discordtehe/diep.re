// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISADCOLONYADAPTER_H
#define ISADCOLONYADAPTER_H


#import <CoreFoundation/CoreFoundation.h>

@class ISBaseAdapter;
@class AdColonyAppOptions;

@interface ISAdColonyAdapter : ISBaseAdapter

@property (nonatomic) BOOL didSDKStartInitiate; // ivar: _didSDKStartInitiate
@property (nonatomic) BOOL didSDKFinishInitiating; // ivar: _didSDKFinishInitiating
@property (nonatomic) BOOL interstitialInitPending; // ivar: _interstitialInitPending
@property (retain, nonatomic) AdColonyAppOptions *adColonyOptions; // ivar: _adColonyOptions
@property (retain, nonatomic) NSMutableArray *pendingRVZones; // ivar: _pendingRVZones
@property (retain, nonatomic) NSArray *initedZones; // ivar: _initedZones
@property (readonly, nonatomic) NSMutableDictionary *zonesToInterstitialAdsMap; // ivar: _zonesToInterstitialAdsMap
@property (readonly, nonatomic) NSMutableDictionary *zonesToRewardedAdsMap; // ivar: _zonesToRewardedAdsMap


-(id)initAdapter:(id)arg0 ;
-(void)dealloc;
-(id)version;
-(id)sdkVersion;
-(id)systemFrameworks;
-(id)sdkName;
-(void)setConsent:(BOOL)arg0 ;
-(void)initRVWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)showRewardedVideoWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)fetchRewardedVideoWithAdapterConfig:(id)arg0 delegate:(id)arg1 ;
-(BOOL)hasAvailableAdsForAdapterConfig:(id)arg0 ;
-(void)initISWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadInterstitialWithAdapterConfig:(id)arg0 activeDelegate:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(BOOL)hasInterstitialWithAdapterConfig:(id)arg0 ;
-(void)initWithAppId:(id)arg0 userId:(id)arg1 allZoneIds:(id)arg2 ;
-(void)setRewardAndLoadRVZone:(id)arg0 ;
-(void)requestISWithZoneId:(id)arg0 ;
-(void)showISAdWithViewController:(id)arg0 zone:(id)arg1 ;
-(void)requestRVWithZoneId:(id)arg0 ;
-(void)showRVAdWithViewController:(id)arg0 zone:(id)arg1 ;
-(void)onBecameActive;


@end


#endif