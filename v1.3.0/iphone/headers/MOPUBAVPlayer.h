// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBAVPLAYER_H
#define MOPUBAVPLAYER_H


#import <AVFoundation/AVFoundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPTimer;
@protocol MOPUBAVPlayerDelegate;

@interface MOPUBAVPlayer : AVPlayer

@property (readonly, weak, nonatomic) NSObject<MOPUBAVPlayerDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSURL *mediaURL; // ivar: _mediaURL
@property (retain, nonatomic) MPTimer *playbackTimer; // ivar: _playbackTimer
@property (nonatomic) ? lastContinuousPlaybackCMTime; // ivar: _lastContinuousPlaybackCMTime
@property (nonatomic) BOOL playbackDidStall; // ivar: _playbackDidStall
@property (readonly, nonatomic) CGFloat currentItemDuration;
@property (readonly, nonatomic) CGFloat currentPlaybackTime;


-(id)initWithDelegate:(id)arg0 playerItem:(id)arg1 ;
-(void)dealloc;
-(void)play;
-(void)pause;
-(void)setMuted:(BOOL)arg0 ;
-(void)setAudioVolume:(float)arg0 ;
-(void)startTimeObserver;
-(void)timerTick;
-(void)stopTimeObserver;
-(void)checkNetworkStatus:(id)arg0 ;
-(void)avPlayer:(id)arg0 playbackTimeDidProgress:(CGFloat)arg1 ;
-(void)avPlayerDidStall;
-(void)playbackDidFinish;
-(void)dispose;


@end


#endif