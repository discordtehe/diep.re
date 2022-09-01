// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADCLICKANDIMPRESSIONMONITOR_H
#define GADNATIVEADCLICKANDIMPRESSIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADInternalNativeAd;
@class GADNativeAdContext;

@interface GADNativeAdClickAndImpressionMonitor : NSObject {
    GADObserverCollection *_observers;
    GADInternalNativeAd *_nativeAd;
    GADNativeAdContext *_nativeAdContext;
    *NSDictionary _adConfiguration;
}




-(id)initWithAd:(id)arg0 nativeAdContext:(id)arg1 adConfiguration:(struct NSDictionary *)arg2 ;
-(void)handleClick:(id)arg0 ;
-(void)handleImpression:(id)arg0 ;
-(void)handleClickRecordedAction;
-(void)handleImpressionRecordedAction;
-(void)handleAdMutedAction;
-(void)handleUnconfirmedClickAction:(id)arg0 ;
-(void)handleConfirmationClick:(CGFloat)arg0 ;


@end


#endif