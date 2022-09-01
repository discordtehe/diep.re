// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYERDISPLAY_H
#define FNFPLAYERDISPLAY_H

@class CALayer<FNFPlayerDisplayLayer>;
@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@class FNFPlayerFramesBuffer;
@class FNFRenderingThread;
@protocol FNFDecompressionSessionDelegate;
@protocol FNFPlayerDisplayLayerDelegate;
@protocol FNFPlayerDisplayEngine;
@protocol FNFDecompressionSession;
@protocol FNFDecompressionSession;
@protocol FNFPlayerDisplayEngineDelegate;

@interface FNFPlayerDisplay : NSObject <FNFDecompressionSessionDelegate, FNFPlayerDisplayLayerDelegate, FNFPlayerDisplayEngine>

 {
    CGAffineTransform _preferredTransform;
    CALayer<FNFPlayerDisplayLayer> *_layer;
    CADisplayLink *_displayLink;
    FNFPlayerFramesBuffer *_framesBuffer;
    id<FNFDecompressionSession> *_decompressionSession;
    id<FNFDecompressionSession> *_previousDecompressionSession;
    id *_dataBlock;
    NSObject<OS_dispatch_queue> *_dataQueue;
    BOOL _requestingData;
    NSError *_layerError;
    BOOL _flushSessionInProgress;
    *OpaqueCMTimebase _controlTimeBase;
    FNFRenderingThread *_renderingThread;
    BOOL _optimizeMemory;
    BOOL _blockPlayWhenNotActive;
    BOOL _allowPlayWhenInactive;
    BOOL _storeLastDisplayedSampleBuffer;
    *__CVBuffer _lastDisplayedSampleBuffer;
    BOOL _requestedResizeDecompressionSession;
    unsigned int _numOfVP9DecoderThreads;
    int _sampleBufferRequestThreshold;
    int _sampleBufferRequestThresholdVP9;
    BOOL _shouldRenderWhilePlaybackPaused;
    BOOL _appActive;
    BOOL _enableDisplaylinkControlOnRenderingThread;
    BOOL _isReadyForDisplay;
    BOOL _displayFirstFrame;
    Class _decompressionSessionFactory;
}


@property (weak, nonatomic) NSObject<FNFPlayerDisplayEngineDelegate> *displayEngineDelegate; // ivar: _displayEngineDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain) *OpaqueCMTimebase controlTimebase;
@property (readonly, nonatomic) NSInteger status;
@property (readonly, nonatomic) NSError *error;
@property (nonatomic) CGAffineTransform preferredTransform;


-(id)initWithConfig:(struct ? )arg0 andLayer:(id)arg1 ;
-(id)initWithConfig:(struct ? )arg0 renderingThread:(id)arg1 framesBuffer:(id)arg2 layer:(id)arg3 ;
-(void)_requestResizeDecompressionSession;
-(void)setRenderingThreadPriority:(CGFloat)arg0 ;
-(void)dispatchSyncOnRenderingThread:(id)arg0 ;
-(void)dispatchAsyncOnRenderingThread:(id)arg0 ;
-(void)_applicationDidBecomeActive:(id)arg0 ;
-(void)didBecomeActive;
-(void)willResignActive;
-(void)_applicationWillResignActive:(id)arg0 ;
-(void)setRenderer:(id)arg0 ;
-(void)resume;
-(void)pause:(int)arg0 ;
-(void)pauseDisplayLink;
-(void)_pauseDisplayLink:(BOOL)arg0 ;
-(void)_displayLinkCallback:(id)arg0 ;
// -(void)requestLastDisplayedSampleBuffer:(id)arg0 onQueue:(unk)arg1  ;
// -(void)_requestLastDisplayedSampleBuffer:(id)arg0 onQueue:(unk)arg1  ;
-(void)_tryToMoveToNextFrameWithDrawingOn:(BOOL)arg0 isFirstFrame:(BOOL)arg1 ;
-(BOOL)flushDisplayReadySampleBuffers;
-(void)_releaseTimeBase;
-(void)invalidate;
-(void)dealloc;
-(BOOL)flushIfError;
-(BOOL)allowRenderingWhileApplicationInactive;
-(void)stopRequestingMediaData;
-(void)_resetRendering;
-(void)flushAndRemoveImage;
-(BOOL)seekFrameUpdatesFinished;
-(void)setNeedsDisplayFrame;
-(void)flush;
-(void)requestMediaDataWhenReadyOnQueue:(id)arg0 usingBlock:(id)arg1 ;
-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg0 presentationTimeStamp:(struct ? )arg1 presentationDuration:(struct ? )arg2 iFrame:(NSUInteger)arg3 ;
-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg0 presentationTimeStamp:(struct ? )arg1 presentationDuration:(struct ? )arg2 ;
-(void)_displayFirstFrameWithPresentationTimeStamp:(struct ? )arg0 ;
-(struct CGSize )_decodeSizeForVideoSize:(struct CGSize )arg0 layerSize:(struct CGSize )arg1 scale:(CGFloat)arg2 ;
-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg0 attributes:(unsigned int)arg1 ;
-(BOOL)isReadyForMoreMediaData;
-(void)_requestData;
-(void)handleDecompressionSessionError:(id)arg0 ;
-(void)handleDecompressionSessionError:(id)arg0 ifIFrameStillValid:(NSUInteger)arg1 ;
-(void)_handleError:(id)arg0 ifIFrameStillValid:(NSUInteger)arg1 ;
-(void)_handleError:(id)arg0 ;
-(BOOL)_preventPlayback;
-(void)_clearBuffers;
-(void)displayLayerDidLayoutSublayers;
-(void)displayLayerIsReadyForDisplay:(BOOL)arg0 ;


@end


#endif