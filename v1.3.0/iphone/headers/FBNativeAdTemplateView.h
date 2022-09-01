// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADTEMPLATEVIEW_H
#define FBNATIVEADTEMPLATEVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdView;
@class FBNativeAdHeaderView;
@class FBNativeAdDetailsView;
@class FBAdTemplateHeaderView;
@class FBAdTemplateFooterView;

@interface FBNativeAdTemplateView : FBNativeAdView

@property (weak, nonatomic) UILabel *headerTitleLabel; // ivar: _headerTitleLabel
@property (weak, nonatomic) UILabel *headerBodyLabel; // ivar: _headerBodyLabel
@property (weak, nonatomic) FBNativeAdHeaderView *headerView; // ivar: _headerView
@property (weak, nonatomic) FBNativeAdDetailsView *detailsView; // ivar: _detailsView
@property (weak, nonatomic) FBAdTemplateHeaderView *templateHeaderView; // ivar: _templateHeaderView
@property (weak, nonatomic) FBAdTemplateFooterView *templateFooterView; // ivar: _templateFooterView
@property (retain, nonatomic) NSNumber *headerSize; // ivar: _headerSize
@property (retain, nonatomic) NSNumber *mediaViewSize; // ivar: _mediaViewSize
@property (retain, nonatomic) NSNumber *detailsSize; // ivar: _detailsSize
@property (nonatomic, getter=isBodyTextEnabled) BOOL bodyTextEnabled;


-(void)constructBodyView;
-(BOOL)shouldUseNewTemplateLayout;
-(void)constructIconView;
-(void)constructCallToActionButton;
-(void)updateView:(BOOL)arg0 ;
+(id)defaultAttributes;


@end


#endif