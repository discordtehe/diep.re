// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFSYNCHRONOUSPLAYER_H
#define FNFSYNCHRONOUSPLAYER_H

@protocol FNFPlayerCaptionParser, FNFPlayerLiveTraceManager, OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol FNFPlayerDisplayEngineDelegate;
@protocol FNFAssetEventListener;
@protocol FNFAssetForPlayer;
@protocol FNFPlayerAudioEngine;
@protocol FNFPlayerAudioDecoder;
@protocol FNFPlayerDisplayEngine;
@protocol FNFClock;
@protocol FNFSynchronousPlayerDelegate;

@interface FNFSynchronousPlayer : NSObject <FNFPlayerDisplayEngineDelegate, FNFAssetEventListener>

 {
    id<FNFAssetForPlayer> *_playerAsset;
    id<FNFPlayerAudioEngine> *_audioEngine;
    id<FNFPlayerAudioDecoder> *_audioDecoder;
    id<FNFPlayerDisplayEngine> *_displayEngine;
    id<FNFClock> *_clock;
    id<FNFPlayerCaptionParser> *_captionParser;
    id<FNFPlayerLiveTraceManager> *_liveTraceManager;
    NSObject<OS_dispatch_queue> *_runningQueue;
    FNFPlayerInternalState _playerInternalState;
    NSError *_playerError;
    float _volume;
    float _volumeRampTime;
    id *_audioLevelCallback;
    id *_representationChangedCallback;
    BOOL _skipAudioQueueFlush;
    BOOL _endFrameSeekIfNoMoreFrames;
    BOOL _useLastCallbackInBackToBackFrameSeek;
    BOOL _flushAudioQueueOnPause;
    BOOL _enableASRCaptions;
    BOOL _isDurationIndefinite;
    unsigned int _minSampleAudioFrameSize;
    BOOL _setPlayingRequestedFalseWhenUpdatePause;
    BOOL _checkActiveBeforeStallResume;
}


@property (weak, nonatomic) NSObject<FNFSynchronousPlayerDelegate> *delegate; // ivar: _delegate


