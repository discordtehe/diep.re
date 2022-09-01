// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREWARDEDVIDEOCUSTOMEVENT_H
#define MPREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPRewardedVideoCustomEventDelegate;

@interface MPRewardedVideoCustomEvent : NSObject

@property (copy, nonatomic) NSDictionary *localExtras; // ivar: _localExtras
@property (weak, nonatomic) NSObject<MPRewardedVideoCustomEventDelegate> *delegate; // ivar: _delegate


-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)handleAdPlayedForCustomEventNetwork;
-(void)handleCustomEventInvalidated;


@end


#endif