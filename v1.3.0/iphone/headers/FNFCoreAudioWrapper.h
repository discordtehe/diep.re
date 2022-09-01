// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFCOREAUDIOWRAPPER_H
#define FNFCOREAUDIOWRAPPER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol FNFCoreAudioDelegate;

@interface FNFCoreAudioWrapper : NSObject {
    *OpaqueAudioQueue _audioQueue;
    *OpaqueAudioQueueTimeline _timeline;
    AudioStreamBasicDescription _asbd;
    *AudioQueueLevelMeterState _levels;
    unsigned int _levelSize;
    NSObject<OS_dispatch_queue> *_internalQueue;
    id<FNFCoreAudioDelegate> *_delegate;
}




-(id)initWithStreamDescription:(struct AudioStreamBasicDescription )arg0 andDelegate:(id)arg1 andQueue:(id)arg2 ;
-(void)dealloc;
-(void)_handleErrorForCode:(int)arg0 andStatus:(int)arg1 ;
-(struct OpaqueAudioQueue *)queueRef;
-(id)dispatchQueue;
-(void)_setDelegate:(id)arg0 ;
-(id)delegate;
-(BOOL)setTimePitchEnabled:(BOOL)arg0 ;
-(void)reset;
-(void)pause;
-(void)stopImmediately:(unsigned char)arg0 ;
-(BOOL)startWithTimestamp:(struct AudioTimeStamp *)arg0 ;
-(void)releaseBuffer:(struct AudioQueueBuffer *)arg0 ;
-(void)flush;
-(void)invalidate;
-(void)setVolume:(float)arg0 ;
-(void)setVolume:(float)arg0 withRampTime:(float)arg1 ;
-(void)setLevelMeteringEnabled:(BOOL)arg0 ;
-(void)setRate:(float)arg0 ;
-(void)_cleanupLevelMetering;
-(struct AudioQueueLevelMeterState *)currentLevelMeterState;
-(unsigned int)levelMeterStateLength;
-(struct ? )currentTime;
-(struct AudioQueueBuffer *)bufferWithParams:(struct AQBufferParameters )arg0 ;
-(BOOL)enqueueBuffer:(struct AudioQueueBuffer *)arg0 withStartTime:(struct AudioTimeStamp *)arg1 andFramesToTrim:(unsigned int)arg2 outStartTime:(struct AudioTimeStamp *)arg3 ;
-(BOOL)primeAudioQueue;
-(void)_audioQueueIsRunningCallback:(struct OpaqueAudioQueue *)arg0 ;
-(void)_audioQueueConverterErrorCallback:(struct OpaqueAudioQueue *)arg0 ;
-(void)audioQueueConverterOutputCallback:(struct OpaqueAudioQueue *)arg0 forBuffer:(struct AudioQueueBuffer *)arg1 ;


@end


#endif