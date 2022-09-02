// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPINTERSTITIALADMANAGER_H
#define MPINTERSTITIALADMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPBaseInterstitialAdapter;
@class MPAdServerCommunicator;
@class MPAdConfiguration;
@class MPAdTargeting;
@protocol MPAdServerCommunicatorDelegate;
@protocol MPInterstitialAdapterDelegate;
@protocol MPInterstitialAdManagerDelegate;

@interface MPInterstitialAdManager : NSObject <MPAdServerCommunicatorDelegate, MPInterstitialAdapterDelegate>



@property (nonatomic) BOOL loading; // ivar: _loading
@property (nonatomic) BOOL ready; // ivar: _ready
@property (retain, nonatomic) MPBaseInterstitialAdapter *adapter; // ivar: _adapter
@property (retain, nonatomic) MPAdServerCommunicator *communicator; // ivar: _communicator
@property (retain, nonatomic) MPAdConfiguration *requestingConfiguration; // ivar: _requestingConfiguration
@property (retain, nonatomic) NSMutableArray *remainingConfigurations; // ivar: _remainingConfigurations
@property (nonatomic) CGFloat adapterLoadStartTimestamp; // ivar: _adapterLoadStartTimestamp
@property (retain, nonatomic) MPAdTargeting *targeting; // ivar: _targeting
@property (weak, nonatomic) NSObject<MPInterstitialAdManagerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(void)loadAdWithURL:(id)arg0 ;
-(void)loadInterstitialWithAdUnitID:(id)arg0 targeting:(id)arg1 ;
-(void)presentInterstitialFromViewController:(id)arg0 ;
-(id)location;
-(id)interstitialAdController;
-(id)interstitialDelegate;
-(void)communicatorDidReceiveAdConfigurations:(id)arg0 ;
-(void)fetchAdWithConfiguration:(id)arg0 ;
-(void)communicatorDidFailWithError:(id)arg0 ;
-(void)setUpAdapterWithConfiguration:(id)arg0 ;
-(NSUInteger)adTypeForAdServerCommunicator:(id)arg0 ;
-(id)adUnitIDForAdServerCommunicator:(id)arg0 ;
-(void)adapterDidFinishLoadingAd:(id)arg0 ;
-(void)adapter:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)interstitialWillAppearForAdapter:(id)arg0 ;
-(void)interstitialDidAppearForAdapter:(id)arg0 ;
-(void)interstitialWillDisappearForAdapter:(id)arg0 ;
-(void)interstitialDidDisappearForAdapter:(id)arg0 ;
-(void)interstitialDidExpireForAdapter:(id)arg0 ;
-(void)interstitialDidReceiveTapEventForAdapter:(id)arg0 ;
-(void)interstitialWillLeaveApplicationForAdapter:(id)arg0 ;
-(void)interstitialDidReceiveImpressionEventForAdapter:(id)arg0 ;


@end


#endif