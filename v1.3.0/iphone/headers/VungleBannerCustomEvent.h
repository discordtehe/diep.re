// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEBANNERCUSTOMEVENT_H
#define VUNGLEBANNERCUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPBannerCustomEvent;
@protocol MPVungleRouterDelegate;

@interface VungleBannerCustomEvent : MPBannerCustomEvent <MPVungleRouterDelegate>



@property (copy, nonatomic) NSString *placementId; // ivar: _placementId
@property (copy, nonatomic) NSDictionary *options; // ivar: _options
@property (nonatomic) NSDictionary *bannerInfo; // ivar: _bannerInfo
@property (nonatomic) NSTimer *timeOutTimer; // ivar: _timeOutTimer
@property (nonatomic) BOOL isAdCached; // ivar: _isAdCached
@property (nonatomic) CGSize bannerSize; // ivar: _bannerSize
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)enableAutomaticImpressionAndClickTracking;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 adMarkup:(id)arg2 ;
-(void)invalidate;
-(void)vungleAdDidLoad;
-(void)vungleAdWasTapped;
-(void)vungleAdDidFailToLoad:(id)arg0 ;
-(void)vungleAdWillLeaveApplication;
-(id)getPlacementID;


@end


#endif