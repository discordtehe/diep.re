// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEINTERSTITIALCUSTOMEVENT_H
#define VUNGLEINTERSTITIALCUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPInterstitialCustomEvent;
@protocol MPVungleRouterDelegate;

@interface VungleInterstitialCustomEvent : MPInterstitialCustomEvent <MPVungleRouterDelegate>



@property (nonatomic) BOOL handledAdAvailable; // ivar: _handledAdAvailable
@property (copy, nonatomic) NSString *placementId; // ivar: _placementId
@property (copy, nonatomic) NSDictionary *options; // ivar: _options
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestInterstitialWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(void)showInterstitialFromRootViewController:(id)arg0 ;
-(void)invalidate;
-(void)vungleAdDidLoad;
-(void)vungleAdWillAppear;
-(void)vungleAdDidAppear;
-(void)vungleAdWillDisappear;
-(void)vungleAdDidDisappear;
-(void)vungleAdWasTapped;
-(void)vungleAdDidFailToLoad:(id)arg0 ;
-(void)vungleAdDidFailToPlay:(id)arg0 ;
-(id)getPlacementID;


@end


#endif