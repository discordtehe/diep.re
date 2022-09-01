// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVECONTENTAD_H
#define GADNATIVECONTENTAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADNativeAd;
@class GADVideoController;
@class GADNativeAdImage;

@interface GADNativeContentAd : GADNativeAd {
    GADVideoController *_videoController;
}


@property (readonly, copy, nonatomic) NSString *headline;
@property (readonly, copy, nonatomic) NSString *body;
@property (readonly, copy, nonatomic) NSArray *images;
@property (readonly, nonatomic) GADNativeAdImage *logo;
@property (readonly, copy, nonatomic) NSString *callToAction;
@property (readonly, copy, nonatomic) NSString *advertiser;
@property (readonly, nonatomic) GADVideoController *videoController;


-(id)adChoicesIcon;
-(id)adType;
-(void)performClickWithData:(id)arg0 ;
-(void)reportTouchEventWithData:(id)arg0 ;
-(BOOL)recordImpressionWithData:(id)arg0 ;
-(void)registerAdView:(id)arg0 assetViews:(id)arg1 ;
-(void)registerAdView:(id)arg0 clickableAssetViews:(id)arg1 nonclickableAssetViews:(id)arg2 ;
-(void)updateAdChoicesView:(id)arg0 ;
-(void)updateMediaView:(id)arg0 ;
-(void)unregisterAdView;


@end


#endif