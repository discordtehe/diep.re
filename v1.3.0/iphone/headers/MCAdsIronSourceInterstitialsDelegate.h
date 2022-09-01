// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADSIRONSOURCEINTERSTITIALSDELEGATE_H
#define MCADSIRONSOURCEINTERSTITIALSDELEGATE_H


#import <Foundation/Foundation.h>

@protocol ISInterstitialDelegate;

@interface MCAdsIronSourceInterstitialsDelegate : NSObject <ISInterstitialDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)interstitialDidLoad;
-(void)interstitialDidFailToLoadWithError:(id)arg0 ;
-(void)interstitialDidOpen;
-(void)interstitialDidClose;
-(void)interstitialDidShow;
-(void)interstitialDidFailToShowWithError:(id)arg0 ;
-(void)didClickInterstitial;


@end


#endif