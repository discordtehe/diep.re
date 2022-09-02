// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPBANNERCUSTOMEVENT_H
#define MPBANNERCUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPBannerCustomEventDelegate;

@interface MPBannerCustomEvent : NSObject

@property (weak, nonatomic) NSObject<MPBannerCustomEventDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSDictionary *localExtras; // ivar: _localExtras


-(void)trackImpressionsIncludedInMarkup;
-(void)startViewabilityTracker;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 ;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 adMarkup:(id)arg2 ;
-(void)didDisplayAd;
-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)rotateToOrientation:(NSInteger)arg0 ;


@end


#endif