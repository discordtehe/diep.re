// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCLOSEBUTTON_H
#define FBADCLOSEBUTTON_H


#import <UIKit/UIKit.h>


@interface FBAdCloseButton : UIView {
    BOOL _forcedViewDisabled;
}


@property (nonatomic) ? currentTime; // ivar: _currentTime
@property (readonly, nonatomic) CGFloat currentTimeMs;
@property (readonly, nonatomic) ? forcedViewRemainingTime;
@property (readonly, nonatomic, getter=isCloseable) BOOL closeable;
@property (retain, nonatomic) UIColor *progressColor; // ivar: _progressColor
@property (retain, nonatomic) UIColor *strokeColor; // ivar: _strokeColor
@property (nonatomic) CGFloat contentPadding; // ivar: _contentPadding
@property (nonatomic) NSInteger style; // ivar: _style
@property (nonatomic) BOOL fillup; // ivar: _fillup
@property (nonatomic) ? forcedViewTime; // ivar: _forcedViewTime
@property (nonatomic) BOOL shouldScaleToFill; // ivar: _shouldScaleToFill


-(id)initWithForcedViewTime:(struct ? )arg0 style:(NSInteger)arg1 ;
-(id)init;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)drawProgressInRect:(struct CGRect )arg0 ;
-(void)drawXInRect:(struct CGRect )arg0 ;
-(void)drawArrowsInRect:(struct CGRect )arg0 ;
-(void)disableForcedView;
-(CGFloat)completeRatio;


@end


#endif