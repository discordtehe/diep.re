// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCUSTOMEVENTNATIVEADRENDERER_H
#define GADCUSTOMEVENTNATIVEADRENDERER_H


#import <Foundation/Foundation.h>

@class GADServerTransaction;
@protocol GADCustomEventNativeAdDelegate;
@protocol GADAdRendering;
@protocol GADCustomEventNativeAd;

@interface GADCustomEventNativeAdRenderer : NSObject <GADCustomEventNativeAdDelegate, GADAdRendering>

 {
    GADServerTransaction *_transaction;
    *NSDictionary _adConfiguration;
    id *_renderCompletionHandler;
    id<GADCustomEventNativeAd> *_customEventNative;
    atomic_flag _adLoadCompleted;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(void)processMediatedNativeAd:(id)arg0 withCustomEventNativeAd:(id)arg1 ;
-(void)customEventNativeAd:(id)arg0 didReceiveMediatedNativeAd:(id)arg1 ;
-(void)customEventNativeAd:(id)arg0 didReceiveMediatedUnifiedNativeAd:(id)arg1 ;
-(void)customEventNativeAd:(id)arg0 didFailToLoadWithError:(id)arg1 ;


@end


#endif