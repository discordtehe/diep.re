// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADSMPINTERSTITIALADCONTROLLERDELEGATE_H
#define MCADSMPINTERSTITIALADCONTROLLERDELEGATE_H


#import <Foundation/Foundation.h>

@protocol MPInterstitialAdControllerDelegate;

@interface MCAdsMPInterstitialAdControllerDelegate : NSObject <MPInterstitialAdControllerDelegate>

 {
    *MoPubInterstitialWrapperImplIos _impl;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithMoPubInterstitialWrapperImpl:(struct MoPubInterstitialWrapperImplIos *)arg0 ;
-(void)interstitialDidLoadAd:(id)arg0 ;
-(void)interstitialDidFailToLoadAd:(id)arg0 ;
-(void)interstitialDidFailToLoadAd:(id)arg0 withError:(id)arg1 ;
-(void)interstitialWillAppear:(id)arg0 ;
-(void)interstitialDidDisappear:(id)arg0 ;
-(void)interstitialDidReceiveTapEvent:(id)arg0 ;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )findNetworkName:(id)arg0 ;


@end


#endif