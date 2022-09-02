// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADDETAILSVIEW_H
#define FBNATIVEADDETAILSVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdBase;
@class FBNativeAdViewAttributes;
@class FBAdBodyView;
@class FBAdIconView;
@protocol FBAdUpdatableView;

@interface FBNativeAdDetailsView : UIView <FBAdUpdatableView>



@property (weak, nonatomic) FBNativeAdBase *nativeAdBase; // ivar: _nativeAdBase
@property (weak, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) FBAdBodyView *bodyView; // ivar: _bodyView
@property (weak, nonatomic) FBAdIconView *iconView; // ivar: _iconView
@property (weak, nonatomic) UIButton *callToActionButton; // ivar: _callToActionButton
@property (weak, nonatomic) UILabel *bodyLabel; // ivar: _bodyLabel
@property (nonatomic, getter=isLoaded) BOOL loaded; // ivar: _loaded
@property (nonatomic, getter=isBodyTextEnabled) BOOL bodyTextEnabled; // ivar: _bodyTextEnabled
@property (nonatomic) NSInteger nativeBannerAdViewType; // ivar: _nativeBannerAdViewType
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 nativeAdBase:(id)arg1 attributes:(id)arg2 ;
-(void)reinitializeView;
-(void)createView;
-(void)updateView:(BOOL)arg0 ;
-(void)resetView;
-(void)layoutSubviews;
-(void)layoutNativeBanner;
-(BOOL)pointInside:(struct CGPoint )arg0 withEvent:(id)arg1 ;


@end


#endif