// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCAVIDVIEWABILITYMONITOR_H
#define ADCAVIDVIEWABILITYMONITOR_H


#import <Foundation/Foundation.h>

@class AdColonyInterstitial;
@class AdColony_AbstractAvidAdSession;
@class ADCAdSession;

@interface ADCAvidViewabilityMonitor : NSObject

@property (retain, nonatomic) AdColonyInterstitial *ad; // ivar: _ad
@property (nonatomic) NSUInteger avidAdSessionType; // ivar: _avidAdSessionType
@property (retain, nonatomic) AdColony_AbstractAvidAdSession *avidAdSession; // ivar: _avidAdSession
@property (nonatomic) NSUInteger adUnitType; // ivar: _adUnitType
@property (weak, nonatomic) ADCAdSession *session; // ivar: _session


-(id)initWithDictionary:(id)arg0 session:(id)arg1 interstitialAd:(id)arg2 ;
-(void)registerFriendlyObstruction:(id)arg0 ;
-(void)sendIasCustomMessage:(id)arg0 ;
-(void)registerIAS;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)onApplicationWillResignActive:(id)arg0 ;
-(void)onApplicationDidBecomeActive:(id)arg0 ;
-(void)unregisterIAS;
-(void)registerIASAdEventListeners;
-(void)unregisterIASAdEventListeners;
-(void)recordIASAdEvent:(id)arg0 ;


@end


#endif