// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADTOOLBARVIEW_H
#define FBINTERSTITIALADTOOLBARVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdImage;
@class FBAdChoicesButton;
@class FBAdCloseButton;
@protocol FBInterstitialAdToolbarViewDelegate;

@interface FBInterstitialAdToolbarView : UIView

@property (readonly, nonatomic) CGFloat toolbarHeight;
@property (copy, nonatomic) UIColor *textColor; // ivar: _textColor
@property (copy, nonatomic) UIColor *subtitleTextColor; // ivar: _subtitleTextColor
@property (copy, nonatomic) UIColor *activeColor; // ivar: _activeColor
@property (copy, nonatomic) UIColor *inactiveColor; // ivar: _inactiveColor
@property (nonatomic) ? currentTime; // ivar: _currentTime
@property (retain, nonatomic) FBAdImage *icon; // ivar: _icon
@property (copy, nonatomic) NSString *title; // ivar: _title
@property (copy, nonatomic) NSString *subtitle; // ivar: _subtitle
@property (nonatomic) ? forcedViewTime; // ivar: _forcedViewTime
@property (retain, nonatomic) FBAdChoicesButton *adChoicesButton; // ivar: _adChoicesButton
@property (nonatomic) NSInteger adIconType; // ivar: _adIconType
@property (weak, nonatomic) NSObject<FBInterstitialAdToolbarViewDelegate> *delegate; // ivar: _delegate
@property (nonatomic) NSInteger closeButtonStyle; // ivar: _closeButtonStyle
@property (retain, nonatomic) FBAdCloseButton *closeButton; // ivar: _closeButton
@property (nonatomic) BOOL isRewardedAd; // ivar: _isRewardedAd
@property (copy, nonatomic) NSString *progressHintPrefix; // ivar: _progressHintPrefix
@property (copy, nonatomic) NSString *skipText; // ivar: _skipText
@property (copy, nonatomic) NSString *rewardInFormat; // ivar: _rewardInFormat


-(void)disableForcedView;
-(void)configureToolbarColorsForType:(NSInteger)arg0 ;
-(void)setHeaderInfoHidden:(BOOL)arg0 ;
+(id)newDesign;
+(id)oldDesign;
+(NSInteger)toolbarIconTypeForDataModel:(id)arg0 ;


@end


#endif