// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADBANNERVIEW_H
#define GADBANNERVIEW_H

@protocol GADInAppPurchaseDelegate;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class GADRequest;
@class GADObserverCollection;
@class GADInternalBannerView;
@class GADCorrelator;
@protocol GADBannerViewDelegate;
@protocol GADAdSizeDelegate;
@protocol GADAdSizeDelegatePreview;
@protocol GADBannerViewDelegate;
@protocol GADAdSizeDelegate;

@interface GADBannerView : UIView <GADBannerViewDelegate, GADAdSizeDelegate, GADAdSizeDelegatePreview>

 {
    GADRequest *_lastRequest;
    BOOL _hasInitialized;
    GADObserverCollection *_observers;
}


@property (readonly, nonatomic) GADInternalBannerView *bannerView; // ivar: _bannerView
@property (readonly, nonatomic) CGSize effectiveContentSize;
@property (retain, nonatomic) GADCorrelator *correlator; // ivar: _correlator
@property (copy, nonatomic) NSString *adUnitID;
@property (weak, nonatomic) UIViewController *rootViewController;
@property (nonatomic) GADAdSize adSize; // ivar: _adSize
@property (weak, nonatomic) NSObject<GADBannerViewDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) NSObject<GADAdSizeDelegate> *adSizeDelegate; // ivar: _adSizeDelegate
@property (nonatomic, getter=isAutoloadEnabled) BOOL autoloadEnabled; // ivar: _autoloadEnabled
@property (readonly, nonatomic) NSString *adNetworkClassName;
@property (readonly, nonatomic) BOOL hasAutoRefreshed; // ivar: _hasAutoRefreshed
@property (weak, nonatomic) NSObject<GADInAppPurchaseDelegate> *inAppPurchaseDelegate; // ivar: _inAppPurchaseDelegate
@property (readonly, weak, nonatomic) UIView *mediatedAdView;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdSize:(struct GADAdSize )arg0 origin:(struct CGPoint )arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithAdSize:(struct GADAdSize )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)commonInit;
-(struct CGSize )intrinsicContentSize;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(struct GADAdSize )adSizeForSize:(struct CGSize )arg0 ;
-(struct CGSize )sizeForAdSize:(struct GADAdSize )arg0 ;
-(void)resize:(struct GADAdSize )arg0 ;
-(void)loadRequest:(id)arg0 ;
-(void)updateReceivedAdSizeWithPublicUpdate:(BOOL)arg0 ;
-(void)adViewDidReceiveAd:(id)arg0 ;
-(void)adView:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)adViewWillPresentScreen:(id)arg0 ;
-(void)adViewWillDismissScreen:(id)arg0 ;
-(void)adViewDidDismissScreen:(id)arg0 ;
-(void)adViewWillLeaveApplication:(id)arg0 ;
-(void)adViewIntrinsicContentSizeDidChange:(id)arg0 ;
-(void)adView:(id)arg0 willChangeAdSizeTo:(struct GADAdSize )arg1 ;


@end


#endif