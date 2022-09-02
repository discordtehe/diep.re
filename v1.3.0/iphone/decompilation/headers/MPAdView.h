// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADVIEW_H
#define MPADVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPBannerAdManager;
@protocol MPBannerAdManagerDelegate;
@protocol MPMoPubAd;
@protocol MPAdViewDelegate;

@interface MPAdView : UIView <MPBannerAdManagerDelegate, MPMoPubAd>



@property (retain, nonatomic) MPBannerAdManager *adManager; // ivar: _adManager
@property (weak, nonatomic) UIView *adContentView; // ivar: _adContentView
@property (nonatomic) int allowedNativeAdOrientation; // ivar: _allowedNativeAdOrientation
@property (weak, nonatomic) NSObject<MPAdViewDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSString *adUnitId; // ivar: _adUnitId
@property (nonatomic) CGSize maxAdSize; // ivar: _maxAdSize
@property (copy, nonatomic) NSString *keywords; // ivar: _keywords
@property (copy, nonatomic) NSString *userDataKeywords; // ivar: _userDataKeywords
@property (copy, nonatomic) CLLocation *location; // ivar: _location
@property (copy, nonatomic) NSDictionary *localExtras; // ivar: _localExtras
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdUnitId:(id)arg0 ;
-(id)initWithAdUnitId:(id)arg0 size:(struct CGSize )arg1 ;
-(void)dealloc;
-(void)layoutSubviews;
-(void)rotateToOrientation:(NSInteger)arg0 ;
-(void)loadAd;
-(void)loadAdWithMaxAdSize:(struct CGSize )arg0 ;
-(void)refreshAd;
-(void)forceRefreshAd;
-(void)stopAutomaticallyRefreshingContents;
-(void)startAutomaticallyRefreshingContents;
-(void)lockNativeAdsToOrientation:(int)arg0 ;
-(void)unlockNativeAdsOrientation;
-(int)allowedNativeAdsOrientation;
-(id)banner;
-(id)bannerDelegate;
-(struct CGSize )containerSize;
-(id)viewControllerForPresentingModalView;
-(id)adTargeting;
-(void)invalidateContentView;
-(void)managerDidFailToLoadAdWithError:(id)arg0 ;
-(void)managerDidLoadAd:(id)arg0 ;
-(void)userActionWillBegin;
-(void)userActionDidFinish;
-(void)userWillLeaveApplication;
-(void)impressionDidFireWithImpressionData:(id)arg0 ;
+(struct CGSize )sizeForContainer:(id)arg0 adSize:(struct CGSize )arg1 adUnitId:(id)arg2 ;


@end


#endif