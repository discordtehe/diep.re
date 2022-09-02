// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERMOPUB_H
#define GADMADAPTERMOPUB_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPAdView;
@class MPInterstitialAdController;
@class MPNativeAd;
@class MoPubAdapterMediatedNativeAd;
@class MPImageDownloadQueue;
@class GADNativeAdViewAdOptions;
@protocol MPNativeAdDelegate;
@protocol MPAdViewDelegate;
@protocol MPInterstitialAdControllerDelegate;
@protocol GADMAdNetworkAdapter;
@protocol GADMAdNetworkConnector;

@interface GADMAdapterMoPub : NSObject <MPNativeAdDelegate, MPAdViewDelegate, MPInterstitialAdControllerDelegate, GADMAdNetworkAdapter>



@property (weak, nonatomic) NSObject<GADMAdNetworkConnector> *connector; // ivar: _connector
@property (retain, nonatomic) MPAdView *bannerAd; // ivar: _bannerAd
@property (retain, nonatomic) MPInterstitialAdController *interstitialAd; // ivar: _interstitialAd
@property (retain, nonatomic) MPNativeAd *nativeAd; // ivar: _nativeAd
@property (retain, nonatomic) NSArray *nativeAdOptions; // ivar: _nativeAdOptions
@property (retain, nonatomic) MoPubAdapterMediatedNativeAd *mediatedAd; // ivar: _mediatedAd
@property (retain, nonatomic) MPImageDownloadQueue *imageDownloadQueue; // ivar: _imageDownloadQueue
@property (retain, nonatomic) NSMutableDictionary *imagesDictionary; // ivar: _imagesDictionary
@property (retain, nonatomic) GADNativeAdViewAdOptions *nativeAdViewAdOptions; // ivar: _nativeAdViewAdOptions
@property (nonatomic) BOOL shouldDownloadImages; // ivar: _shouldDownloadImages
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)stopBeingDelegate;
-(id)getKeywords:(BOOL)arg0 ;
-(NSInteger)ageFromBirthday:(id)arg0 ;
-(BOOL)keywordsContainUserData:(id)arg0 ;
-(void)getInterstitial;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
-(void)interstitialDidLoadAd:(id)arg0 ;
-(void)interstitialDidFailToLoadAd:(id)arg0 ;
-(void)interstitialWillAppear:(id)arg0 ;
-(void)interstitialWillDisappear:(id)arg0 ;
-(void)interstitialDidDisappear:(id)arg0 ;
-(void)interstitialDidReceiveTapEvent:(id)arg0 ;
-(struct CGSize )GADSupportedAdSizeFromRequestedSize:(struct GADAdSize )arg0 ;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(void)adViewDidLoadAd:(id)arg0 ;
-(void)adViewDidFailToLoadAd:(id)arg0 ;
-(void)willLeaveApplicationFromAd:(id)arg0 ;
-(void)willPresentModalViewForAd:(id)arg0 ;
-(void)didDismissModalViewForAd:(id)arg0 ;
-(BOOL)isBannerAnimationOK:(NSInteger)arg0 ;
-(void)getNativeAdWithAdTypes:(id)arg0 options:(id)arg1 ;
-(void)requestNative:(id)arg0 ;
-(void)handleNativeAdOptions:(id)arg0 withResponse:(id)arg1 withError:(id)arg2 withOptions:(id)arg3 ;
-(void)loadNativeAdImages;
-(id)returnImageKey:(id)arg0 ;
-(void)precacheImagesWithURL:(id)arg0 ;
-(id)viewControllerForPresentingModalView;
-(void)willPresentModalForNativeAd:(id)arg0 ;
-(void)didDismissModalForNativeAd:(id)arg0 ;
-(void)willLeaveApplicationFromNativeAd:(id)arg0 ;
+(void)load;
+(id)adapterVersion;
+(Class)networkExtrasClass;


@end


#endif