// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJFLANIMATEDIMAGEVIEW_H
#define TJFLANIMATEDIMAGEVIEW_H


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@class TJFLAnimatedImage;

@interface TJFLAnimatedImageView : UIImageView

@property (retain, nonatomic) UIImage *currentFrame; // ivar: _currentFrame
@property (nonatomic) NSUInteger currentFrameIndex; // ivar: _currentFrameIndex
@property (nonatomic) NSUInteger loopCountdown; // ivar: _loopCountdown
@property (nonatomic) CGFloat accumulator; // ivar: _accumulator
@property (retain, nonatomic) CADisplayLink *displayLink; // ivar: _displayLink
@property (nonatomic) BOOL shouldAnimate; // ivar: _shouldAnimate
@property (nonatomic) BOOL needsDisplayWhenImageBecomesAvailable; // ivar: _needsDisplayWhenImageBecomesAvailable
@property (retain, nonatomic) TJFLAnimatedImage *animatedImage; // ivar: _animatedImage
@property (copy, nonatomic) id *loopCompletionBlock; // ivar: _loopCompletionBlock
@property (copy, nonatomic) NSString *runLoopMode; // ivar: _runLoopMode


-(id)initWithImage:(id)arg0 ;
-(id)initWithImage:(id)arg0 highlightedImage:(id)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)commonInit;
-(void)dealloc;
-(void)didMoveToSuperview;
-(void)didMoveToWindow;
-(void)setAlpha:(CGFloat)arg0 ;
-(void)setHidden:(BOOL)arg0 ;
-(struct CGSize )intrinsicContentSize;
-(id)image;
-(void)setImage:(id)arg0 ;
-(CGFloat)frameDelayGreatestCommonDivisor;
-(void)startAnimating;
-(void)stopAnimating;
-(BOOL)isAnimating;
-(void)setHighlighted:(BOOL)arg0 ;
-(void)updateShouldAnimate;
-(void)displayDidRefresh:(id)arg0 ;
-(void)displayLayer:(id)arg0 ;
+(id)defaultRunLoopMode;


@end


#endif