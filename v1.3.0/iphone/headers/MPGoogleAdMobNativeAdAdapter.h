// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPGOOGLEADMOBNATIVEADADAPTER_H
#define MPGOOGLEADMOBNATIVEADADAPTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADUnifiedNativeAd;
@class GADUnifiedNativeAdView;
@protocol MPNativeAdAdapter;
@protocol GADUnifiedNativeAdDelegate;
@protocol MPNativeAdAdapterDelegate;

@interface MPGoogleAdMobNativeAdAdapter : NSObject <MPNativeAdAdapter, GADUnifiedNativeAdDelegate>



@property (weak, nonatomic) NSObject<MPNativeAdAdapterDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) GADUnifiedNativeAd *adMobUnifiedNativeAd; // ivar: _adMobUnifiedNativeAd
@property (retain, nonatomic) GADUnifiedNativeAdView *adMobUnifiedNativeAdView; // ivar: _adMobUnifiedNativeAdView
@property (readonly, nonatomic) NSDictionary *properties; // ivar: _properties
@property (readonly, nonatomic) NSURL *defaultActionURL;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdMobUnifiedNativeAd:(id)arg0 unifiedNativeAdView:(id)arg1 ;
-(void)nativeAdDidRecordImpression:(id)arg0 ;
-(void)nativeAdDidRecordClick:(id)arg0 ;
-(id)privacyInformationIconView;
-(id)mainMediaView;
-(BOOL)enableThirdPartyClickTracking;


@end


#endif