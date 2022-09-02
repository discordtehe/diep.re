// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFAUDIOQUEUE_H
#define FNFAUDIOQUEUE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class FNFCoreAudioWrapper;
@protocol FNFPlayerAudioEngine;
@protocol FNFCoreAudioDelegate;

@interface FNFAudioQueue : NSObject <FNFPlayerAudioEngine, FNFCoreAudioDelegate>

 {
    FNFCoreAudioWrapper *_coreAudioWrapper;
    id *_putDataCallback;
    id *_errorCallback;
    AudioStreamBasicDescription _asbd;
    unsigned int _sampleFrameSize;
    unsigned int _minSampleFrameSize;
    AQBufferParameters _bufferParams;
    NSUInteger _state;
    BOOL _hasNoMoreFramesToEnqueue;
    AQBufferState _audioQueueBuffer;
    int _activeBufferIndex;
    NSUInteger _framesEnqueued;
    NSUInteger _buffersReturned;
    NSUInteger _enqueueDataCalls;
    NSObject<OS_dispatch_queue> *_internalQueue;
    float _pendingVolume;
    float _pendingVolumeRampTime;
    float _pendingPlayRate;
    BOOL _deferAudioLevelSetup;
    BOOL _playbackAVSyncPreloadBuffers;
    BOOL _playbackAVSyncAudioQueuePrime;
    BOOL _playbackAVSyncEnqueueBeforeStart;
    BOOL _playbackAVSyncResumeEnqueuing;
    id *_audioLevelCallback;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithPlayerConfig:(struct ? )arg0 ;
// -(void)setAudioStreamBasicDescription:(struct AudioStreamBasicDescription )arg0 extraParameters:(id)arg1 putDataCallback:(id)arg2 bufferUnderrunCallback:(unk)arg3 errorCallback:(id)arg4 sampleFrameSize:(unk)arg5 minSampleFrameSize:(id)arg6  ;
-(void)dealloc;
-(BOOL)isReadyToPlayWithStartTime:(struct ? )arg0 ;
-(void)prepareToPlay;
-(void)playWithStartTime:(struct ? )arg0 ;
-(void)pause;
-(void)stop;
-(void)reset;
-(void)flush;
-(void)invalidate;
-(void)stopLoadingData:(BOOL)arg0 ;
-(void)enableLevelMeteringWithCallback:(id)arg0 ;
-(void)removeLevelMetering;
-(void)resumeEnqueuingData;
-(void)setVolume:(float)arg0 rampTime:(float)arg1 ;
-(void)setRate:(float)arg0 ;
-(void)sendCurrentAudioLevelToCallback;
-(struct ? )getCurrentTime;
-(NSUInteger)_queueState;
-(void)_setQueueState:(NSUInteger)arg0 ;
-(BOOL)_isReadyForPlayback;
-(BOOL)_createAudioQueue;
-(void)_stopAudio;
-(void)_removeAudioQueue;
-(BOOL)_startQueue;
-(void)_readDataIntoBuffer;
-(BOOL)_isAudioErrorFatal:(NSInteger)arg0 ;
-(void)audioQueueDidChangeRunning:(BOOL)arg0 ;
-(void)audioQueueDidError:(id)arg0 withStatus:(int)arg1 ;
-(void)audioQueueDidOutputForBuffer:(struct AudioQueueBuffer *)arg0 ;
+(struct AQBufferParameters )_calculateBufferSizeAndPacketCountWithAsbd:(struct AudioStreamBasicDescription )arg0 frameSize:(unsigned int)arg1 ;


@end


#endif