// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBBANNERRENDERER_H
#define GADFBBANNERRENDERER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADMediationAdConfiguration;
@class FBAdView;
@protocol GADMediationBannerAd;
@protocol FBAdViewDelegate;
@protocol GADMediationBannerAdEventDelegate;

@interface GADFBBannerRenderer : NSObject <GADMediationBannerAd, FBAdViewDelegate>

 {
    id *_adLoadCompletionHandler;
    GADMediationAdConfiguration *_adConfig;
    FBAdView *_adView;
    id<GADMediationBannerAdEventDelegate> *_adEventDelegate;
    CGSize _finalBannerSize;
    BOOL _isRTBRequest;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIView *view;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(void)renderBannerForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)adViewDidLoad:(id)arg0 ;
-(void)adView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adViewDidClick:(id)arg0 ;
-(void)adViewDidFinishHandlingClick:(id)arg0 ;


@end


#endif