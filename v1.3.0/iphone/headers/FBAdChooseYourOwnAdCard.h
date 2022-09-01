// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOOSEYOUROWNADCARD_H
#define FBADCHOOSEYOUROWNADCARD_H


#import <UIKit/UIKit.h>

@class FBAdTouchRecordingView;
@class FBGradientView;
@class FBAdPlayIcon;
@class FBAdSmallIcon;
@protocol FBAdChooseYourOwnAdCardDelegate;

@interface FBAdChooseYourOwnAdCard : FBAdTouchRecordingView

@property (retain, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (retain, nonatomic) FBGradientView *gradientView; // ivar: _gradientView
@property (retain, nonatomic) UIImageView *imageView; // ivar: _imageView
@property (retain, nonatomic) UIImageView *iconImageView; // ivar: _iconImageView
@property (retain, nonatomic) UIView *playIconShadowView; // ivar: _playIconShadowView
@property (retain, nonatomic) UIView *adReportingTouchAreaView; // ivar: _adReportingTouchAreaView
@property (retain, nonatomic) FBAdPlayIcon *playIcon; // ivar: _playIcon
@property (retain, nonatomic) FBAdSmallIcon *infoIcon; // ivar: _infoIcon
@property (retain, nonatomic) FBAdSmallIcon *adChoicesIcon; // ivar: _adChoicesIcon
@property (retain, nonatomic) UILabel *firstSubtitleLabel; // ivar: _firstSubtitleLabel
@property (retain, nonatomic) UILabel *secondSubtitleLabel; // ivar: _secondSubtitleLabel
@property (retain, nonatomic) UILabel *subtitleDivider; // ivar: _subtitleDivider
@property (retain, nonatomic) UILabel *subtitleAndAdchoicesDivider; // ivar: _subtitleAndAdchoicesDivider
@property (retain, nonatomic) FBAdSmallIcon *leftIcon; // ivar: _leftIcon
@property (nonatomic) BOOL shouldShowFirstSubtitle; // ivar: _shouldShowFirstSubtitle
@property (nonatomic) BOOL shouldShowSecondSubtitle; // ivar: _shouldShowSecondSubtitle
@property (nonatomic) BOOL playIconOnTopInLandscape; // ivar: _playIconOnTopInLandscape
@property (weak, nonatomic) NSObject<FBAdChooseYourOwnAdCardDelegate> *delegate; // ivar: _delegate
@property (nonatomic) NSUInteger iconStyle; // ivar: _iconStyle
@property (nonatomic) NSUInteger smallIconStyle; // ivar: _smallIconStyle
@property (nonatomic) NSUInteger adOptionsIconStyle; // ivar: _adOptionsIconStyle


-(id)initWithDelegate:(id)arg0 imageUrl:(id)arg1 iconUrl:(id)arg2 iconStyle:(NSUInteger)arg3 adOptionsIconStyle:(NSUInteger)arg4 smallIconStyle:(NSUInteger)arg5 title:(id)arg6 firstSubtitle:(id)arg7 secondSubtitle:(id)arg8 playIconOnTopInLandscape:(BOOL)arg9 ;
-(void)setupViewWithImageUrl:(id)arg0 iconUrl:(id)arg1 title:(id)arg2 firstSubtitle:(id)arg3 secondSubtitle:(id)arg4 ;
-(void)loadImageFromUrl:(id)arg0 forImageView:(id)arg1 ;
-(void)layoutSubviews;
-(void)didTapCard;
-(void)didTapReportAd;


@end


#endif