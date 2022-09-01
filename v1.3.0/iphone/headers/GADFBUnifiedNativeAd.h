// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBUNIFIEDNATIVEAD_H
#define GADFBUNIFIEDNATIVEAD_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class FBNativeAd;
@class GADNativeAdImageAdLoaderOptions;
@class GADNativeAdViewAdOptions;
@class FBAdOptionsView;
@class FBMediaView;
@class GADNativeAdImage;
@protocol GADMediatedUnifiedNativeAd;
@protocol GADMediatedNativeAdDelegate;
@protocol GADMediatedNativeAd;
@protocol FBNativeAdDelegate;
@protocol FBMediaViewDelegate;
@protocol GADMAdNetworkConnector;
@protocol GADMAdNetworkAdapter;

@interface GADFBUnifiedNativeAd : NSObject <GADMediatedUnifiedNativeAd, GADMediatedNativeAdDelegate, GADMediatedNativeAd, FBNativeAdDelegate, FBMediaViewDelegate>

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
@property (readonly, copy, nonatomic) NSString *headline;
@property (readonly, nonatomic) NSArray *images;
@property (readonly, copy, nonatomic) NSString *body;
@property (readonly, nonatomic) GADNativeAdImage *icon;
@property (readonly, copy, nonatomic) NSString *callToAction;
@property (readonly, copy, nonatomic) NSDecimalNumber *starRating;
@property (readonly, copy, nonatomic) NSString *store;
@property (readonly, copy, nonatomic) NSString *price;
@property (readonly, copy, nonatomic) NSString *advertiser;
@property (readonly, copy, nonatomic) NSDictionary *extraAssets;
@property (readonly, nonatomic) UIView *adChoicesView;
@property (readonly, nonatomic) UIView *mediaView;
@property (readonly, nonatomic) BOOL hasVideoContent;
@property (readonly, nonatomic) CGFloat mediaContentAspectRatio;


-(id)initWithGADMAdNetworkConnector:(id)arg0 adapter:(id)arg1 ;
-(void)getNativeAdWithAdTypes:(id)arg0 options:(id)arg1 ;
-(void)stopBeingDelegate;
-(void)loadAdOptionsView;
-(id)mediatedNativeAdDelegate;
-(void)didRenderInView:(id)arg0 clickableAssetViews:(id)arg1 nonclickableAssetViews:(id)arg2 viewController:(id)arg3 ;
-(void)didUntrackView:(id)arg0 ;
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