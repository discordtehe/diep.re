// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONNATIVEADRENDERER_H
#define GADMEDIATIONNATIVEADRENDERER_H


#import <Foundation/Foundation.h>

@class GADMediatedAdRenderer;
@class GADInternalNativeAd;
@protocol GADMAdNetworkConnector;

@interface GADMediationNativeAdRenderer : GADMediatedAdRenderer <GADMAdNetworkConnector>

 {
    id *_renderCompletionHandler;
    GADInternalNativeAd *_internalNativeAd;
    atomic_flag _adLoadCompleted;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(id)viewControllerForPresentingModalView;
-(void)didReceiveNativeAd:(id)arg0 fromAdapter:(id)arg1 ;
-(void)adapter:(id)arg0 didReceiveMediatedNativeAd:(id)arg1 ;
-(void)adapter:(id)arg0 didReceiveMediatedUnifiedNativeAd:(id)arg1 ;
-(void)adapter:(id)arg0 didFailAd:(id)arg1 ;


@end


#endif