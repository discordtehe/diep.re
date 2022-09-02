// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMOTIONSTREAK_H
#define CCMOTIONSTREAK_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCTexture2D;
@protocol CCTextureProtocol;

@interface CCMotionStreak : CCNodeRGBA <CCTextureProtocol>

 {
    CGPoint _positionR;
    float _stroke;
    float _fadeDelta;
    float _minSeg;
    NSUInteger _maxPoints;
    NSUInteger _nuPoints;
    NSUInteger _previousNuPoints;
    *CGPoint _pointVertexes;
    *float _pointState;
    *_ccVertex2F _vertices;
    char * _colorPointer;
    *_ccTex2F _texCoords;
    BOOL _startingPositionInitialized;
    BOOL _mcRenderJobIsDirty;
}


@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (nonatomic, getter=isFastMode) BOOL fastMode; // ivar: _fastMode
@property (retain, nonatomic) CCTexture2D *texture; // ivar: _texture
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFade:(float)arg0 minSeg:(float)arg1 width:(float)arg2 color:(struct _ccColorThreeB )arg3 textureFilename:(id)arg4 ;
-(id)initWithFade:(float)arg0 minSeg:(float)arg1 width:(float)arg2 color:(struct _ccColorThreeB )arg3 texture:(id)arg4 ;
-(void)setPosition:(struct CGPoint )arg0 ;
-(void)tintWithColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(unsigned char)opacity;
-(void)update:(CGFloat)arg0 ;
-(void)reset;
-(void)draw;
-(void)dealloc;
+(id)streakWithFade:(float)arg0 minSeg:(float)arg1 width:(float)arg2 color:(struct _ccColorThreeB )arg3 textureFilename:(id)arg4 ;
+(id)streakWithFade:(float)arg0 minSeg:(float)arg1 width:(float)arg2 color:(struct _ccColorThreeB )arg3 texture:(id)arg4 ;


@end


#endif