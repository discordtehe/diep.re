// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERIRONSOURCEREWARDEDAD_H
#define GADMADAPTERIRONSOURCEREWARDEDAD_H


#import <Foundation/Foundation.h>

@class GADMediationAdConfiguration;
@protocol ISDemandOnlyRewardedVideoDelegate;
@protocol GADMAdapterIronSourceDelegate;
@protocol GADMediationRewardedAd;
@protocol GADMediationRewardedAdEventDelegate;

@interface GADMAdapterIronSourceRewardedAd : NSObject <ISDemandOnlyRewardedVideoDelegate, GADMAdapterIronSourceDelegate, GADMediationRewardedAd>



@property (copy, nonatomic) id *adLoadCompletionHandler; // ivar: _adLoadCompletionHandler
@property (weak, nonatomic) GADMediationAdConfiguration *adConfiguration; // ivar: _adConfiguration
@property (weak, nonatomic) NSObject<GADMediationRewardedAdEventDelegate> *adEventDelegate; // ivar: _adEventDelegate
@property (nonatomic) BOOL isLogEnabled; // ivar: _isLogEnabled
@property (retain, nonatomic) NSString *instanceID; // ivar: _instanceID
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithGADMediationRewardedAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)requestRewardedAd;
-(void)presentFromViewController:(id)arg0 ;
-(void)parseCredentials;
-(void)didReceiveRewardForPlacement:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidOpen:(id)arg0 ;
-(void)rewardedVideoDidClose:(id)arg0 ;
-(void)didClickRewardedVideo:(id)arg0 instanceId:(id)arg1 ;
-(id)getInstanceID;
-(void)didFailToLoadAdWithError:(id)arg0 ;
-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 instanceId:(id)arg1 ;
-(void)onLog:(id)arg0 ;


@end


#endif