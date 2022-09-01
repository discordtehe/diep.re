// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYREWARDEDVIDEOCUSTOMEVENT_H
#define ADCOLONYREWARDEDVIDEOCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPRewardedVideoCustomEvent;
@class AdColonyInterstitial;
@class AdColonyZone;

@interface AdColonyRewardedVideoCustomEvent : MPRewardedVideoCustomEvent

@property (retain, nonatomic) AdColonyInterstitial *ad; // ivar: _ad
@property (retain, nonatomic) AdColonyZone *zone; // ivar: _zone
@property (retain, nonatomic) NSString *zoneId; // ivar: _zoneId


-(void)initializeSdkWithParameters:(id)arg0 ;
-(void)initializeSdkWithParameters:(id)arg0 callback:(id)arg1 ;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(void)requestRewardedVideoWithCustomEventInfo:(id)arg0 ;
-(BOOL)hasAdAvailable;
-(void)presentRewardedVideoFromViewController:(id)arg0 ;
-(id)getAdNetworkId;


@end


#endif