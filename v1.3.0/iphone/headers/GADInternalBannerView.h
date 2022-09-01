// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINTERNALBANNERVIEW_H
#define GADINTERNALBANNERVIEW_H

@protocol OS_dispatch_queue, GADAdSizeDelegate><GADAdSizeDelegatePreview, GADInAppPurchaseDelegate;

#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADAdSource;
@class GADObserverCollection;
@class GADRefreshTimer;
@class GADTargeting;
@class GADCorrelator;
@class GADBannerAd;
@class GADVideoController;
@class GADEventContext;
@protocol GADEventContextSource;
@protocol GADBannerViewDelegate;
@protocol GADAppEventDelegate;

@interface GADInternalBannerView : UIView <GADEventContextSource>

 {
    GADAdSource *_adSource;
    BOOL _requestInProgress;
    GADAdSize _lastRequestedAdSize;
    unsigned int _lastRequestedCorrelationID;
    GADObserverCollection *_adObservers;
    GADRefreshTimer *_refreshTimer;
    GADTargeting *_refreshTargeting;
    GADAdSize _adSize;
    BOOL _hasAdSize;
    NSArray *_adOptions;
    BOOL _intermissionInProgress;
    NSObject<OS_dispatch_queue> *_lockQueue;
    GADCorrelator *_correlator;
    NSString *_adNetworkClassName;
    UIViewController *_rootViewController;
}


@property (copy, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (weak, nonatomic) UIViewController *rootViewController;
@property (nonatomic) GADAdSize adSize;
@property (weak, nonatomic) NSObject<GADBannerViewDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) NSObject<GADAdSizeDelegate><GADAdSizeDelegatePreview> *adSizeDelegate; // ivar: _adSizeDelegate
@property (nonatomic, getter=isAutoloadEnabled) BOOL autoloadEnabled; // ivar: _autoloadEnabled
@property (readonly, copy, nonatomic) NSString *adNetworkClassName;
@property (readonly, nonatomic) BOOL hasAutoRefreshed; // ivar: _hasAutoRefreshed
@property (weak, nonatomic) NSObject<GADInAppPurchaseDelegate> *inAppPurchaseDelegate; // ivar: _inAppPurchaseDelegate
@property (readonly, weak, nonatomic) UIView *mediatedAdView; // ivar: _mediatedAdView
@property (readonly, nonatomic) GADBannerAd *bannerAd; // ivar: _bannerAd
@property (weak, nonatomic) NSObject<GADAppEventDelegate> *appEventDelegate; // ivar: _appEventDelegate
@property (nonatomic) BOOL enableManualImpressions; // ivar: _enableManualImpressions
@property (retain, nonatomic) GADCorrelator *correlator;
@property (readonly, nonatomic) GADVideoController *videoController; // ivar: _videoController
@property (copy, nonatomic) NSArray *validAdSizes; // ivar: _validAdSizes
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context; // ivar: _context


-(id)initWithFrame:(struct CGRect )arg0 adSize:(struct GADAdSize )arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithAdSize:(struct GADAdSize )arg0 ;
-(id)initWithAdSize:(struct GADAdSize )arg0 origin:(struct CGPoint )arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(void)commonInit;
-(struct CGSize )intrinsicContentSize;
-(void)updateRefreshTimerWithConfiguration:(struct NSDictionary *)arg0 ad:(id)arg1 ;
-(void)updateTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadRequest:(id)arg0 ;
-(void)loadRequest:(id)arg0 completionHandler:(id)arg1 ;
-(BOOL)loadAd:(id)arg0 info:(struct NSDictionary *)arg1 error:(*id)arg2 ;
-(void)loadAd:(id)arg0 error:(id)arg1 serverResponseConfiguration:(struct NSDictionary *)arg2 completionHandler:(id)arg3 ;
-(BOOL)shouldOverrideInProgressRequest;
-(BOOL)shouldLoadRequest:(*id)arg0 ;
-(void)loadWithTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)callBackAdViewDidReceiveAd;
-(void)adLoadCompletedWithError:(id)arg0 ;
-(void)setAdOptions:(id)arg0 ;
-(id)adSource;
-(void)refresh;
-(void)attachContentSizeObservers;
-(void)intrinsicContentSizeDidChange:(struct CGSize )arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)resize:(struct GADAdSize )arg0 ;
-(void)attachLifecycleEventObservers;


@end


#endif