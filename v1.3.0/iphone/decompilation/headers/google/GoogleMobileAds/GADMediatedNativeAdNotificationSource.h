// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATEDNATIVEADNOTIFICATIONSOURCE_H
#define GADMEDIATEDNATIVEADNOTIFICATIONSOURCE_H


#import <Foundation/Foundation.h>


@interface GADMediatedNativeAdNotificationSource : NSObject



+(void)mediatedNativeAdDidRecordImpression:(id)arg0 ;
+(void)mediatedNativeAdDidRecordClick:(id)arg0 ;
+(void)mediatedNativeAdWillPresentScreen:(id)arg0 ;
+(void)mediatedNativeAdWillDismissScreen:(id)arg0 ;
+(void)mediatedNativeAdDidDismissScreen:(id)arg0 ;
+(void)mediatedNativeAdWillLeaveApplication:(id)arg0 ;
+(void)mediatedNativeAdDidPlayVideo:(id)arg0 ;
+(void)mediatedNativeAdDidPauseVideo:(id)arg0 ;
+(void)mediatedNativeAdDidEndVideoPlayback:(id)arg0 ;


@end


#endif