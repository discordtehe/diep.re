// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISBASEADAPTER_H
#define ISBASEADAPTER_H


#import <Foundation/Foundation.h>

@protocol ISInterstitialAdapterProtocol;
@protocol ISRewardedVideoAdapterProtocol;
@protocol ISBannerAdapterProtocol;
@protocol ISOfferwallAdapterProtocol;
@protocol ISAdapterLoggerProtocol;
@protocol ISAdapterDispatcherProtocol;
@protocol ISBannerAdapterDelegate;
@protocol ISInterstitialAdapterDelegate;
@protocol ISRewardedVideoAdapterDelegate;

@interface ISBaseAdapter : NSObject <ISInterstitialAdapterProtocol, ISRewardedVideoAdapterProtocol, ISBannerAdapterProtocol, ISOfferwallAdapterProtocol>



@property (retain, nonatomic) NSObject<ISAdapterLoggerProtocol> *logger; // ivar: _logger
@property (retain, nonatomic) NSObject<ISAdapterDispatcherProtocol> *dispatcher; // ivar: _dispatcher
@property (readonly, weak, nonatomic) NSObject<ISBannerAdapterDelegate> *bannerActiveDelegate; // ivar: _bannerActiveDelegate
@property (readonly, nonatomic) NSHashTable *bannerDelegates; // ivar: _bannerDelegates
@property (readonly, nonatomic) NSOperationQueue *bnDelegateQueue; // ivar: _bnDelegateQueue
@property (readonly, nonatomic) NSMapTable *bannerDelegateMapHolders; // ivar: _bannerDelegateMapHolders
@property (readonly, weak, nonatomic) NSObject<ISInterstitialAdapterDelegate> *interstitialActiveDelegate; // ivar: _interstitialActiveDelegate
@property (readonly, nonatomic) NSHashTable *interstitialDelegates; // ivar: _interstitialDelegates
@property (readonly, nonatomic) NSOperationQueue *isDelegateQueue; // ivar: _isDelegateQueue
@property (readonly, nonatomic) NSMapTable *interstitialDelegateMapHolders; // ivar: _interstitialDelegateMapHolders
@property (readonly, weak, nonatomic) NSObject<ISRewardedVideoAdapterDelegate> *rewardedVideoActiveDelegate; // ivar: _rewardedVideoActiveDelegate
@property (readonly, nonatomic) NSHashTable *rewardedVideoDelegates; // ivar: _rewardedVideoDelegates
@property (readonly, nonatomic) NSOperationQueue *rvDelegateQueue; // ivar: _rvDelegateQueue
@property (readonly, nonatomic) NSMapTable *rewardedVideoDelegateMapHolders; // ivar: _rewardedVideoDelegateMapHolders
@property (nonatomic) BOOL didFinishLoadingBanner; // ivar: _didFinishLoadingBanner
@property (nonatomic) BOOL interstitialReady; // ivar: _interstitialReady
@property (retain, nonatomic) NSString *adapterName; // ivar: _adapterName
@property (nonatomic) NSInteger usersAge; // ivar: _usersAge
@property (nonatomic) NSInteger usersGender; // ivar: _usersGender
@property (nonatomic) BOOL adaptersDebug; // ivar: _adaptersDebug
@property (retain, nonatomic) NSString *pluginType; // ivar: _pluginType
@property (retain, nonatomic) NSString *pluginFrameworkVersion; // ivar: _pluginFrameworkVersion
@property (retain, nonatomic) NSString *userId; // ivar: _userId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(void)addRewardedVideoDelegate:(id)arg0 ;
-(void)removeRewardedVideoDelegate:(id)arg0 ;
-(void)addRewardedVideoDelegate:(id)arg0 forPlacement:(id)arg1 ;
-(id)dynamicUserId;
-(id)getDelegateForPlacement:(id)arg0 ;
-(void)notifyRewardedVideoAvialbilty:(BOOL)arg0 ;
-(void)notifyRewardedVideoAvialbilty:(BOOL)arg0 forDelegate:(id)arg1 ;
-(void)notifyRewardedVideoDidFailToShowWithError:(id)arg0 forDelegate:(id)arg1 ;
-(void)notifyRewardedVideoReceiveRewardForDelegate:(id)arg0 ;
-(void)notifyRewardedVideoDidOpenForDelegate:(id)arg0 ;
-(void)notifyRewardedVideoDidCloseForDelegate:(id)arg0 ;
-(void)notifyRewardedVideoDidStartForDelegate:(id)arg0 ;
-(void)notifyRewardedVideoDidEndForDelegate:(id)arg0 ;
-(void)notifyRewardedVideoDidClickForDelegate:(id)arg0 ;
-(void)notifyRewardedVideoDidBecomeVisibleForDelegate:(id)arg0 ;
-(void)setInterstititalActiveDelegate:(id)arg0 ;
-(void)addInterstititalDelegate:(id)arg0 ;
-(void)removeInterstititalDelegate:(id)arg0 ;
-(void)addInterstititalDelegate:(id)arg0 forPlacement:(id)arg1 ;
-(void)notifyInterstitialInitSuccess;
-(void)notifyInterstitialInitFailedWithError:(id)arg0 ;
-(void)notifyInterstitialDidLoad;
-(void)notifyInterstitialDidLoadFailedWithError:(id)arg0 ;
-(void)notifyInterstitialInitFailedWithError:(id)arg0 forDelegate:(id)arg1 ;
-(void)notifyInterstitialInitSuccessForDelegate:(id)arg0 ;
-(void)notifyInterstitialDidLoadForDelegate:(id)arg0 ;
-(void)notifyInterstitialDidLoadFailedWithError:(id)arg0 forDelegate:(id)arg1 ;
-(void)notifyInterstitialDidOpenForDelegate:(id)arg0 ;
-(void)notifyInterstitialDidCloseForDelegate:(id)arg0 ;
-(void)notifyInterstitialDidShowForDelegate:(id)arg0 ;
-(void)notifyInterstitialDidFailToShowWithError:(id)arg0 forDelegate:(id)arg1 ;
-(void)notifyInterstitialDidClickForDelegate:(id)arg0 ;
-(void)notifyInterstitialDidReceiveRewardForDelegate:(id)arg0 ;
-(void)notifyInterstitialDidBecomeVisibleForDelegate:(id)arg0 ;
-(void)addBannerDelegate:(id)arg0 ;
-(void)removeBannerDelegate:(id)arg0 ;
-(void)addBannerDelegate:(id)arg0 forPlacement:(id)arg1 ;
-(void)notifyBannerInitSuccess;
-(void)notifyBannerInitFailedWithError:(id)arg0 ;
-(void)notifyBannerInitSuccessForDelegate:(id)arg0 ;
-(void)notifyBannerInitFailedWithError:(id)arg0 forDelegate:(id)arg1 ;
-(void)notifyBannerDidLoad:(id)arg0 forDelegate:(id)arg1 ;
-(void)notifyBannerDidFailToLoadWithError:(id)arg0 forDelegate:(id)arg1 ;
-(void)notifyBannerDidClickForDelegate:(id)arg0 ;
-(void)notifyBannerWillPresentScreenForDelegate:(id)arg0 ;
-(void)notifyBannerDidDismissScreenForDelegate:(id)arg0 ;
-(void)notifyBannerWillLeaveApplicationForDelegate:(id)arg0 ;
-(BOOL)isConfigValueValid:(id)arg0 ;
-(id)errorForMissingCredentialFieldWithName:(id)arg0 ;
-(id)topMostController;
-(void)setMediationState:(NSInteger)arg0 forAdUnit:(id)arg1 ;
-(void)setConsent:(BOOL)arg0 ;
-(id)version;
-(id)sdkVersion;
-(id)systemFrameworks;
-(id)sdkName;


@end


#endif