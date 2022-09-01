// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBLURREDOVERLAYVIEW_H
#define FBADBLURREDOVERLAYVIEW_H


#import <UIKit/UIKit.h>


@interface FBAdBlurredOverlayView : UIView

@property (weak, nonatomic) UIVisualEffectView *blurEffectView; // ivar: _blurEffectView
@property (weak, nonatomic) UIView *overlayView; // ivar: _overlayView
@property (weak, nonatomic) UIImageView *backgroundImageView; // ivar: _backgroundImageView


-(id)initWithBackgroundImage:(id)arg0 ;
-(id)initWithBackgroundImage:(id)arg0 andOverlayColor:(id)arg1 ;
-(void)setupOverlayViewWithColor:(id)arg0 ;
-(void)setupBlurEffectView;
-(void)setupBackgroundImageViewWithImage:(id)arg0 ;
-(void)setupViewWithImage:(id)arg0 andOverlayColor:(id)arg1 ;
-(void)layoutSubviews;


@end


#endif