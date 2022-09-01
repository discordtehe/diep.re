// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKBANNERCUSTOMEVENT_H
#define FACEBOOKBANNERCUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MPBannerCustomEvent;
@class FBAdView;
@protocol FBAdViewDelegate;

@interface FacebookBannerCustomEvent : MPBannerCustomEvent <FBAdViewDelegate>



@property (retain, nonatomic) FBAdView *fbAdView; // ivar: _fbAdView
@property (copy, nonatomic) NSString *fbPlacementId; // ivar: _fbPlacementId
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 ;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 adMarkup:(id)arg2 ;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(void)dealloc;
-(void)adView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adViewDidLoad:(id)arg0 ;
-(void)adViewWillLogImpression:(id)arg0 ;
-(void)adViewDidClick:(id)arg0 ;
-(void)adViewDidFinishHandlingClick:(id)arg0 ;


@end


#endif