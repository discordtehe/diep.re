// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCUSTOMEVENTBANNERADRENDERER_H
#define GADCUSTOMEVENTBANNERADRENDERER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADServerTransaction;
@class GADBannerAd;
@class GADMediatedIntermission;
@protocol GADCustomEventBannerDelegate;
@protocol GADAdRendering;
@protocol GADCustomEventBanner;

@interface GADCustomEventBannerAdRenderer : NSObject <GADCustomEventBannerDelegate, GADAdRendering>

 {
    GADServerTransaction *_transaction;
    *NSDictionary _adConfiguration;
    id<GADCustomEventBanner> *_customEventBanner;
    id *_renderCompletionHandler;
    GADBannerAd *_bannerAd;
    atomic_flag _clickEventReceived;
    GADMediatedIntermission *_intermission;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(void)customEventCompletedLoadWithAdView:(id)arg0 error:(id)arg1 ;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(void)customEventBanner:(id)arg0 didReceiveAd:(id)arg1 ;
-(void)customEventBanner:(id)arg0 didFailAd:(id)arg1 ;
-(void)customEventBannerWasClicked:(id)arg0 ;
-(void)customEventBannerWillPresentModal:(id)arg0 ;
-(void)customEventBannerWillDismissModal:(id)arg0 ;
-(void)customEventBannerDidDismissModal:(id)arg0 ;
-(void)customEventBannerWillLeaveApplication:(id)arg0 ;
-(void)customEventBanner:(id)arg0 clickDidOccurInAd:(id)arg1 ;


@end


#endif