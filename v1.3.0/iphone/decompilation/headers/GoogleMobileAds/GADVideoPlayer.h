// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOPLAYER_H
#define GADVIDEOPLAYER_H

@protocol OS_dispatch_queue, OS_dispatch_semaphore;

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADWebAdView;
@class GADVideoConfiguration;
@class GADObserverCollection;
@class GADAVPlayerItemLogger;
@protocol GADAVPlayerItemProvider;
@protocol GADEventContextSource;

@interface GADVideoPlayer : NSObject {
    GADWebAdView *_adView;
    id<GADAVPlayerItemProvider> *_playerItemProvider;
    GADVideoConfiguration *_videoConfiguration;
    GADObserverCollection *_observers;
    CGFloat _playerActionTimeoutInterval;
    id<GADEventContextSource> *_loggingContextSource;
    BOOL _appActive;
    AVPlayer *_player;
    AVPlayerItem *_playerItem;
    NSMutableArray *_periodicTimeObservers;
    BOOL _playing;
    BOOL _isVisible;
    BOOL _hasPlaybackStalledAtLeastOnce;
    BOOL _isObservingPlayer;
    BOOL _isObservingPlayerRate;
    BOOL _isObservingPlayerItem;
    BOOL _isObservingPlayerItemLoadedTimeRanges;
    BOOL _loaded;
    NSInteger _numberOfBlocksMomentarilyPausedPlayer;
    NSString *_lastPlayerTimeIntervalString;
    GADAVPlayerItemLogger *_playerItemLogger;
    NSMutableArray *_playbackStartObservers;
    NSObject<OS_dispatch_queue> *_actionLockQueue;
    NSOperationQueue *_actionOperationQueue;
    NSNumber *_scheduledPlay;
    NSNumber *_scheduledMute;
    NSNumber *_scheduledVolume;
    BOOL _scheduledActionUserInitiated;
    NSObject<OS_dispatch_semaphore> *_actionSemaphore;
    uint8_t _canPlayThroughPosted;
    uint8_t _hasPlaybackEnded;
    uint8_t _deallocated;
}


@property (readonly) BOOL hasPostedCanPlayThrough;
@property (readonly) BOOL hasPlaybackEnded;


-(id)initWithAdView:(id)arg0 playerItemProvider:(id)arg1 visibilityMessageSource:(id)arg2 videoConfiguration:(id)arg3 loggingContextSource:(id)arg4 ;
-(void)dealloc;
-(void)asyncLoadPlayer;
-(id)createPlayerLayer;
-(void)playUserInitiated:(BOOL)arg0 ;
-(void)pauseUserInitiated:(BOOL)arg0 ;
-(void)setMuted:(BOOL)arg0 userInitiated:(BOOL)arg1 ;
-(void)setVolume:(float)arg0 userInitiated:(BOOL)arg1 ;
-(void)flushPlayerAction;
-(void)flushPlayerActionPlaying:(BOOL)arg0 volume:(float)arg1 muted:(BOOL)arg2 userInitiated:(BOOL)arg3 semaphore:(id)arg4 ;
-(void)seekToTime:(CGFloat)arg0 ;
-(struct CGSize )videoSize;
-(void)momentarilyPauseAndExecuteBlock:(id)arg0 ;
-(void)addOutput:(id)arg0 ;
-(void)removeOutput:(id)arg0 ;
-(void)addPlaybackStartListenerUsingBlock:(id)arg0 ;
// -(void)addPeriodicTimeObserverForInterval:(struct ? )arg0 queue:(id)arg1 usingBlock:(id)arg2 completionBlock:(unk)arg3  ;
-(void)removeTimeObserver:(id)arg0 ;
-(void)playerVisibilityDidChange:(id)arg0 ;
-(void)optimizePlayerResources;
-(void)reattachPlayersCurrentItem;
-(void)handlePlayerItemDurationLoadUpdate;
-(void)observePlayer;
-(void)observePlayerItem;
-(void)observePlayerItemLoadedTimeRanges;
-(void)stopObservingPlayerItemLoadedTimeRanges;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)handlePlayerRateChange;
-(void)itemDidPlayToEnd:(id)arg0 ;
-(void)notifyPlayerMetadata;
-(void)notifyVideoPlayerWithTime:(struct ? )arg0 ;
-(void)notifyVideoReadyToPlay;
-(void)notifyVideoPlayerWithNewStatus:(NSInteger)arg0 ;
-(void)notifyVideoRateChanged;


@end


#endif