// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMREWARDBASEDVIDEOADNETWORKCONNECTOR_H
#define GADMREWARDBASEDVIDEOADNETWORKCONNECTOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADInterstitialAd;
@class GADMediatedIntermission;
@class GADMediationRewardBasedVideoAdRenderer;
@protocol GADMRewardBasedVideoAdNetworkConnector;
@protocol GADAdPresenting;
@protocol GADRewardedConnector;
@protocol GADMRewardBasedVideoAdNetworkAdapter;

@interface GADMRewardBasedVideoAdNetworkConnector : NSObject <GADMRewardBasedVideoAdNetworkConnector, GADAdPresenting, GADRewardedConnector>

 {
    id<GADMRewardBasedVideoAdNetworkAdapter> *_adapter;
    NSString *_adapterClassName;
    GADInterstitialAd *_rewardedAd;
    GADMediatedIntermission *_intermission;
    uint8_t _adapterSetUp;
}


@property (readonly, copy, nonatomic) NSString *adapterName;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (copy, nonatomic) NSDictionary *adConfiguration; // ivar: _adConfiguration
@property (weak, nonatomic) GADMediationRewardBasedVideoAdRenderer *renderer; // ivar: _renderer


-(id)initWithAdNetworkConfiguration:(id)arg0 adapterClassName:(id)arg1 renderer:(id)arg2 ;
-(void)setUpAdapter;
-(void)setRewardBasedVideoAd:(id)arg0 ;
-(void)requestRewardBasedVideoAd;
-(void)stopBeingDelegate;
-(void)adapterDidSetUpRewardBasedVideoAd:(id)arg0 ;
-(void)adapter:(id)arg0 didFailToSetUpRewardBasedVideoAdWithError:(id)arg1 ;
-(void)adapterDidReceiveRewardBasedVideoAd:(id)arg0 ;
-(void)adapter:(id)arg0 didFailToLoadRewardBasedVideoAdwithError:(id)arg1 ;
-(void)adapterDidOpenRewardBasedVideoAd:(id)arg0 ;
-(void)adapterDidStartPlayingRewardBasedVideoAd:(id)arg0 ;
-(void)adapterDidCompletePlayingRewardBasedVideoAd:(id)arg0 ;
-(void)adapterDidCloseRewardBasedVideoAd:(id)arg0 ;
-(void)adapterWillLeaveApplication:(id)arg0 ;
-(void)adapter:(id)arg0 didRewardUserWithReward:(id)arg1 ;
-(void)adapterDidGetAdClick:(id)arg0 ;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;
-(id)publisherId;
-(id)credentials;
-(id)networkExtras;
-(id)childDirectedTreatment;
-(id)maxAdContentRating;
-(id)underAgeOfConsent;
-(NSInteger)userGender;
-(id)userBirthday;
-(BOOL)userHasLocation;
-(id)userLocation;
-(CGFloat)userLatitude;
-(CGFloat)userLongitude;
-(CGFloat)userLocationAccuracyInMeters;
-(id)userLocationDescription;
-(id)userKeywords;
-(BOOL)testMode;


@end


#endif