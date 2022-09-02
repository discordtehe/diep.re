// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPINTERSTITIALADCONTROLLER_H
#define MPINTERSTITIALADCONTROLLER_H


#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPInterstitialAdManager;
@protocol MPInterstitialAdManagerDelegate;
@protocol MPMoPubAd;
@protocol MPInterstitialAdControllerDelegate;

@interface MPInterstitialAdController : NSObject <MPInterstitialAdManagerDelegate, MPMoPubAd>



@property (retain, nonatomic) MPInterstitialAdManager *manager; // ivar: _manager
@property (weak, nonatomic) NSObject<MPInterstitialAdControllerDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSString *adUnitId; // ivar: _adUnitId
@property (copy, nonatomic) NSString *keywords; // ivar: _keywords
@property (copy, nonatomic) NSString *userDataKeywords; // ivar: _userDataKeywords
@property (copy, nonatomic) CLLocation *location; // ivar: _location
@property (copy, nonatomic) NSDictionary *localExtras; // ivar: _localExtras
@property (readonly, nonatomic) BOOL ready;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdUnitId:(id)arg0 ;
-(void)dealloc;
-(void)loadAd;
-(void)showFromViewController:(id)arg0 ;
-(id)interstitialAdController;
-(id)interstitialDelegate;
-(void)managerDidLoadInterstitial:(id)arg0 ;
-(void)manager:(id)arg0 didFailToLoadInterstitialWithError:(id)arg1 ;
-(void)managerWillPresentInterstitial:(id)arg0 ;
-(void)managerDidPresentInterstitial:(id)arg0 ;
-(void)managerWillDismissInterstitial:(id)arg0 ;
-(void)managerDidDismissInterstitial:(id)arg0 ;
-(void)managerDidExpireInterstitial:(id)arg0 ;
-(void)managerDidReceiveTapEventFromInterstitial:(id)arg0 ;
-(void)interstitialAdManager:(id)arg0 didReceiveImpressionEventWithImpressionData:(id)arg1 ;
+(id)interstitialAdControllerForAdUnitId:(id)arg0 ;
+(id)sharedInterstitials;
+(id)sharedInterstitialAdControllers;
+(void)removeSharedInterstitialAdController:(id)arg0 ;


@end


#endif