// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATEDMEDIACONTENT_H
#define GADMEDIATEDMEDIACONTENT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADNativeAdImage;
@protocol GADMediaContentDisplaying;
@protocol GADVideoControlling;

@interface GADMediatedMediaContent : NSObject <GADMediaContentDisplaying>

 {
    id *_mediatedNativeAd;
    uint8_t _mainImageAspectRatio;
    UIImageView *_mainImageView;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIView *mediaView;
@property (readonly, nonatomic) NSObject<GADVideoControlling> *videoController; // ivar: _videoController
@property (readonly, nonatomic) CGSize intrinsicContentSize;
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (retain, nonatomic) GADNativeAdImage *mainImage; // ivar: _mainImage


-(id)initWithMediatedNativeAd:(id)arg0 mainImage:(id)arg1 ;


@end


#endif