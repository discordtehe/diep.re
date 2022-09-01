// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISINTERSTITIALDELEGATEWRAPPER_H
#define ISINTERSTITIALDELEGATEWRAPPER_H


#import <Foundation/Foundation.h>

@protocol ISInterstitialDelegate;
@protocol ISDemandOnlyInterstitialDelegate;

@interface ISInterstitialDelegateWrapper : NSObject {
    id<ISInterstitialDelegate> *_delegate;
    id<ISDemandOnlyInterstitialDelegate> *_demandOnlyDelegate;
    BOOL _isDemandOnlyModeOn;
    BOOL _wasModeSet;
}




-(id)init;
-(void)setISDemandOnlyMode:(BOOL)arg0 ;
-(void)setDelegate:(id)arg0 ;
-(void)setInstDelegate:(id)arg0 ;
-(void)verifyDemandOnlyMode:(id)arg0 ;
-(void)verifyMediationMode:(id)arg0 ;
-(void)interstitialDidLoad;
-(void)interstitialDidFailToLoadWithError:(id)arg0 ;
-(void)interstitialDidOpen;
-(void)interstitialDidClose;
-(void)interstitialDidShow;
-(void)interstitialDidFailToShowWithError:(id)arg0 ;
-(void)didClickInterstitial;
-(void)interstitialDidLoad:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)interstitialDidOpen:(id)arg0 ;
-(void)interstitialDidClose:(id)arg0 ;
-(void)interstitialDidShow:(id)arg0 ;
-(void)interstitialDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)didClickInterstitial:(id)arg0 ;
+(id)sharedInstance;


@end


#endif