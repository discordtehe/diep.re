// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINTERSTITIAL_H
#define GADINTERSTITIAL_H

@protocol OS_dispatch_queue, GADInAppPurchaseDelegate;

#import <Foundation/Foundation.h>

@class GADInterstitialAd;
@class GADAdSource;
@class GADObserverCollection;
@class GADCorrelator;
@class GADInterstitial;
@class GADTargeting;
@protocol GADAppEventDelegate;
@protocol GADInterstitialDelegate;

@interface GADInterstitial : NSObject {
    GADInterstitialAd *_interstitialAd;
    GADAdSource *_adSource;
    BOOL _requestInProgress;
    GADObserverCollection *_adObservers;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSString *_adNetworkClassName;
    GADCorrelator *_correlator;
    GADInterstitial *_retainCycle;
    unsigned int _lastRequestedCorrelationID;
    GADTargeting *_refreshTargeting;
}


@property (retain, nonatomic) GADCorrelator *correlator;
@property (weak, nonatomic) NSObject<GADAppEventDelegate> *appEventDelegate; // ivar: _appEventDelegate
@property (readonly, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (weak, nonatomic) NSObject<GADInterstitialDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) BOOL isReady;
@property (readonly, nonatomic) BOOL hasBeenUsed; // ivar: _hasBeenUsed
@property (readonly, nonatomic) NSString *adNetworkClassName;
@property (weak, nonatomic) NSObject<GADInAppPurchaseDelegate> *inAppPurchaseDelegate; // ivar: _inAppPurchaseDelegate


-(id)initWithAdUnitID:(id)arg0 ;
-(void)dealloc;
-(BOOL)shouldOverrideInProgressRequest;
-(void)loadRequest:(id)arg0 ;
-(void)loadRequest:(id)arg0 completionHandler:(id)arg1 ;
-(void)updateTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadWithTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(BOOL)refreshAllowedWithRefreshAd:(id)arg0 ;
-(void)refreshAfterDelay;
-(void)adLoadCompletedWithError:(id)arg0 ;
-(void)presentFromRootViewController:(id)arg0 ;
-(void)adPresentationDidFail;
-(void)setInterstitialAd:(id)arg0 ;
-(id)adSource;
-(void)adInvalidated;
-(void)attachLifecycleEventObservers;
-(id)init;


@end


#endif