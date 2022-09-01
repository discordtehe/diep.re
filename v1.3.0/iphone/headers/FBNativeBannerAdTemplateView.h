// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEBANNERADTEMPLATEVIEW_H
#define FBNATIVEBANNERADTEMPLATEVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeBannerAdView;
@class FBNativeAdHeaderView;
@class FBNativeAdDetailsView;
@class FBAdBannerTemplateHeaderView;

@interface FBNativeBannerAdTemplateView : FBNativeBannerAdView

@property (weak, nonatomic) UILabel *headerTitleLabel; // ivar: _headerTitleLabel
@property (weak, nonatomic) UILabel *headerBodyLabel; // ivar: _headerBodyLabel
@property (weak, nonatomic) FBNativeAdHeaderView *headerView; // ivar: _headerView
@property (weak, nonatomic) FBNativeAdDetailsView *detailsView; // ivar: _detailsView
@property (weak, nonatomic) FBAdBannerTemplateHeaderView *bannerHeaderView; // ivar: _bannerHeaderView
@property (retain, nonatomic) NSNumber *headerSize; // ivar: _headerSize
@property (retain, nonatomic) NSNumber *mediaViewSize; // ivar: _mediaViewSize
@property (retain, nonatomic) NSNumber *detailsSize; // ivar: _detailsSize
@property (nonatomic, getter=isBodyTextEnabled) BOOL bodyTextEnabled;


-(void)constructBodyView;
-(NSInteger)nativeBannerAdViewType;
-(void)constructIconView;
-(void)constructCallToActionButton;
-(void)updateView:(BOOL)arg0 ;
-(BOOL)shouldUseNewTemplateLayout;
+(id)defaultAttributes;


@end


#endif