-(void)dealloc;
-(id)initWithDisplayEngine:(id)arg0 config:(struct ? )arg1 audioEngine:(id)arg2 audioDecoder:(id)arg3 clock:(id)arg4 runningQueue:(id)arg5 muted:(BOOL)arg6 asyncTimebase:(BOOL)arg7 ;
-(id)description;
-(void)play;
-(void)pause;
-(void)_pause:(int)arg0 ;
-(void)setRenderer:(id)arg0 ;
-(void)setCaptionParser:(id)arg0 ;
-(void)setAudioEngine:(id)arg0 ;
-(void)setAudioDecoder:(id)arg0 ;
-(void)setLiveTraceManager:(id)arg0 ;
-(void)replaceCurrentItemWithPlayerItem:(id)arg0 ;
-(void)replaceCurrentItemWithPlayerItem:(id)arg0 loggingContext:(id)arg1 ;
-(id)createPeriodicTimeObserverForInterval:(struct ? )arg0 followMasterClock:(BOOL)arg1 usingBlock:(id)arg2 ;
-(void)addTimeObserver:(id)arg0 ;
-(void)removeTimeObserver:(id)arg0 ;
-(id)currentItem;
-(float)rate;
-(void)setRate:(float)arg0 ;
-(void)_syncAudioEngineWithClock;
-(struct ? )currentTime;
-(id)error;
-(CGFloat)prepareToSeekWithTime:(struct ? )arg0 ;
-(void)seekToTime:(struct ? )arg0 completionHandler:(id)arg1 ;
-(void)seekToTime:(struct ? )arg0 toleranceBefore:(struct ? )arg1 toleranceAfter:(struct ? )arg2 completionHandler:(id)arg3 ;
-(void)_seekToTime:(struct ? )arg0 frameSeekOn:(BOOL)arg1 completionHandler:(id)arg2 ;
-(void)_handleSeekCancellation;
-(float)volume;
-(void)setVolume:(float)arg0 ;
-(void)setVolume:(float)arg0 rampTime:(float)arg1 ;
-(BOOL)isMuted;
-(void)setMuted:(BOOL)arg0 ;
-(struct ? )lastStartingTime;
-(struct ? )lastRequestedStartTime;
// -(void)addLevelMeterCallback:(id)arg0 timeInterval:(unk)arg1  ;
-(void)removeLevelMeterCallback;
-(void)addRepresentationChangedCallback:(id)arg0 ;
-(void)_levelMeterCallback;
-(void)_reenableLevelMeteringIfNeeded;
-(void)_pausePlayback:(int)arg0 ;
-(void)_resumePlayback;
-(void)_updateTimersOnPause;
-(void)_manageStallStateWithDidStartPlaying:(BOOL)arg0 ;
-(void)_updateFrameAfterSeek;
-(void)_startStalling:(BOOL)arg0 ;
-(id)_addPlaybackTimerForAsset;
-(id)_addDurationTimerForAsset;
-(id)_addSeekFrameUpdateTimer;
-(id)_addStallTimer;
-(id)_addSampleBufferFlushTimerWithCompletionHandler:(id)arg0 ;
-(void)_flushSampleBuffersDuringFrameSeekWithCompletionHandler:(id)arg0 ;
-(void)_playbackFinishedTimeForAsset:(struct ? )arg0 ;
-(void)_playbackTimeListenerForAsset:(struct ? )arg0 ;
-(BOOL)_enqueuedTime:(struct ? )arg0 isGreaterThanLength:(struct ? )arg1 ;
-(BOOL)_videoBufferLengthIsGreaterThan:(struct ? )arg0 ;
-(BOOL)_audioBufferLengthIsGreaterThan:(struct ? )arg0 ;
-(void)_adjustAudioFrameToCurrentPlaybackTime;
-(BOOL)_audioPutDataIntoBufferCallback:(struct AudioQueueBuffer *)arg0 timestamp:(struct AudioTimeStamp *)arg1 framePts:(struct ? *)arg2 isfirstPacket:(*BOOL)arg3 ;
-(BOOL)_canParseCaptions;
-(void)_markDisplayImmediately:(struct opaqueCMSampleBuffer *)arg0 ;
-(void)_videoLayerEnqueueFrameCallback;
-(void)_videoLayerEnqueueDecompressedFrameCallback;
-(void)_checkIfRepresentationChanged;
-(BOOL)_videoHasAudioTrack;
-(BOOL)_videoIsAudioActive;
-(void)_setupAudio;
-(void)_startVideo;
-(void)_enqueueBuffer;
-(void)_updateStatus:(NSInteger)arg0 ;
-(void)_syncVolume;
-(BOOL)_readyToPlay;
-(void)_audioEngineErrorCallback:(id)arg0 ;
-(void)_audioDecoderErrorCallback:(id)arg0 ;
-(void)_setupLayer;
-(void)applicationWillResignActive;
-(void)applicationDidBecomeActive;
-(NSInteger)status;
-(void)invalidate;
-(void)_resetStallState;
-(id)callbackQueueForDisplayEngineDelegate;
-(void)displayEngineUpdatedWithError:(id)arg0 ;
-(void)displayEngineStartedToDisplayFrameAt:(struct ? )arg0 ;
-(void)displayEngineIsReadyForDisplay:(BOOL)arg0 ;
-(void)displayEngineDidLayoutSubLayers:(struct CGRect )arg0 ;
-(void)timeLoadedChanged:(id)arg0 ;
-(void)durationChanged:(struct ? )arg0 ;
-(void)playerItemDidWarn:(id)arg0 ;
-(void)playbackDidDryOut;
-(void)playbackDidUndry;
-(void)playerItemDidFail:(id)arg0 ;


@end


#endif