// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREWARDBASEDVIDEOAD_H
#define GADREWARDBASEDVIDEOAD_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADInterstitialAd;
@class GADAdSource;
@class GADObserverCollection;
@protocol GADRewardBasedVideoAdDelegate;

@interface GADRewardBasedVideoAd : NSObject {
    GADInterstitialAd *_rewardBasedVideoAd;
    GADAdSource *_adSource;
    BOOL _requestInProgress;
    GADObserverCollection *_intermissionObservers;
    GADObserverCollection *_rewardedAdObservers;
    NSString *_adUnitID;
    GADObserverCollection *_appSettingsObservers;
    BOOL _isAdPresenting;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSString *_adNetworkClassName;
    NSDictionary *_adMetadata;
}


@property (weak, nonatomic) NSObject<GADRewardBasedVideoAdDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic, getter=isReady) BOOL ready;
@property (readonly, copy, nonatomic) NSString *adNetworkClassName;
@property (copy, nonatomic) NSString *userIdentifier; // ivar: _userIdentifier
@property (copy, nonatomic) NSString *customRewardString; // ivar: _customRewardString
@property (readonly, nonatomic) NSDictionary *adMetadata;


-(id)init;
-(void)dealloc;
-(void)updateTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadRequest:(id)arg0 withAdUnitID:(id)arg1 ;
-(void)removeExistingAd;
-(void)loadWithTargeting:(id)arg0 ;
-(void)adInvalidated;
-(void)adLoadCompletedWithError:(id)arg0 ;
-(void)presentFromRootViewController:(id)arg0 ;
-(void)adPresentationDidFail;
-(void)setRewardBasedVideoAd:(id)arg0 ;
-(id)adSource;
-(void)attachLifecycleEventObservers;
-(void)attachRewardedEventsObservers;
-(void)attachAppSettingsObservers;
-(void)setUpAdaptersFromApplicationSettings;
-(void)stopObservingApplicationConfiguration;
+(id)sharedInstance;


@end


#endif