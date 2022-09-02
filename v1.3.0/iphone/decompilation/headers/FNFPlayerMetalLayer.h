// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYERMETALLAYER_H
#define FNFPLAYERMETALLAYER_H


#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@protocol FNFPlayerDisplayLayer;
@protocol FNFPlayerMetalRenderer;
@protocol FNFPlayerMetalRenderer;
@protocol FNFPlayerMetalRenderer;
@protocol FNFPlayerDisplayLayerDelegate;
@protocol FNFAVPlayer;

@interface FNFPlayerMetalLayer : CAMetalLayer <FNFPlayerDisplayLayer>

 {
    id<FNFPlayerMetalRenderer> *_renderer;
    id<FNFPlayerMetalRenderer> *_detachedRenderer;
    id<FNFPlayerMetalRenderer> *_defaultRenderer;
    *__CVBuffer _lumaTexture;
    *__CVBuffer _chromaTexture;
    *__CVMetalTextureCache _videoTextureCache;
    CGFloat _preferredRotation;
    CGAffineTransform _preferredTransform;
    NSString *_videoGravity;
    CGSize _presentationSize;
    CGSize _layerSize;
    NSInteger _preferredConversion;
    BOOL _isReadyForDisplay;
    BOOL _layoutChanged;
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
-(void)setRenderer:(id)arg0 ;
-(void)initializeDisplayLayer;
-(void)displayPixelBuffer:(struct __CVBuffer *)arg0 preferredTransform:(struct CGAffineTransform )arg1 preventPlayback:(BOOL)arg2 ;
-(void)displayEmptyBuffer:(BOOL)arg0 preventPlayback:(BOOL)arg1 lastDisplayedSampleBuffer:(struct __CVBuffer *)arg2 ;
-(void)updateDisplayLayer;
-(void)flushDisplayLayer:(BOOL)arg0 ;
-(void)clearBuffers;
-(void)resetRendering;
-(struct CGAffineTransform )preferredTransform;
-(void)setPreferredTransform:(struct CGAffineTransform )arg0 ;
-(void)_updateReadyForDisplay:(BOOL)arg0 ;
-(void)_resetMetalContext:(BOOL)arg0 ;
-(void)_cleanUpTextures;
-(void)_drawFrame:(BOOL)arg0 preventPlayback:(BOOL)arg1 ;


@end


#endif