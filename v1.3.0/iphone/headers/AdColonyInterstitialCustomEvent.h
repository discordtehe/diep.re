// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYINTERSTITIALCUSTOMEVENT_H
#define ADCOLONYINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPInterstitialCustomEvent;
@class AdColonyInterstitial;

@interface AdColonyInterstitialCustomEvent : MPInterstitialCustomEvent

@property (retain, nonatomic) AdColonyInterstitial *ad; // ivar: _ad
@property (copy, nonatomic) NSString *zoneId; // ivar: _zoneId


-(void)requestInterstitialWithCustomEventInfo:(id)arg0 ;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
-(id)getAdNetworkId;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;


@end


#endif