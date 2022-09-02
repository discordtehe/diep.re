// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISINTERSTITIALMANAGER_H
#define ISINTERSTITIALMANAGER_H

@protocol ISRewardedInterstitialDelegate;

#import <Foundation/Foundation.h>

@class ISBaseManager;
@class ISInterstitialDemandOnlyHelper;
@class ISDailyCappingManager;
@class ISInterstitialProductSettings;
@protocol ISInterstitialSMASHDelegate;
@protocol ISRewardedInterstitialSMASHDelegate;
@protocol ISDailyCappingManagerDelegate;

@interface ISInterstitialManager : ISBaseManager <ISInterstitialSMASHDelegate, ISRewardedInterstitialSMASHDelegate, ISDailyCappingManagerDelegate>

 {
    ISInterstitialDemandOnlyHelper *_demandOnlyHelper;
    BOOL _shouldSendAdReadyEvent;
    BOOL _isLoadInterstitialInProgress;
    BOOL _isLoadInterstitialCalled;
    ISDailyCappingManager *_dailyCappingManager;
}


@property (retain, nonatomic) NSObject<ISRewardedInterstitialDelegate> *rewardDelegate; // ivar: _rewardDelegate
@property (retain) ISInterstitialProductSettings *isSettings; // ivar: _isSettings
@property (nonatomic) int loadFailedDelay; // ivar: _loadFailedDelay
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithProvidersPool:(id)arg0 settings:(id)arg1 isDemandOnlyMode:(BOOL)arg2 ;
-(void)initISWithUserId:(id)arg0 ;
-(BOOL)hasInterstitial;
-(BOOL)hasInterstitial:(id)arg0 ;
-(void)loadInterstitial;
-(void)loadInterstitial:(id)arg0 ;
-(void)showInterstitialWithViewController:(id)arg0 placement:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
-(void)supersonicISInitSuccessWithSMASH:(id)arg0 ;
-(void)supersonicISInitFailedWithError:(id)arg0 SMASH:(id)arg1 ;
-(void)interstitialDidLoadForSMASH:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)interstitialDidOpenForSMASH:(id)arg0 ;
-(void)interstitialDidCloseForSMASH:(id)arg0 ;
-(void)interstitialDidShowForSMASH:(id)arg0 ;
-(void)interstitialDidFailToShowWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)interstitialDidBecomeVisibleForSMASH:(id)arg0 ;
-(void)didClickInterstitialForSMASH:(id)arg0 ;
-(void)didReceiveRewardForInterstitialForSMASH:(id)arg0 ;
-(void)log:(id)arg0 ;
-(id)getInterstitialSMASHesFromConfigArray:(id)arg0 ;
-(void)reportShowChanceEvents:(id)arg0 ;
-(void)reportShowChance:(id)arg0 status:(BOOL)arg1 ;
-(BOOL)loadNextSMASH;
-(void)loadInterstitialFromSMASH:(id)arg0 ;
-(BOOL)didCompleteSmartLoaderIteration;
-(void)handleCappingForPlacmentWithMessage:(id)arg0 ;
-(NSInteger)interstitialPlacementStatus:(id)arg0 ;
-(BOOL)isInterstitialCappedForPlacement:(id)arg0 ;
-(void)sendProviderEvent:(id)arg0 eventId:(NSInteger)arg1 data:(id)arg2 ;
-(void)sendMediationEvent:(NSInteger)arg0 data:(id)arg1 ;
-(void)dailyCapReleased;


@end


#endif