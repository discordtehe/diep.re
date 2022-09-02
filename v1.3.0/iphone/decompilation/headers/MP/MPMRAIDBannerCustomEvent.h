// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMRAIDBANNERCUSTOMEVENT_H
#define MPMRAIDBANNERCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPBannerCustomEvent;
@class MRController;
@protocol MRControllerDelegate;
@protocol MPPrivateBannerCustomEventDelegate;

@interface MPMRAIDBannerCustomEvent : MPBannerCustomEvent <MRControllerDelegate>



@property (retain, nonatomic) MRController *mraidController; // ivar: _mraidController
@property (weak, nonatomic) NSObject<MPPrivateBannerCustomEventDelegate> *delegate;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 ;
-(id)location;
-(id)adUnitId;
-(id)adConfiguration;
-(id)viewControllerForPresentingModalView;
-(void)adDidLoad:(id)arg0 ;
-(void)adDidFailToLoad:(id)arg0 ;
-(void)closeButtonPressed;
-(void)appShouldSuspendForAd:(id)arg0 ;
-(void)appShouldResumeFromAd:(id)arg0 ;
-(void)trackImpressionsIncludedInMarkup;
-(void)startViewabilityTracker;
-(void)adWillExpand:(id)arg0 ;
-(void)adDidCollapse:(id)arg0 ;


@end


#endif