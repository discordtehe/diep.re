// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPGOOGLEADMOBBANNERCUSTOMEVENT_H
#define MPGOOGLEADMOBBANNERCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPBannerCustomEvent;
@class GADBannerView;
@protocol GADBannerViewDelegate;

@interface MPGoogleAdMobBannerCustomEvent : MPBannerCustomEvent <GADBannerViewDelegate>



@property (retain, nonatomic) GADBannerView *adBannerView; // ivar: _adBannerView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 ;
-(struct CGRect )frameForCustomEventInfo:(id)arg0 ;
-(void)adViewDidReceiveAd:(id)arg0 ;
-(void)adView:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)adViewWillPresentScreen:(id)arg0 ;
-(void)adViewDidDismissScreen:(id)arg0 ;
-(void)adViewWillLeaveApplication:(id)arg0 ;
-(id)getAdNetworkId;


@end


#endif