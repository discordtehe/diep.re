// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKNATIVEADADAPTER_H
#define FACEBOOKNATIVEADADAPTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdOptionsView;
@class FBMediaView;
@class FBAdIconView;
@class FBNativeAd;
@protocol FBNativeAdDelegate;
@protocol MPNativeAdAdapter;
@protocol MPNativeAdAdapterDelegate;

@interface FacebookNativeAdAdapter : NSObject <FBNativeAdDelegate, MPNativeAdAdapter>



@property (readonly, nonatomic) FBAdOptionsView *adOptionsView; // ivar: _adOptionsView
@property (readonly, nonatomic) FBMediaView *mediaView; // ivar: _mediaView
@property (readonly, nonatomic) FBAdIconView *iconView; // ivar: _iconView
@property (weak, nonatomic) NSObject<MPNativeAdAdapterDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) FBNativeAd *fbNativeAd; // ivar: _fbNativeAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) NSDictionary *properties; // ivar: _properties
@property (readonly, nonatomic) NSURL *defaultActionURL;


-(id)initWithFBNativeAd:(id)arg0 adProperties:(id)arg1 ;
-(BOOL)enableThirdPartyClickTracking;
-(void)willAttachToView:(id)arg0 ;
-(void)willAttachToView:(id)arg0 withAdContentViews:(id)arg1 ;
-(id)privacyInformationIconView;
-(id)mainMediaView;
-(id)iconMediaView;
-(void)nativeAdWillLogImpression:(id)arg0 ;
-(void)nativeAdDidClick:(id)arg0 ;
-(void)nativeAdDidFinishHandlingClick:(id)arg0 ;


@end


#endif