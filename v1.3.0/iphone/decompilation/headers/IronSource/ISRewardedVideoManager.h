// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISREWARDEDVIDEOMANAGER_H
#define ISREWARDEDVIDEOMANAGER_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ISBaseManager;
@class ISRewardedVideoDemandOnlyHelper;
@class ISDailyCappingManager;
@class ISRewardedVideoProductSettings;
@protocol SSENotifierProtocol;
@protocol ISRewardedVideoSMASHDelegate;
@protocol ISDailyCappingManagerDelegate;

@interface ISRewardedVideoManager : ISBaseManager <SSENotifierProtocol, ISRewardedVideoSMASHDelegate, ISDailyCappingManagerDelegate>

 {
    ISRewardedVideoDemandOnlyHelper *_demandOnlyHelper;
    ISDailyCappingManager *_dailyCappingManager;
    NSInteger _loadIntervalSecs;
    NSTimer *_timer;
}


@property (nonatomic) BOOL shouldSendUltraImpresion; // ivar: _shouldSendUltraImpresion
@property (nonatomic) BOOL hasRewardedVideo; // ivar: _hasRewardedVideo
@property (nonatomic) BOOL shouldSendUltraEvents; // ivar: _shouldSendUltraEvents
@property (nonatomic) BOOL shouldSendFirstAvailability; // ivar: _shouldSendFirstAvailability
@property (retain) ISRewardedVideoProductSettings *rvSettings; // ivar: _rvSettings
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithProvidersPool:(id)arg0 settings:(id)arg1 isDemandOnlyMode:(BOOL)arg2 ;
-(void)dealloc;
-(void)initRVWithUserId:(id)arg0 ;
-(void)showRewardedVideoWithViewController:(id)arg0 placement:(id)arg1 ;
-(void)showRewardedVideoWithViewController:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 forSMASH:(id)arg1 ;
-(void)rewardedVideoDidOpenForSMASH:(id)arg0 ;
-(void)rewardedVideoDidStartForSMASH:(id)arg0 ;
-(void)rewardedVideoDidEndForSMASH:(id)arg0 ;
-(void)rewardedVideoDidCloseForSMASH:(id)arg0 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)didReceiveRewardForSMASH:(id)arg0 ;
-(void)didClickRewardedVideoForSMASH:(id)arg0 ;
-(void)rewardedVideoDidBecomeVisibileForSMASH:(id)arg0 ;
-(id)getRewadedVideoSMASHesFromConfigArray:(id)arg0 ;
-(void)loadNextSMASH;
-(void)showActiveAdapter:(id)arg0 fromViewController:(id)arg1 ;
-(void)fetchVideoForInactiveSMASHesDiffrentFromSMASH:(id)arg0 ;
-(BOOL)didCompleteSmartLoaderIteration;
-(BOOL)areAllAdaptersInactive;
-(void)handleMediationAvailability:(BOOL)arg0 ;
-(BOOL)shouldUpdateAvailability:(BOOL)arg0 ;
-(void)updateStateFirstAvailability;
-(void)sendDelegateRVAdAvailabilityChanged:(BOOL)arg0 ;
-(void)sendEventRVAdAvailabilityChanged:(BOOL)arg0 ;
-(BOOL)shouldSendOldUltraEvent;
-(BOOL)hasAvailableAds;
-(BOOL)hasAvailableAds:(id)arg0 ;
-(void)sendAvailabilityForStatistics;
-(void)reportCheckAdAvailable:(id)arg0 status:(id)arg1 ;
-(void)reportImpressionWithUrl:(id)arg0 value:(BOOL)arg1 name:(id)arg2 withPlacementId:(id)arg3 ;
-(void)reportShowCheckAvailibility:(id)arg0 ;
-(void)reportShowChanceEvents:(id)arg0 ;
-(void)reportShowChance:(id)arg0 status:(BOOL)arg1 ;
-(void)reportImpressionsAfterShow:(id)arg0 ;
-(void)initiateBackfill;
-(BOOL)canLoadBackfill;
-(void)disablePremiumForCurrentSession;
-(void)handleCappingMessageForPlacement:(id)arg0 message:(id)arg1 ;
-(NSInteger)rewardedVideoPlacementStatus:(id)arg0 ;
-(BOOL)isRewardedVideoCappedForPlacement:(id)arg0 ;
-(void)reachabilityChanged:(id)arg0 ;
-(void)sendProviderEvent:(id)arg0 eventId:(NSInteger)arg1 data:(id)arg2 ;
-(void)dailyCapReleased;
-(void)startLoadTimerForSelector:(SEL)arg0 ;
-(void)onRewardedVideoLoadTick:(id)arg0 ;


@end


#endif