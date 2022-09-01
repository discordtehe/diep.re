// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISINTERSTITIALDEMANDONLYHELPER_H
#define ISINTERSTITIALDEMANDONLYHELPER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISPlacement;
@protocol ISInterstitialSMASHDelegate;

@interface ISInterstitialDemandOnlyHelper : NSObject <ISInterstitialSMASHDelegate>

 {
    NSMutableDictionary *_smashDic;
    NSMutableDictionary *_instanceIdToWaterfallPos;
    ISPlacement *_placement;
    NSMutableSet *_instancesToLoad;
    NSMutableDictionary *_wasLoadCalled;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(BOOL)addSmash:(id)arg0 adapter:(id)arg1 ;
-(void)loadInterstitial:(id)arg0 ;
-(void)showInterstitialWithViewController:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
-(BOOL)hasInterstitial:(id)arg0 ;
-(void)supersonicISInitSuccessWithSMASH:(id)arg0 ;
-(void)supersonicISInitFailedWithError:(id)arg0 SMASH:(id)arg1 ;
-(void)interstitialDidLoadForSMASH:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)interstitialDidOpenForSMASH:(id)arg0 ;
-(void)interstitialDidCloseForSMASH:(id)arg0 ;
-(void)interstitialDidShowForSMASH:(id)arg0 ;
-(void)interstitialDidFailToShowWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)interstitialDidBecomeVisibleForSMASH:(id)arg0 ;
-(void)didClickInterstitialForSMASH:(id)arg0 ;
-(void)sendProviderEvent:(id)arg0 eventId:(NSInteger)arg1 data:(id)arg2 ;
-(void)sendMediationEvent:(NSInteger)arg0 data:(id)arg1 ;
-(void)setSmash:(id)arg0 withInstanceId:(id)arg1 ;
-(id)getSmash:(id)arg0 ;
-(void)addWaterfallPosition:(id)arg0 ;
-(id)getWaterfallPosition:(id)arg0 ;
-(void)setWasLoadCalled:(id)arg0 wasCalled:(BOOL)arg1 ;
-(BOOL)getWasLoadCalled:(id)arg0 ;


@end


#endif