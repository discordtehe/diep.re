// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCEINTERSTITIALCUSTOMEVENT_H
#define IRONSOURCEINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPInterstitialCustomEvent;
@protocol ISDemandOnlyInterstitialDelegate;

@interface IronSourceInterstitialCustomEvent : MPInterstitialCustomEvent <ISDemandOnlyInterstitialDelegate>



@property (copy, nonatomic) NSString *placementName; // ivar: _placementName
@property (copy, nonatomic) NSString *instanceId; // ivar: _instanceId
@property (nonatomic) BOOL isTestEnabled; // ivar: _isTestEnabled
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestInterstitialWithCustomEventInfo:(id)arg0 ;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
-(void)initInterstitialIronSourceSDKWithAppKey:(id)arg0 ;
-(void)loadInterstitial;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(BOOL)isEmpty:(id)arg0 ;
-(void)interstitialDidLoad:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)interstitialDidOpen:(id)arg0 ;
-(void)interstitialDidClose:(id)arg0 ;
-(void)interstitialDidShow:(id)arg0 ;
-(void)interstitialDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)didClickInterstitial:(id)arg0 ;


@end


#endif