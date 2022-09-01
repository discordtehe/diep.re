// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPINTERSTITIALCUSTOMEVENT_H
#define MPINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPInterstitialCustomEventDelegate;

@interface MPInterstitialCustomEvent : NSObject

@property (weak, nonatomic) NSObject<MPInterstitialCustomEventDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSDictionary *localExtras; // ivar: _localExtras


-(void)requestInterstitialWithCustomEventInfo:(id)arg0 ;
-(void)requestInterstitialWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)showInterstitialFromRootViewController:(id)arg0 ;


@end


#endif