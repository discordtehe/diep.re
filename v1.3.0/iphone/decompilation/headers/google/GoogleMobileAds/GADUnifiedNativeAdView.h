// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADUNIFIEDNATIVEADVIEW_H
#define GADUNIFIEDNATIVEADVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADUnifiedNativeAd;
@class GADOverlayView;
@class GADNativeAssetViewTracker;
@class GADMediaView;
@class GADAdChoicesView;
@class GADEventContext;
@protocol GADNativeAdViewOverlayProtocol;
@protocol GADEventContextSource;

@interface GADUnifiedNativeAdView : UIView <GADNativeAdViewOverlayProtocol, GADEventContextSource>

 {
    GADUnifiedNativeAd *_nativeAd;
    GADOverlayView *_overlayView;
    GADNativeAssetViewTracker *_assetViewTracker;
    NSArray *_constraints;
}


@property (retain, nonatomic) GADUnifiedNativeAd *nativeAd;
@property (weak, nonatomic) UIView *headlineView; // ivar: _headlineView
@property (weak, nonatomic) UIView *callToActionView; // ivar: _callToActionView
@property (weak, nonatomic) UIView *iconView; // ivar: _iconView
@property (weak, nonatomic) UIView *bodyView; // ivar: _bodyView
@property (weak, nonatomic) UIView *storeView; // ivar: _storeView
@property (weak, nonatomic) UIView *priceView; // ivar: _priceView
@property (weak, nonatomic) UIView *imageView; // ivar: _imageView
@property (weak, nonatomic) UIView *starRatingView; // ivar: _starRatingView
@property (weak, nonatomic) UIView *advertiserView; // ivar: _advertiserView
@property (weak, nonatomic) GADMediaView *mediaView; // ivar: _mediaView
@property (weak, nonatomic) GADAdChoicesView *adChoicesView; // ivar: _adChoicesView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context; // ivar: _context


-(void)commonInit;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)dealloc;
-(void)layoutSubviews;
-(void)didMoveToSuperview;
-(void)updateMediaView;
-(void)updateAdChoicesView;
-(void)orderViews;
-(void)setConstraints:(id)arg0 ;
-(void)setOverlayView:(id)arg0 ;


@end


#endif