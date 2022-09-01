// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISMEDIATIONMANAGER_H
#define ISMEDIATIONMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ISDemandOnlyRewardedVideoDelegate;
@protocol ISDemandOnlyInterstitialDelegate;

@interface ISMediationManager : NSObject <ISDemandOnlyRewardedVideoDelegate, ISDemandOnlyInterstitialDelegate>



@property (retain, nonatomic) NSMapTable *rewardedAdapterDelegates; // ivar: _rewardedAdapterDelegates
@property (retain, nonatomic) NSMapTable *interstitialAdapterDelegates; // ivar: _interstitialAdapterDelegates
@property (retain, nonatomic) NSMutableDictionary *initializedAppKeys; // ivar: _initializedAppKeys
@property (retain, nonatomic) NSString *currentShowingRewardedInstanceID; // ivar: _currentShowingRewardedInstanceID
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)initIronSourceSDKWithAppKey:(id)arg0 forAdUnits:(id)arg1 ;
-(void)addRewardedDelegate:(id)arg0 forInstanceID:(id)arg1 ;
-(void)removeRewardedDelegateForInstanceID:(id)arg0 ;
-(id)getRewardedDelegateForInstanceID:(id)arg0 ;
-(void)addInterstitialDelegate:(id)arg0 forInstanceID:(id)arg1 ;
-(void)removeInterstitialDelegateForInstanceID:(id)arg0 ;
-(id)getInterstitialDelegateForInstanceID:(id)arg0 ;
-(void)requestRewardedAdWithDelegate:(id)arg0 ;
-(void)presentRewardedAdFromViewController:(id)arg0 delegate:(id)arg1 ;
-(void)requestInterstitialAdWithDelegate:(id)arg0 ;
-(void)presentInterstitialAdFromViewController:(id)arg0 delegate:(id)arg1 ;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 instanceId:(id)arg1 ;
-(void)didReceiveRewardForPlacement:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidOpen:(id)arg0 ;
-(void)rewardedVideoDidClose:(id)arg0 ;
-(void)didClickRewardedVideo:(id)arg0 instanceId:(id)arg1 ;
-(void)interstitialDidLoad:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)interstitialDidOpen:(id)arg0 ;
-(void)interstitialDidClose:(id)arg0 ;
-(void)interstitialDidShow:(id)arg0 ;
-(void)interstitialDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)didClickInterstitial:(id)arg0 ;
+(id)sharedManager;


@end


#endif