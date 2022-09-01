// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADHIDDENCONTENTVIEW_H
#define FBADHIDDENCONTENTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdPaddedLabel;
@class FBAdCloseButton;
@class FBAdShieldIcon;
@class FBAdGearIcon;
@class FBAdImage;
@class FBAdCheckIcon;
@class FBAdHideIcon;

@interface FBAdHiddenContentView : UIView

@property (copy, nonatomic) NSString *reason; // ivar: _reason
@property (retain, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (retain, nonatomic) UILabel *subtitleLabel; // ivar: _subtitleLabel
@property (retain, nonatomic) FBAdPaddedLabel *reasonLabel; // ivar: _reasonLabel
@property (retain, nonatomic) UIButton *manageAdPreferencesButton; // ivar: _manageAdPreferencesButton
@property (retain, nonatomic) FBAdCloseButton *closeButton; // ivar: _closeButton
@property (retain, nonatomic) FBAdShieldIcon *shieldIcon; // ivar: _shieldIcon
@property (retain, nonatomic) FBAdGearIcon *gearIcon; // ivar: _gearIcon
@property (retain, nonatomic) UIImageView *logoImageView; // ivar: _logoImageView
@property (retain, nonatomic) FBAdImage *logoImage; // ivar: _logoImage
@property (retain, nonatomic) FBAdCheckIcon *checkIcon; // ivar: _checkIcon
@property (retain, nonatomic) FBAdHideIcon *hideIcon; // ivar: _hideIcon
@property (nonatomic) NSInteger flowType; // ivar: _flowType
@property (retain, nonatomic) UIView *backgroundView; // ivar: _backgroundView
@property (nonatomic) NSInteger layoutType; // ivar: _layoutType
@property (copy, nonatomic) id *onDismiss; // ivar: _onDismiss
@property (copy, nonatomic) id *onManageAdSettings; // ivar: _onManageAdSettings


-(id)initWithReason:(id)arg0 logoImage:(id)arg1 flowType:(NSInteger)arg2 ;
-(void)layoutSubviews;
-(void)layoutMultiline;
-(void)layoutOneline;
-(void)layoutFullscreen;
-(void)verticallyAlignContent;
-(id)mainIcon;
-(void)handleManageAdSettingsTap;
-(void)handleCloseButtonTap;


@end


#endif