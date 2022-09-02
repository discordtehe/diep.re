// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADWATCHANDACTIONCOVERVIEW_H
#define FBADWATCHANDACTIONCOVERVIEW_H


#import <UIKit/UIKit.h>

@class FBInterstitialAdTextView;
@class FBAdCTAButton;
@class FBAdArrowIconView;
@class FBNativeAdDataModel;

@interface FBAdWatchAndActionCoverView : UIView

@property (weak, nonatomic) UIImageView *iconView; // ivar: _iconView
@property (weak, nonatomic) UIImageView *backgroundImageView; // ivar: _backgroundImageView
@property (retain, nonatomic) FBInterstitialAdTextView *textContainerView; // ivar: _textContainerView
@property (weak, nonatomic) UIButton *ctaButton; // ivar: _ctaButton
@property (weak, nonatomic) FBAdCTAButton *ctaButtonLandscape; // ivar: _ctaButtonLandscape
@property (weak, nonatomic) UIButton *coverButton; // ivar: _coverButton
@property (weak, nonatomic) UIVisualEffectView *blurEffectView; // ivar: _blurEffectView
@property (weak, nonatomic) FBAdArrowIconView *arrowIconView; // ivar: _arrowIconView
@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (copy, nonatomic) id *onTap; // ivar: _onTap
@property (nonatomic) NSInteger style; // ivar: _style


-(void)hideImageOverlay;
-(void)increaseYOffsetOfView:(id)arg0 by:(CGFloat)arg1 ;
-(void)layoutSubviews;
-(void)dealloc;
-(void)handleTap:(id)arg0 event:(id)arg1 ;
-(void)startAnimatingArrowIcon:(BOOL)arg0 ;


@end


#endif