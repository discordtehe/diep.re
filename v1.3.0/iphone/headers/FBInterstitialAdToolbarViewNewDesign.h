// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADTOOLBARVIEWNEWDESIGN_H
#define FBINTERSTITIALADTOOLBARVIEWNEWDESIGN_H


#import <UIKit/UIKit.h>

@class FBInterstitialAdToolbarView;
@class FBAdInfoButton;

@interface FBInterstitialAdToolbarViewNewDesign : FBInterstitialAdToolbarView

@property (retain, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (retain, nonatomic) UILabel *sponsoredLabel; // ivar: _sponsoredLabel
@property (retain, nonatomic) UIImageView *iconImageView; // ivar: _iconImageView
@property (retain, nonatomic) FBAdInfoButton *adInfoButton; // ivar: _adInfoButton
@property (retain, nonatomic) UILabel *closeHintLabel; // ivar: _closeHintLabel
@property (retain, nonatomic) UIView *closeButtonContainer; // ivar: _closeButtonContainer
@property (retain, nonatomic) UIView *rightButtonsContainer; // ivar: _rightButtonsContainer
@property (retain, nonatomic) UIStackView *rightButtonsStackView; // ivar: _rightButtonsStackView


-(id)init;
-(void)setup;
-(void)updateHintTextIfNeeded;
-(void)disableForcedView;
-(void)setCurrentTime:(struct ? )arg0 ;
-(void)setForcedViewTime:(struct ? )arg0 ;
-(void)setCloseButtonHidden:(BOOL)arg0 ;
-(void)setShowAdInfoButton:(BOOL)arg0 ;
-(void)setAdIconType:(NSInteger)arg0 ;
-(void)infoButtonTapped:(id)arg0 ;
-(void)closeButtonTapped:(id)arg0 ;
-(id)adChoicesButton;
-(void)setCloseButtonStyle:(NSInteger)arg0 ;
-(id)closeButton;


@end


#endif