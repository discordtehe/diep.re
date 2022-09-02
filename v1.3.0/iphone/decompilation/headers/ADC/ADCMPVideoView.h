// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCMPVIDEOVIEW_H
#define ADCMPVIDEOVIEW_H

@protocol ADCVideoViewDelegate;

#import <CoreFoundation/CoreFoundation.h>

@class ADCVideoView;
@class ADCMPViewContext;
@class ADCVideoTimer;

@interface ADCMPVideoView : ADCVideoView {
    BOOL _observing;
    BOOL _playing;
    BOOL _reportedReady;
    id *_timeObserver;
    ADCMPViewContext *_context;
    ADCVideoTimer *_timer;
    id<ADCVideoViewDelegate> *_delegate;
    NSUInteger _watchdogTrigger;
    NSTimer *_videoProgressTimer;
}




-(id)initWithFrame:(struct CGRect )arg0 originNumber:(NSUInteger)arg1 context:(id)arg2 player:(id)arg3 timer:(BOOL)arg4 videoDelegate:(id)arg5 ;
-(void)removeObservers;
-(void)willMoveToSuperview:(id)arg0 ;
-(id)player;
-(void)play:(BOOL)arg0 ;
-(void)checkProgress;
-(void)pause;
-(void)seekToTime:(CGFloat)arg0 completionHandler:(id)arg1 ;
-(void)setVolume:(float)arg0 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)finished;
-(id)createTimerInRect:(struct CGRect )arg0 withDuration:(CGFloat)arg1 ;
-(void)dealloc;
+(Class)layerClass;


@end


#endif