// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYERLAYER_H
#define FNFPLAYERLAYER_H

@protocol OS_dispatch_queue;

#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/OpenGLES.h>
#import <Foundation/Foundation.h>

@class FNFPlayerFramesBuffer;
@class FNFRenderingThread;
@protocol FNFDecompressionSessionDelegate;
@protocol FNFPlayerDisplayEngine;
@protocol FNFAVPlayerLayer;
@protocol FNFPlayerGLRenderer;
@protocol FNFPlayerGLRenderer;
@protocol FNFPlayerGLRenderer;
@protocol FNFDecompressionSession;
@protocol FNFDecompressionSession;
@protocol FNFPlayerDisplayEngineDelegate;
@protocol FNFAVPlayer;

@interface FNFPlayerLayer : CAEAGLLayer <FNFDecompressionSessionDelegate, FNFPlayerDisplayEngine, FNFAVPlayerLayer>

 {
    id<FNFPlayerGLRenderer> *_renderer;
    id<FNFPlayerGLRenderer> *_detachedRenderer;
    id<FNFPlayerGLRenderer> *_defaultRenderer;
    int _backingWidth;
    int _backingHeight;
    EAGLContext *_context;
    *__CVBuffer _lumaTexture;
    *__CVBuffer _chromaTexture;
    *__CVOpenGLESTextureCache _videoTextureCache;
    unsigned int _frameBufferHandle;
    unsigned int _colorBufferHandle;
    NSInteger _preferredConversion;
    CGFloat _preferredRotation;
    CGAffineTransform _preferredTransform;
    CADisplayLink *_displayLink;
    NSString *_videoGravity;
    BOOL _shouldRenderWhilePlaybackPaused;
    BOOL _needsToSetupGLState;
    BOOL _layoutChanged;
    BOOL _glInitialized;
    CGSize _presentationSize;
    CGSize _layerSize;
    BOOL _isReadyForDisplay;
    BOOL _supportOpenGLTextureRg;
    FNFPlayerFramesBuffer *_framesBuffer;
    id<FNFDecompressionSession> *_decompressionSession;
    id<FNFDecompressionSession> *_previousDecompressionSession;
    id *_dataBlock;
    NSObject<OS_dispatch_queue> *_dataQueue;
    BOOL _requestingData;
    NSError *_layerError;
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
    BOOL _appActive;
    BOOL _enableDisplaylinkControlOnRenderingThread;
    Class _decompressionSessionFactory;
    BOOL _displayFirstFrame;
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
@property (retain, nonatomic) NSObject<FNFAVPlayer> *player;
@property (readonly, nonatomic, getter=isReadyForDisplay) BOOL readyForDisplay;
@property (readonly, nonatomic) CGSize presentationSize;
@property (copy, nonatomic) NSString *videoGravity;


-(id)initWithConfig:(struct ? )arg0 ;
-(id)initWithConfig:(struct ? )arg0 renderingThread:(id)arg1 framesBuffer:(id)arg2 ;
-(void)_requestResizeDecompressionSession;
-(void)setRenderingThreadPriority:(CGFloat)arg0 ;
-(void)dispatchSyncOnRenderingThread:(id)arg0 ;
-(void)dispatchAsyncOnRenderingThread:(id)arg0 ;
-(void)_applicationDidBecomeActive:(id)arg0 ;
-(void)didBecomeActive;
-(void)willResignActive;
-(void)_applicationWillResignActive:(id)arg0 ;
-(void)setRenderer:(id)arg0 ;
-(void)_setRenderer:(id)arg0 ;
-(void)resume;
-(void)pause:(int)arg0 ;
-(void)pauseDisplayLink;
-(void)_pauseDisplayLink:(BOOL)arg0 ;
-(void)layoutSublayers;
-(void)_displayLinkCallback:(id)arg0 ;
// -(void)requestLastDisplayedSampleBuffer:(id)arg0 onQueue:(unk)arg1  ;
// -(void)_requestLastDisplayedSampleBuffer:(id)arg0 onQueue:(unk)arg1  ;
-(void)_tryToMoveToNextFrameWithDrawingOn:(BOOL)arg0 isFirstFrame:(BOOL)arg1 ;
-(BOOL)flushDisplayReadySampleBuffers;
-(void)_setupGL;
-(void)_setupBuffers;
-(void)_destroyBuffers;
-(void)_cleanUpTextures;
-(void)_clearBuffers;
-(void)_releaseTimeBase;
-(void)invalidate;
-(void)dealloc;
-(void)displayPixelBuffer:(struct __CVBuffer *)arg0 ;
-(void)_drawFrame:(BOOL)arg0 ;
-(BOOL)flushIfError;
-(BOOL)allowRenderingWhileApplicationInactive;
-(void)stopRequestingMediaData;
-(void)_resetGLContext;
-(void)flushAndRemoveImage;
-(BOOL)seekFrameUpdatesFinished;
-(void)setNeedsDisplayFrame;
-(void)flush;
-(void)requestMediaDataWhenReadyOnQueue:(id)arg0 usingBlock:(id)arg1 ;
-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg0 presentationTimeStamp:(struct ? )arg1 presentationDuration:(struct ? )arg2 iFrame:(NSUInteger)arg3 ;
-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg0 presentationTimeStamp:(struct ? )arg1 presentationDuration:(struct ? )arg2 ;
-(void)_displayFirstFrameWithPresentationTimeStamp:(struct ? )arg0 ;
-(struct CGSize )_decodeSizeForVideoSize:(struct CGSize )arg0 ;
-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg0 attributes:(unsigned int)arg1 ;
-(BOOL)isReadyForMoreMediaData;
-(void)_requestData;
-(void)handleDecompressionSessionError:(id)arg0 ;
-(void)handleDecompressionSessionError:(id)arg0 ifIFrameStillValid:(NSUInteger)arg1 ;
-(void)_handleError:(id)arg0 ifIFrameStillValid:(NSUInteger)arg1 ;
-(void)_handleError:(id)arg0 ;
-(void)_updateReadyForDisplay:(BOOL)arg0 ;
-(BOOL)_preventPlayback;


@end


#endif