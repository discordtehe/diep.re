// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPHTMLBANNERCUSTOMEVENT_H
#define MPHTMLBANNERCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPBannerCustomEvent;
@class MPAdWebViewAgent;
@protocol MPAdWebViewAgentDelegate;
@protocol MPPrivateBannerCustomEventDelegate;

@interface MPHTMLBannerCustomEvent : MPBannerCustomEvent <MPAdWebViewAgentDelegate>



@property (retain, nonatomic) MPAdWebViewAgent *bannerAgent; // ivar: _bannerAgent
@property (weak, nonatomic) NSObject<MPPrivateBannerCustomEventDelegate> *delegate;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 ;
-(void)dealloc;
-(void)rotateToOrientation:(NSInteger)arg0 ;
-(id)location;
-(id)adUnitId;
-(id)viewControllerForPresentingModalView;
-(void)adDidFinishLoadingAd:(id)arg0 ;
-(void)adDidFailToLoadAd:(id)arg0 ;
-(void)adDidClose:(id)arg0 ;
-(void)adActionWillBegin:(id)arg0 ;
-(void)adActionDidFinish:(id)arg0 ;
-(void)adActionWillLeaveApplication:(id)arg0 ;
-(void)trackImpressionsIncludedInMarkup;
-(void)startViewabilityTracker;


@end


#endif