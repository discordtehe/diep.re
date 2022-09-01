// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCINTERSTITIALADSESSION_H
#define ADCINTERSTITIALADSESSION_H



@class ADCAdSession;
@class AdColonyInterstitial;
@class ADCAvidViewabilityMonitor;

@interface ADCInterstitialAdSession : ADCAdSession

@property (retain, nonatomic) AdColonyInterstitial *interstitialAd; // ivar: _interstitialAd
@property (retain, nonatomic) ADCAvidViewabilityMonitor *avidViewabilityMonitor; // ivar: _avidViewabilityMonitor
@property (copy, nonatomic) id *requestSuccess; // ivar: _requestSuccess
@property (copy, nonatomic) id *requestFailure; // ivar: _requestFailure


-(void)pollViewability;
-(id)adID;
-(id)creativeID;


@end


#endif