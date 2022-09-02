// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBPLAYABLEINTROSCREENVIEW_H
#define FBPLAYABLEINTROSCREENVIEW_H


#import <UIKit/UIKit.h>

@class FBAdLabel;
@class FBNativeAdDataModel;

@interface FBPlayableIntroScreenView : UIView

@property (weak, nonatomic) UIView *adDetailsView; // ivar: _adDetailsView
@property (weak, nonatomic) UIView *gameplayView; // ivar: _gameplayView
@property (weak, nonatomic) UIImageView *gameplayIconView; // ivar: _gameplayIconView
@property (weak, nonatomic) FBAdLabel *gameplayTextView; // ivar: _gameplayTextView
@property (weak, nonatomic) UIImageView *iconView; // ivar: _iconView
@property (retain, nonatomic) FBNativeAdDataModel *nativeAdDataModel; // ivar: _nativeAdDataModel
@property (weak, nonatomic) FBAdLabel *subtitleView; // ivar: _subtitleView
@property (weak, nonatomic) FBAdLabel *titleView; // ivar: _titleView


-(void)setupAdDetailsView;
-(void)setupIconView;
-(void)setupTitleView;
-(void)setupGameplayView;
-(void)setupGameplayIconView;
-(void)setupGameplayTextView;
-(void)initView;
-(id)initWithAdData:(id)arg0 ;
-(void)setFrameOnShow:(struct CGRect )arg0 ;
-(void)layoutSubviews;


@end


#endif