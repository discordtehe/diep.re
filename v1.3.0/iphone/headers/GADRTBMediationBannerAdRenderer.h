// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRTBMEDIATIONBANNERADRENDERER_H
#define GADRTBMEDIATIONBANNERADRENDERER_H


#import <Foundation/Foundation.h>

@class GADBannerAd;
@class GADMediationBannerAdConfiguration;
@class GADMediatedIntermission;
@protocol GADMediationBannerAdEventDelegate;
@protocol GADAdRendering;
@protocol GADMediationAdapter;

@interface GADRTBMediationBannerAdRenderer : NSObject <GADMediationBannerAdEventDelegate, GADAdRendering>

 {
    id *_renderCompletionHandler;
    id<GADMediationAdapter> *_loadingAdapter;
    GADBannerAd *_bannerAd;
    atomic_flag _clickEventReceived;
    GADMediationBannerAdConfiguration *_mediationConfiguration;
    GADMediatedIntermission *_intermission;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(void)adapter:(id)arg0 completedLoadWithMediatedAd:(id)arg1 adConfiguration:(struct NSDictionary *)arg2 transaction:(id)arg3 error:(id)arg4 ;
-(void)reportImpression;
-(void)reportClick;
-(void)willPresentFullScreenView;
-(void)willDismissFullScreenView;
-(void)didDismissFullScreenView;
-(void)willBackgroundApplication;
-(void)didFailToPresentWithError:(id)arg0 ;


@end


#endif