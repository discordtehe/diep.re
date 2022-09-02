// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCVIDEOVIEW_H
#define ADCVIDEOVIEW_H


#import <CoreFoundation/CoreFoundation.h>

@class ADCView;
@class ADCViewContext;
@class ADCVideoTimer;

@interface ADCVideoView : ADCView {
    BOOL _observing;
    BOOL _playing;
    BOOL _reportedReady;
    id *_timeObserver;
    ADCViewContext *_context;
    ADCVideoTimer *_timer;
    NSUInteger _watchdogTrigger;
    NSTimer *_videoProgressTimer;
    CGFloat _lastScreenWidth;
    UIEdgeInsets _lastAppliedInset;
}


@property (nonatomic) NSUInteger originNumber; // ivar: _originNumber
@property (copy, nonatomic) id *readyHandler; // ivar: _readyHandler
@property (copy, nonatomic) id *progressHandler; // ivar: _progressHandler
@property (copy, nonatomic) id *failHandler; // ivar: _failHandler
@property (nonatomic) CGFloat elapsed; // ivar: _elapsed
@property (nonatomic) CGFloat duration; // ivar: _duration
@property (nonatomic) BOOL complete; // ivar: _complete


-(id)initWithFrame:(struct CGRect )arg0 originNumber:(NSUInteger)arg1 context:(id)arg2 player:(id)arg3 timer:(BOOL)arg4 ;
-(void)containerResized;
-(void)updateTimerOffset;
-(void)removeObservers;
-(void)willMoveToSuperview:(id)arg0 ;
-(id)player;
-(void)play:(BOOL)arg0 ;
-(void)checkProgress;
-(void)pause;
-(void)seekToTime:(CGFloat)arg0 completionHandler:(id)arg1 ;
-(void)setVolume:(float)arg0 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)onFailedStatus;
-(void)finished;
-(id)createTimerInRect:(struct CGRect )arg0 withDuration:(CGFloat)arg1 ;
-(void)dealloc;
+(Class)layerClass;


@end


#endif