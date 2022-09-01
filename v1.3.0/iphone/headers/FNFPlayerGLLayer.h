// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYERGLLAYER_H
#define FNFPLAYERGLLAYER_H


#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/OpenGLES.h>
#import <Foundation/Foundation.h>

@protocol FNFPlayerDisplayLayer;
@protocol FNFPlayerGLRenderer;
@protocol FNFPlayerGLRenderer;
@protocol FNFPlayerGLRenderer;
@protocol FNFPlayerDisplayLayerDelegate;
@protocol FNFAVPlayer;

@interface FNFPlayerGLLayer : CAEAGLLayer <FNFPlayerDisplayLayer>

 {
    EAGLContext *_context;
    int _backingWidth;
    int _backingHeight;
    unsigned int _frameBufferHandle;
    unsigned int _colorBufferHandle;
    *__CVBuffer _lumaTexture;
    *__CVBuffer _chromaTexture;
    *__CVOpenGLESTextureCache _videoTextureCache;
    NSInteger _preferredConversion;
    CGFloat _preferredRotation;
    CGAffineTransform _preferredTransform;
    CGSize _presentationSize;
    CGSize _layerSize;
    id<FNFPlayerGLRenderer> *_renderer;
    id<FNFPlayerGLRenderer> *_detachedRenderer;
    id<FNFPlayerGLRenderer> *_defaultRenderer;
    NSString *_videoGravity;
    BOOL _layoutChanged;
    BOOL _isReadyForDisplay;
    BOOL _needsToSetupGLState;
    BOOL _glInitialized;
    BOOL _supportOpenGLTextureRg;
    BOOL _shouldApplyRotationTransform;
}


@property (weak, nonatomic) NSObject<FNFPlayerDisplayLayerDelegate> *displayLayerDelegate; // ivar: _displayLayerDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) NSObject<FNFAVPlayer> *player;
@property (readonly, nonatomic, getter=isReadyForDisplay) BOOL readyForDisplay;
@property (readonly, nonatomic) CGSize presentationSize;
@property (copy, nonatomic) NSString *videoGravity;


-(id)initWithConfig:(struct ? )arg0 ;
-(void)layoutSublayers;
-(void)_updateReadyForDisplay:(BOOL)arg0 ;
-(void)setRenderer:(id)arg0 ;
-(void)displayPixelBuffer:(struct __CVBuffer *)arg0 preferredTransform:(struct CGAffineTransform )arg1 preventPlayback:(BOOL)arg2 ;
-(void)initializeDisplayLayer;
-(void)_setupBuffers;
-(void)_destroyBuffers;
-(void)_cleanUpTextures;
-(void)clearBuffers;
-(void)resetRendering;
-(void)_drawFrame:(BOOL)arg0 preventPlayback:(BOOL)arg1 ;
-(void)updateDisplayLayer;
-(void)displayEmptyBuffer:(BOOL)arg0 preventPlayback:(BOOL)arg1 lastDisplayedSampleBuffer:(struct __CVBuffer *)arg2 ;
-(void)flushDisplayLayer:(BOOL)arg0 ;
-(struct CGAffineTransform )preferredTransform;
-(void)setPreferredTransform:(struct CGAffineTransform )arg0 ;


@end


#endif