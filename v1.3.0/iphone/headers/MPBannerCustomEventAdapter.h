// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPBANNERCUSTOMEVENTADAPTER_H
#define MPBANNERCUSTOMEVENTADAPTER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class MPBaseBannerAdapter;
@class MPBannerCustomEvent;
@class MPAdConfiguration;
@class MPAdImpressionTimer;
@protocol MPAdImpressionTimerDelegate;
@protocol MPPrivateBannerCustomEventDelegate;

@interface MPBannerCustomEventAdapter : MPBaseBannerAdapter <MPAdImpressionTimerDelegate, MPPrivateBannerCustomEventDelegate>



@property (retain, nonatomic) MPBannerCustomEvent *bannerCustomEvent; // ivar: _bannerCustomEvent
@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (nonatomic) BOOL hasTrackedImpression; // ivar: _hasTrackedImpression
@property (nonatomic) BOOL hasTrackedClick; // ivar: _hasTrackedClick
@property (retain, nonatomic) MPAdImpressionTimer *impressionTimer; // ivar: _impressionTimer
@property (retain, nonatomic) UIView *adView; // ivar: _adView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithConfiguration:(id)arg0 delegate:(id)arg1 ;
-(void)unregisterDelegate;
-(void)getAdWithConfiguration:(id)arg0 targeting:(id)arg1 containerSize:(struct CGSize )arg2 ;
-(void)rotateToOrientation:(NSInteger)arg0 ;
-(void)didDisplayAd;
-(void)trackImpressionOnDisplay;
-(void)startViewableTrackingTimer;
-(BOOL)shouldTrackImpressionOnDisplay;
-(id)adUnitId;
-(id)viewControllerForPresentingModalView;
-(id)bannerDelegate;
-(id)location;
-(void)bannerCustomEvent:(id)arg0 didLoadAd:(id)arg1 ;
-(void)bannerCustomEvent:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)bannerCustomEventWillBeginAction:(id)arg0 ;
-(void)bannerCustomEventDidFinishAction:(id)arg0 ;
-(void)bannerCustomEventWillLeaveApplication:(id)arg0 ;
-(void)trackClickOnce;
-(void)bannerCustomEventWillExpandAd:(id)arg0 ;
-(void)bannerCustomEventDidCollapseAd:(id)arg0 ;
-(void)trackImpression;
-(void)adViewWillLogImpression:(id)arg0 ;


@end


#endif