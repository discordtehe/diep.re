// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPGOOGLEADMOBNATIVECUSTOMEVENT_H
#define MPGOOGLEADMOBNATIVECUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPNativeCustomEvent;
@class GADAdLoader;
@protocol GADAdLoaderDelegate;
@protocol GADUnifiedNativeAdLoaderDelegate;

@interface MPGoogleAdMobNativeCustomEvent : MPNativeCustomEvent <GADAdLoaderDelegate, GADUnifiedNativeAdLoaderDelegate>



@property (retain, nonatomic) GADAdLoader *adLoader; // ivar: _adLoader
@property (copy, nonatomic) NSString *admobAdUnitId; // ivar: _admobAdUnitId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestAdWithCustomEventInfo:(id)arg0 ;
-(void)adLoader:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)adLoader:(id)arg0 didReceiveUnifiedNativeAd:(id)arg1 ;
-(BOOL)isValidUnifiedNativeAd:(id)arg0 ;
+(void)setAdChoicesPosition:(NSInteger)arg0 ;


@end


#endif