// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADMOBINTERSTITIALLISTENERIOS_H
#define ADMOBINTERSTITIALLISTENERIOS_H


#import <Foundation/Foundation.h>

@protocol GADInterstitialDelegate;

@interface AdMobInterstitialListeneriOS : NSObject <GADInterstitialDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )findNetworkName:(id)arg0 ;
-(void)interstitialDidReceiveAd:(id)arg0 ;
-(void)interstitial:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)interstitialWillLeaveApplication:(id)arg0 ;
-(void)interstitialDidDismissScreen:(id)arg0 ;
-(void)interstitialWillPresentScreen:(id)arg0 ;
-(void)interstitialWillDismissScreen:(id)arg0 ;


@end


#endif