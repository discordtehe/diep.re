// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEBANNERADVIEW_H
#define FBNATIVEBANNERADVIEW_H


#import <Foundation/Foundation.h>

@class FBNativeAdBaseView;
@class FBNativeBannerAd;
@protocol FBNativeBannerAdDelegate;

@interface FBNativeBannerAdView : FBNativeAdBaseView <FBNativeBannerAdDelegate>



@property (retain, nonatomic) FBNativeBannerAd *nativeBannerAd; // ivar: _nativeBannerAd
@property (readonly, nonatomic) NSInteger type; // ivar: _type
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithNativeAd:(id)arg0 withType:(NSInteger)arg1 ;
-(id)initWithNativeAd:(id)arg0 withType:(NSInteger)arg1 withAttributes:(id)arg2 ;
-(void)populate:(id)arg0 ;
-(id)nativeAdBase;
-(void)registerView;
-(void)updateAttributes:(id)arg0 ;
+(id)nativeBannerAdViewWithType:(NSInteger)arg0 withAttributes:(id)arg1 ;
+(id)nativeBannerAdViewWithNativeBannerAd:(id)arg0 withType:(NSInteger)arg1 ;
+(id)nativeBannerAdViewWithNativeBannerAd:(id)arg0 withType:(NSInteger)arg1 withAttributes:(id)arg2 ;
+(Class)classFromType:(NSInteger)arg0 ;


@end


#endif