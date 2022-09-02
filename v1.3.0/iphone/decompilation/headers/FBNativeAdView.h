// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADVIEW_H
#define FBNATIVEADVIEW_H


#import <Foundation/Foundation.h>

@class FBNativeAdBaseView;
@class FBNativeAd;
@class FBMediaView;
@protocol FBNativeAdDelegate;
@protocol FBNativeAdDelegate;

@interface FBNativeAdView : FBNativeAdBaseView <FBNativeAdDelegate>



@property (retain, nonatomic) FBNativeAd *nativeAd; // ivar: _nativeAd
@property (retain, nonatomic) FBMediaView *mediaView; // ivar: _mediaView
@property (weak, nonatomic) NSObject<FBNativeAdDelegate> *nativeAdDelegate; // ivar: _nativeAdDelegate
@property (readonly, nonatomic) NSInteger type; // ivar: _type
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithNativeAd:(id)arg0 withType:(NSInteger)arg1 ;
-(id)initWithNativeAd:(id)arg0 withType:(NSInteger)arg1 withAttributes:(id)arg2 ;
-(void)nativeAdDidLoad:(id)arg0 ;
-(void)nativeAdDidDownloadMedia:(id)arg0 ;
-(void)nativeAdWillLogImpression:(id)arg0 ;
-(void)nativeAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)nativeAdDidClick:(id)arg0 ;
-(void)nativeAdDidFinishHandlingClick:(id)arg0 ;
-(void)constructMediaView;
-(void)constructView;
-(void)populate:(id)arg0 ;
-(void)registerView;
-(void)updateView:(BOOL)arg0 ;
-(void)reset;
-(void)updateAttributes:(id)arg0 ;
+(id)nativeAdViewWithNativeAd:(id)arg0 ;
+(id)nativeAdViewWithNativeAd:(id)arg0 withAttributes:(id)arg1 ;
+(id)nativeAdViewWithType:(NSInteger)arg0 withAttributes:(id)arg1 ;
+(id)nativeAdViewWithNativeAd:(id)arg0 withType:(NSInteger)arg1 ;
+(id)nativeAdViewWithNativeAd:(id)arg0 withType:(NSInteger)arg1 withAttributes:(id)arg2 ;
+(Class)classFromType:(NSInteger)arg0 ;


@end


#endif