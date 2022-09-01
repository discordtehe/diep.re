// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINTERSTITIALAD_H
#define GADINTERSTITIALAD_H



@class GADAd;
@class GADAdReward;
@protocol GADAdPresenting;

@interface GADInterstitialAd : GADAd

@property (readonly, nonatomic) NSObject<GADAdPresenting> *adController; // ivar: _adController
@property (retain, nonatomic) GADAdReward *reward; // ivar: _reward


-(id)initWithContext:(id)arg0 adController:(id)arg1 metadata:(id)arg2 ;
-(void)dealloc;


@end


#endif