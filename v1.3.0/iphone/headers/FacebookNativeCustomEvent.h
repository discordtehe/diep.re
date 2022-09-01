// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKNATIVECUSTOMEVENT_H
#define FACEBOOKNATIVECUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPNativeCustomEvent;
@class FBNativeAd;
@protocol FBNativeAdDelegate;

@interface FacebookNativeCustomEvent : MPNativeCustomEvent <FBNativeAdDelegate>



@property (retain, nonatomic) FBNativeAd *fbNativeAd; // ivar: _fbNativeAd
@property (nonatomic) BOOL videoEnabled; // ivar: _videoEnabled
@property (copy, nonatomic) NSString *fbPlacementId; // ivar: _fbPlacementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestAdWithCustomEventInfo:(id)arg0 ;
-(void)requestAdWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;
-(void)nativeAdDidLoad:(id)arg0 ;
-(void)nativeAd:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif