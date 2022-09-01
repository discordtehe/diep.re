// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADTOOLBARVIEWOLDDESIGN_H
#define FBINTERSTITIALADTOOLBARVIEWOLDDESIGN_H


#import <UIKit/UIKit.h>

@class FBInterstitialAdToolbarView;
@class FBAdInfoButton;

@interface FBInterstitialAdToolbarViewOldDesign : FBInterstitialAdToolbarView

@property (retain, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (retain, nonatomic) UILabel *sponsoredLabel; // ivar: _sponsoredLabel
@property (retain, nonatomic) UIImageView *iconImageView; // ivar: _iconImageView
@property (retain, nonatomic) FBAdInfoButton *adInfoButton; // ivar: _adInfoButton
@property (readonly, nonatomic) ? forcedViewRemainingTime; // ivar: _forcedViewRemainingTime
@property (nonatomic) BOOL closeButtonDisabled; // ivar: _closeButtonDisabled


-(id)init;
-(void)disableForcedView;
-(void)setForcedViewTime:(struct ? )arg0 ;
-(void)setCurrentTime:(struct ? )arg0 ;
-(void)setCloseButtonHidden:(BOOL)arg0 ;
-(void)setHeaderInfoHidden:(BOOL)arg0 ;
-(void)layoutSubviews;
-(BOOL)showAdInfoButton;
-(void)setAdIconType:(NSInteger)arg0 ;
-(void)infoButtonTapped:(id)arg0 ;
-(void)closeButtonTapped:(id)arg0 ;
-(void)setTitle:(id)arg0 ;
-(void)setSubtitle:(id)arg0 ;
-(void)setIcon:(id)arg0 ;
-(void)setTextColor:(id)arg0 ;
-(void)setSubtitleTextColor:(id)arg0 ;
-(void)setActiveColor:(id)arg0 ;
-(void)setAdChoicesButton:(id)arg0 ;
-(void)setCloseButtonStyle:(NSInteger)arg0 ;
-(id)closeButton;
-(void)configureToolbarColorsForType:(NSInteger)arg0 ;


@end


#endif