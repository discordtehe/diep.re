// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBNATIVEAD_H
#define GADFBNATIVEAD_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBNativeAd;
@class GADNativeAdImageAdLoaderOptions;
@class GADNativeAdViewAdOptions;
@class FBAdOptionsView;
@class FBMediaView;
@protocol GADMediatedNativeAppInstallAd;
@protocol GADMediatedNativeAdDelegate;
@protocol FBNativeAdDelegate;
@protocol FBMediaViewDelegate;
@protocol GADMAdNetworkConnector;
@protocol GADMAdNetworkAdapter;

@interface GADFBNativeAd : NSObject <GADMediatedNativeAppInstallAd, GADMediatedNativeAdDelegate, FBNativeAdDelegate, FBMediaViewDelegate>

 {
    id<GADMAdNetworkConnector> *_connector;
    id<GADMAdNetworkAdapter> *_adapter;
    FBNativeAd *_nativeAd;
    GADNativeAdImageAdLoaderOptions *_nativeAdImageAdLoaderOptions;
    GADNativeAdViewAdOptions *_nativeAdViewAdOptions;
    NSDictionary *_extraAssets;
    NSObject<OS_dispatch_queue> *_lockQueue;
    FBAdOptionsView *_adOptionsView;
    BOOL _impressionLogged;
    FBMediaView *_mediaView;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithGADMAdNetworkConnector:(id)arg0 adapter:(id)arg1 ;
-(void)getNativeAdWithAdTypes:(id)arg0 options:(id)arg1 ;
-(void)stopBeingDelegate;
-(void)loadAdOptionsView;
-(id)mediatedNativeAdDelegate;
-(id)extraAssets;
-(id)headline;
-(id)images;
-(id)body;
-(id)icon;
-(id)callToAction;
-(id)starRating;
-(id)store;
-(id)price;
-(id)mediaView;
-(id)adChoicesView;
-(BOOL)hasVideoContent;
-(void)mediatedNativeAd:(id)arg0 didRenderInView:(id)arg1 clickableAssetViews:(id)arg2 nonclickableAssetViews:(id)arg3 viewController:(id)arg4 ;
-(void)mediatedNativeAd:(id)arg0 didUntrackView:(id)arg1 ;
-(void)nativeAdDidLoad:(id)arg0 ;
-(void)nativeAdWillLogImpression:(id)arg0 ;
-(void)nativeAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)nativeAdDidClick:(id)arg0 ;
-(void)nativeAdDidFinishHandlingClick:(id)arg0 ;
-(void)mediaViewVideoDidComplete:(id)arg0 ;
-(void)mediaViewVideoDidPlay:(id)arg0 ;
-(void)mediaViewVideoDidPause:(id)arg0 ;
-(void)mediaViewDidLoad:(id)arg0 ;
+(void)mediatedNativeAdDidRecordImpression:(id)arg0 ;


@end


#endif