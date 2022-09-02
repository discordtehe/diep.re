// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYER_H
#define FNFPLAYER_H

@protocol FNFPlayerStateUpdateListener;

#import <Foundation/Foundation.h>

@class FNFSynchronousPlayer;
@class FNFAudioQueue;
@protocol FNFSynchronousPlayerDelegate;
@protocol FNFAVPlayer;
@protocol FNFPlayerAudioDecoder;
@protocol FNFAVPlayerItem;

@interface FNFPlayer : NSObject <FNFSynchronousPlayerDelegate, FNFAVPlayer>

 {
    FNFSynchronousPlayer *_synchronousPlayer;
    FNFAudioQueue *_defaultAudioEngine;
    id<FNFPlayerAudioDecoder> *_defaultAudioDecoder;
    NSInteger _status;
    id<FNFAVPlayerItem> *_currentItem;
    float _rate;
    id<FNFPlayerStateUpdateListener> *_stateUpdateListener;
    BOOL _shouldInvalidateDisplayEngineInDealloc;
    BOOL _updateWithPlayRateFromInternalState;
    CGFloat _lastSeekTimeInterval;
    id *_seekThrottlingTimer;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (nonatomic) float rate;
@property (nonatomic, getter=isMuted) BOOL muted;
@property (nonatomic) float volume;
@property (nonatomic) BOOL allowsExternalPlayback;
@property (readonly, nonatomic) NSInteger status;
@property (readonly, nonatomic) NSError *error;


-(id)initWithDisplayEngine:(id)arg0 ;
-(id)initWithDisplayEngine:(id)arg0 config:(struct ? )arg1 asyncTimebase:(BOOL)arg2 enableOpus:(BOOL)arg3 ;
-(id)initWithDisplayEngine:(id)arg0 clock:(id)arg1 config:(struct ? )arg2 asyncTimebase:(BOOL)arg3 enableOpus:(BOOL)arg4 ;
-(void)_applicationWillResignActive;
-(void)_applicationDidBecomeActive;
-(void)play;
-(void)pause;
-(void)setRenderer:(id)arg0 ;
-(void)setCaptionParser:(id)arg0 ;
-(void)setAudioEngine:(id)arg0 ;
-(void)setAudioDecoder:(id)arg0 ;
-(void)replaceCurrentItemWithPlayerItem:(id)arg0 ;
-(void)replaceCurrentItemWithPlayerItem:(id)arg0 loggingContext:(id)arg1 ;
-(void)setLiveTraceManager:(id)arg0 ;
-(id)currentItem;
-(struct ? )currentTime;
-(struct ? )lastStartingTime;
-(struct ? )lastRequestedStartTime;
-(id)addPeriodicTimeObserverForInterval:(struct ? )arg0 queue:(id)arg1 usingBlock:(id)arg2 ;
-(id)addPeriodicTimeObserverForInterval:(struct ? )arg0 queue:(id)arg1 followMasterClock:(BOOL)arg2 usingBlock:(id)arg3 ;
-(void)prepareToSeekWithTime:(struct ? )arg0 handler:(id)arg1 ;
-(void)seekToTime:(struct ? )arg0 ;
-(void)seekToTime:(struct ? )arg0 toleranceBefore:(struct ? )arg1 toleranceAfter:(struct ? )arg2 completionHandler:(id)arg3 ;
-(void)seekToTime:(struct ? )arg0 throttleRate:(CGFloat)arg1 toleranceBefore:(struct ? )arg2 toleranceAfter:(struct ? )arg3 completionHandler:(id)arg4 ;
-(void)_removeSeekThrottlingTimer;
-(BOOL)_hasNotPerformedPreviousSeek;
-(void)_resetLastSeekTimeInterval;
-(void)seekToTime:(struct ? )arg0 toleranceBefore:(struct ? )arg1 toleranceAfter:(struct ? )arg2 ;
-(void)seekToTime:(struct ? )arg0 completionHandler:(id)arg1 ;
-(void)removeTimeObserver:(id)arg0 ;
// -(void)addLevelMeterCallback:(id)arg0 timeInterval:(unk)arg1  ;
-(void)removeLevelMeterCallback;
-(void)addRepresentationChangedCallback:(id)arg0 ;
-(void)invalidate;
-(void)dealloc;
-(void)synchronousPlayer:(id)arg0 stateUpdated:(NSUInteger)arg1 playerState:(struct FNFPlayerInternalState )arg2 loggingContext:(id)arg3 ;
-(void)setPlayerStateUpdateListener:(id)arg0 ;


@end


#endif