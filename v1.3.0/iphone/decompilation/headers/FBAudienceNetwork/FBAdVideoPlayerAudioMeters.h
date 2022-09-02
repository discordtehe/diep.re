// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOPLAYERAUDIOMETERS_H
#define FBADVIDEOPLAYERAUDIOMETERS_H


#import <UIKit/UIKit.h>


@interface FBAdVideoPlayerAudioMeters : UIView {
    UIView *_leftMeter;
    UIView *_centerMeter;
    UIView *_rightMeter;
    BOOL _isAnimating;
    CGFloat _leftValue;
    CGFloat _centerValue;
    CGFloat _rightValue;
}


@property (nonatomic) BOOL hidesWhenStopped; // ivar: _hidesWhenStopped


-(id)initWithFrame:(struct CGRect )arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)layoutSubviews;
-(void)setHidden:(BOOL)arg0 ;
-(void)didMoveToSuperview;
-(void)startAnimating;
-(void)stopAnimating;
-(BOOL)isAnimating;
-(id)newAudioMeter;
-(void)_setAnimationForLayer:(id)arg0 values:(id)arg1 ;
-(void)_startAnimatingIfNecessary;
-(void)_stopAnimating;


@end


#endif