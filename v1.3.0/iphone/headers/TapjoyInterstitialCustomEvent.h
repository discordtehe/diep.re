// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPJOYINTERSTITIALCUSTOMEVENT_H
#define TAPJOYINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPInterstitialCustomEvent;
@class TJPlacement;
@protocol TJPlacementDelegate;

@interface TapjoyInterstitialCustomEvent : MPInterstitialCustomEvent <TJPlacementDelegate>



@property (retain, nonatomic) TJPlacement *placement; // ivar: _placement
@property (nonatomic) BOOL isConnecting; // ivar: _isConnecting
@property (copy, nonatomic) NSString *placementName; // ivar: _placementName
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setupListeners;
-(void)initializeWithCustomNetworkInfo:(id)arg0 ;
-(void)requestInterstitialWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(void)requestPlacementContentWithAdMarkup:(id)arg0 ;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
-(void)dealloc;
-(void)requestDidSucceed:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
-(void)contentDidAppear:(id)arg0 ;
-(void)contentDidDisappear:(id)arg0 ;
-(void)tjcConnectSuccess:(id)arg0 ;
-(void)tjcConnectFail:(id)arg0 ;
-(void)fetchMoPubGDPRSettings;


@end


#endif