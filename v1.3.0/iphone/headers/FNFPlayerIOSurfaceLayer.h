// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYERIOSURFACELAYER_H
#define FNFPLAYERIOSURFACELAYER_H


#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@protocol FNFPlayerDisplayLayer;
@protocol FNFPlayerDisplayLayerDelegate;
@protocol FNFAVPlayer;

@interface FNFPlayerIOSurfaceLayer : CALayer <FNFPlayerDisplayLayer>

 {
    CGFloat _preferredRotation;
    CGAffineTransform _preferredTransform;
    NSString *_videoGravity;
    CGSize _presentationSize;
    CGSize _layerSize;
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
-(void)_drawFrameWithPreventPlayback:(BOOL)arg0 ;
-(void)_updateReadyForDisplay:(BOOL)arg0 ;
-(void)setPreferredTransform:(struct CGAffineTransform )arg0 ;


@end


#endif