// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISINTERSTITIALSMASH_H
#define ISINTERSTITIALSMASH_H


#import <Foundation/Foundation.h>

@class ISBaseSMASH;
@protocol ISInterstitialAdapterDelegate;
@protocol ISInterstitialSMASHDelegate;
@protocol ISRewardedInterstitialSMASHDelegate;

@interface ISInterstitialSMASH : ISBaseSMASH <ISInterstitialAdapterDelegate>



@property (nonatomic) NSInteger initISOnceToken; // ivar: _initISOnceToken
@property (weak, nonatomic) NSObject<ISInterstitialSMASHDelegate> *isDelegate; // ivar: _isDelegate
@property (weak, nonatomic) NSObject<ISRewardedInterstitialSMASHDelegate> *risDelegate; // ivar: _risDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdapterConfig:(id)arg0 ;
-(void)completeIteration;
-(void)initISWithUserId:(id)arg0 ;
-(void)loadInterstitial;
-(void)showInterstitialWithViewController:(id)arg0 placement:(id)arg1 ;
-(BOOL)hasInterstitial;
-(void)adapterInterstitialInitSuccess;
-(void)adapterInterstitialInitFailedWithError:(id)arg0 ;
-(void)adapterInterstitialDidLoad;
-(void)adapterInterstitialDidFailToLoadWithError:(id)arg0 ;
-(void)adapterInterstitialDidOpen;
-(void)adapterInterstitialDidClose;
-(void)adapterInterstitialDidShow;
-(void)adapterInterstitialDidFailToShowWithError:(id)arg0 ;
-(void)adapterInterstitialDidClick;
-(void)adapterInterstitialDidBecomeVisible;
-(void)adapterInterstitialDidReceiveReward;
-(void)onInterstitialLoadTick:(id)arg0 ;
-(void)onInterstitialInitTick:(id)arg0 ;
-(id)adUnitString;


@end


#endif