// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDETAILSANDCTABUTTONCONTAINERVIEW_H
#define FBADDETAILSANDCTABUTTONCONTAINERVIEW_H


#import <UIKit/UIKit.h>

@class FBAdCTAButton;
@class FBAdDetailsView;
@class FBAdLabel;

@interface FBAdDetailsAndCTAButtonContainerView : UIView

@property (retain, nonatomic) FBAdCTAButton *callToActionButton; // ivar: _callToActionButton
@property (retain, nonatomic) FBAdDetailsView *adDetailsView; // ivar: _adDetailsView
@property (retain, nonatomic) FBAdLabel *socialContextLabel; // ivar: _socialContextLabel
@property (retain, nonatomic) FBAdLabel *bodyTextLabel; // ivar: _bodyTextLabel
@property (nonatomic) BOOL hideBodyTextAndDimButton; // ivar: _hideBodyTextAndDimButton
@property (nonatomic) NSUInteger adDetailsAndCTAButtonContainerViewButtonStyle; // ivar: _adDetailsAndCTAButtonContainerViewButtonStyle


-(id)initWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 bodyText:(id)arg3 socialContext:(id)arg4 callToActionText:(id)arg5 ratingValue:(id)arg6 ratingCount:(id)arg7 style:(NSUInteger)arg8 iconStyle:(NSUInteger)arg9 ;
-(void)setupViewsWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 bodyText:(id)arg3 socialContext:(id)arg4 callToActionText:(id)arg5 ratingValue:(id)arg6 ratingCount:(id)arg7 style:(NSUInteger)arg8 iconStyle:(NSUInteger)arg9 ;
-(void)layoutSubviews;
-(void)layoutSubviewsForDetailed;
-(void)layoutSubviewsForDefaultAndInverted;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(struct CGSize )sizeThatFitsForDetailed:(struct CGSize )arg0 ;
-(struct CGSize )sizeThatFitsForDefaultAndInverted:(struct CGSize )arg0 ;
-(CGFloat)callToActionWantedWidthAndMarginForSize:(struct CGSize )arg0 ;
-(CGFloat)ctaLandscapeWidthForSize:(struct CGSize )arg0 ;
-(struct CGSize )intrinsicContentSize;
-(CGFloat)marginForStyle;
-(CGFloat)textAndCtaHorizontalMargin;
-(void)setAlpha:(CGFloat)arg0 ;
-(void)hideBodyAndDimButtonWithBodyAnimationDuration:(CGFloat)arg0 adDetailsViewAnimationDuration:(CGFloat)arg1 ;
-(void)showBodyAndDimButtonWithBodyAnimationDuration:(CGFloat)arg0 adDetailsViewAnimationDuration:(CGFloat)arg1 bodyTextAnimationDelay:(CGFloat)arg2 ;
-(void)toggleBodyAndButtonWithBodyAnimationDuration:(CGFloat)arg0 adDetailsViewAnimationDuration:(CGFloat)arg1 bodyTextAnimationDelay:(CGFloat)arg2 hide:(BOOL)arg3 ;
-(BOOL)isDetailedLayout;
-(NSUInteger)ctaButtonStyleForStyle:(NSUInteger)arg0 ;
-(NSUInteger)adDetailsViewStyleForStyle:(NSUInteger)arg0 ;
-(BOOL)ctaIsOnBottomForStyle:(NSUInteger)arg0 ;


@end


#endif