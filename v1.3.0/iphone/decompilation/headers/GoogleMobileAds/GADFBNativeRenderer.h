// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBNATIVERENDERER_H
#define GADFBNATIVERENDERER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class FBNativeAd;
@class FBAdOptionsView;
@class FBMediaView;
@class GADNativeAdImage;
@protocol GADMediationNativeAd;
@protocol FBNativeAdDelegate;
@protocol FBMediaViewDelegate;
@protocol GADMediationNativeAdEventDelegate;

@interface GADFBNativeRenderer : NSObject <GADMediationNativeAd, FBNativeAdDelegate, FBMediaViewDelegate>

 {
    id *_adLoadCompletionHandler;
    FBNativeAd *_nativeAd;
    id<GADMediationNativeAdEventDelegate> *_adEventDelegate;
    NSDictionary *_extraAssets;
    FBAdOptionsView *_adOptionsView;
    BOOL _impressionLogged;
    FBMediaView *_mediaView;
    NSObject<OS_dispatch_queue> *_lockQueue;
    BOOL _isRTBRequest;
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


-(void)renderNativeAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadAdOptionsView;
-(void)didRenderInView:(id)arg0 clickableAssetViews:(id)arg1 nonclickableAssetViews:(id)arg2 viewController:(id)arg3 ;
-(void)didUntrackView:(id)arg0 ;
-(void)nativeAdDidLoad:(id)arg0 ;
-(void)nativeAdDidClick:(id)arg0 ;
-(void)nativeAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)nativeAdWillLogImpression:(id)arg0 ;
-(void)nativeAdDidFinishHandlingClick:(id)arg0 ;
-(void)nativeAdDidDownloadMedia:(id)arg0 ;
-(void)mediaViewVideoDidComplete:(id)arg0 ;
-(void)mediaViewVideoDidPlay:(id)arg0 ;
-(void)mediaViewVideoDidPause:(id)arg0 ;
-(void)mediaViewWillEnterFullscreen:(id)arg0 ;
-(void)mediaViewDidExitFullscreen:(id)arg0 ;
-(void)mediaView:(id)arg0 videoVolumeDidChange:(float)arg1 ;
-(void)mediaViewDidLoad:(id)arg0 ;


@end


#endif