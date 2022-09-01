// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef DFPINTERSTITIAL_H
#define DFPINTERSTITIAL_H

@protocol DFPCustomRenderedInterstitialDelegate;


@class GADInterstitial;
@protocol GADAppEventDelegate;

@interface DFPInterstitial : GADInterstitial

@property (weak, nonatomic) NSObject<GADAppEventDelegate> *appEventDelegate;
@property (weak, nonatomic) NSObject<DFPCustomRenderedInterstitialDelegate> *customRenderedInterstitialDelegate; // ivar: _customRenderedInterstitialDelegate


-(id)initWithAdUnitID:(id)arg0 ;


@end


#endif