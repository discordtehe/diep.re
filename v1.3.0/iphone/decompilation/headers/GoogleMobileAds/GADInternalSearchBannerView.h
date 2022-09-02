// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINTERNALSEARCHBANNERVIEW_H
#define GADINTERNALSEARCHBANNERVIEW_H


#import <Foundation/Foundation.h>

@class GADInternalBannerView;
@class GADDynamicHeightSearchBannerView;
@protocol GADDynamicHeightSearchBannerViewDelegate;

@interface GADInternalSearchBannerView : GADInternalBannerView <GADDynamicHeightSearchBannerViewDelegate>

 {
    GADDynamicHeightSearchBannerView *_dynamicHeightAdView;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 adSize:(struct GADAdSize )arg1 ;
-(void)loadRequest:(id)arg0 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)setAdUnitID:(id)arg0 ;
-(struct CGSize )intrinsicContentSize;
-(void)bannerViewDidReceiveAd:(id)arg0 ;
-(void)bannerView:(id)arg0 didReceiveLandingPageURL:(id)arg1 ;
-(void)bannerView:(id)arg0 didUpdateDesiredContentSize:(struct CGSize )arg1 ;
-(void)bannerView:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;


@end


#endif