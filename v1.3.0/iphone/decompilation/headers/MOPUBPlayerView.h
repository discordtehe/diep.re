// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBPLAYERVIEW_H
#define MOPUBPLAYERVIEW_H


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@class MOPUBAVPlayerView;
@class MOPUBReplayView;
@class MOPUBAVPlayer;
@protocol MOPUBPlayerViewDelegate;

@interface MOPUBPlayerView : UIControl

@property (retain, nonatomic) MOPUBAVPlayerView *avView; // ivar: _avView
@property (retain, nonatomic) MOPUBReplayView *replayView; // ivar: _replayView
@property (retain, nonatomic) UIButton *replayVideoButton; // ivar: _replayVideoButton
@property (retain, nonatomic) UIView *progressBarBackground; // ivar: _progressBarBackground
@property (retain, nonatomic) UIView *progressBar; // ivar: _progressBar
@property (retain, nonatomic) UIView *gradientView; // ivar: _gradientView
@property (retain, nonatomic) CAGradientLayer *gradient; // ivar: _gradient
@property (retain, nonatomic) UITapGestureRecognizer *tapGestureRecognizer; // ivar: _tapGestureRecognizer
@property (weak, nonatomic) NSObject<MOPUBPlayerViewDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) MOPUBAVPlayer *avPlayer; // ivar: _avPlayer
@property (nonatomic) NSUInteger displayMode; // ivar: _displayMode
@property (copy, nonatomic) NSString *videoGravity; // ivar: _videoGravity


-(id)initWithFrame:(struct CGRect )arg0 delegate:(id)arg1 ;
-(void)dealloc;
-(void)createPlayerView;
-(void)handleVideoInitFailure;
-(void)playbackTimeDidProgress;
-(void)playbackDidFinish;
-(void)layoutSubviews;
-(void)layoutProgressBar;
-(void)layoutGradientview;
-(void)layoutReplayView;


@end


#endif