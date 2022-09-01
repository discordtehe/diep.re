// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINSTREAMADVIDEOVIEW_H
#define FBINSTREAMADVIDEOVIEW_H


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class FBAdTimer;
@protocol FBInstreamAdVideoViewDelegate;

@interface FBInstreamAdVideoView : UIView

@property (retain, nonatomic) AVPlayer *avPlayer; // ivar: _avPlayer
@property (weak, nonatomic) AVPlayerItem *avPlayerItem; // ivar: _avPlayerItem
@property (nonatomic) BOOL loaded; // ivar: _loaded
@property (nonatomic) BOOL paused; // ivar: _paused
@property (nonatomic) ? progressInterval; // ivar: _progressInterval
@property (retain, nonatomic) id *progressTimeObserver; // ivar: _progressTimeObserver
@property (retain, nonatomic) FBAdTimer *stallTimer; // ivar: _stallTimer
@property (weak, nonatomic) UITapGestureRecognizer *tapGestureRecognizer; // ivar: _tapGestureRecognizer
@property (readonly, nonatomic, getter=isPlaying) BOOL playing;
@property (weak, nonatomic) NSObject<FBInstreamAdVideoViewDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) ? currentTime;
@property (readonly, nonatomic) ? duration; // ivar: _duration
@property (readonly, nonatomic) CGSize naturalSize;
@property (readonly, nonatomic) float volume;


-(id)player;
-(void)setPlayer:(id)arg0 ;
-(id)init;
-(void)dealloc;
-(void)loadMovieWithURL:(id)arg0 progressInteral:(struct ? )arg1 ;
-(void)play;
-(void)pause;
-(void)addGestureRecognizers;
-(void)startStallTimer;
-(void)setupNotifications;
-(void)addObservers;
-(void)addProgressTimeObserver;
-(id)addPeriodicTimeObserverForInterval:(struct ? )arg0 queue:(id)arg1 usingBlock:(id)arg2 ;
-(void)removeAllObservers;
-(void)removeProgressTimeObserver;
-(void)removeTimeObserver:(id)arg0 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)playbackStalled;
-(void)tap:(id)arg0 ;
+(Class)layerClass;


@end


#endif