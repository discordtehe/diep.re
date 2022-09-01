// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSPRITE_H
#define CCSPRITE_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCSpriteBatchNode;
@class CCTexture2D;
@class CCGLProgram;
@class CCTextureAtlas;
@protocol CCTextureProtocol;

@interface CCSprite : CCNodeRGBA <CCTextureProtocol>

 {
    BOOL _mcRenderJobIsDirty;
    *Shader _mcEmissionOldShader;
    CCSpriteBatchNode *_batchNode;
    CGAffineTransform _transformToBatch;
    BOOL _recursiveDirty;
    BOOL _hasChildren;
    BOOL _shouldBeHidden;
    CCTexture2D *_texture;
    CGPoint _unflippedOffsetPositionFromCenter;
    BOOL _opacityModifyRGB;
    BOOL _flipX;
    BOOL _flipY;
    int _emissionUniform;
    float _emissionColor;
    BOOL _emissionEnabled;
    CCGLProgram *_emissionOldShaderProgram;
}


@property (nonatomic) BOOL dirty; // ivar: _dirty
@property (readonly, nonatomic) _ccV3F_C4B_T2F_Quad quad; // ivar: _quad
@property (nonatomic) NSUInteger atlasIndex; // ivar: _atlasIndex
@property (readonly, nonatomic) CGRect textureRect; // ivar: _rect
@property (readonly, nonatomic) BOOL textureRectRotated; // ivar: _rectRotated
@property (nonatomic) BOOL flipX;
@property (nonatomic) BOOL flipY;
@property (nonatomic) CCTextureAtlas *textureAtlas; // ivar: _textureAtlas
@property (nonatomic) CCSpriteBatchNode *batchNode;
@property (readonly, nonatomic) CGPoint offsetPosition; // ivar: _offsetPosition
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (retain, nonatomic) NSString *emissionShaderName; // ivar: _emissionShaderName
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithBatchNode:(id)arg0 rect:(struct CGRect )arg1 ;
-(id)displayedFrame;
-(id)init;
-(id)initWithTexture:(id)arg0 rect:(struct CGRect )arg1 rotated:(BOOL)arg2 ;
-(id)initWithTexture:(id)arg0 rect:(struct CGRect )arg1 ;
-(id)initWithTexture:(id)arg0 ;
-(id)initWithFile:(id)arg0 ;
-(id)initWithFile:(id)arg0 rect:(struct CGRect )arg1 ;
-(id)initWithFileAssync:(id)arg0 callbackToBeCalled:(id)arg1 ;
-(id)initWithSpriteFrame:(id)arg0 ;
-(id)initWithSpriteFrameName:(id)arg0 ;
-(void)dealloc;
-(void)setVertexRect:(struct CGRect )arg0 ;
-(void)setTextureCoords:(struct CGRect )arg0 ;
-(void)updateTransform;
-(void)calculateCustomShaderUniform;
-(void)draw;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)reorderChild:(id)arg0 z:(NSInteger)arg1 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)sortAllChildren;
-(void)setReorderChildDirtyRecursively;
-(void)setPosition:(struct CGPoint )arg0 ;
-(void)setRotation:(float)arg0 ;
-(void)setRotationX:(float)arg0 ;
-(void)setRotationY:(float)arg0 ;
-(void)setSkewX:(float)arg0 ;
-(void)setSkewY:(float)arg0 ;
-(void)setScaleX:(float)arg0 ;
-(void)setScaleY:(float)arg0 ;
-(void)setScale:(float)arg0 ;
-(void)setVertexZ:(float)arg0 ;
-(void)setAnchorPoint:(struct CGPoint )arg0 ;
-(void)setIgnoreAnchorPointForPosition:(BOOL)arg0 ;
-(void)setVisible:(BOOL)arg0 ;
-(void)updateColor;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)setOpacityModifyRGB:(BOOL)arg0 ;
-(BOOL)doesOpacityModifyRGB;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)updateEmission;
-(void)setEmission:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedEmission:(struct _ccColorThreeB )arg0 ;
-(void)setDisplayFrame:(id)arg0 ;
-(void)setDisplayFrameWithAnimationName:(id)arg0 index:(int)arg1 ;
-(BOOL)isFrameDisplayed:(id)arg0 ;
-(id)displayFrame;
-(void)updateBlendFunc;
-(void)setTexture:(id)arg0 ;
-(id)texture;
+(id)spriteWithBatchNode:(id)arg0 rect:(struct CGRect )arg1 ;
+(id)spriteWithTexture:(id)arg0 ;
+(id)spriteWithTexture:(id)arg0 rect:(struct CGRect )arg1 ;
+(id)spriteWithFile:(id)arg0 ;
+(id)spriteWithFile:(id)arg0 rect:(struct CGRect )arg1 ;
+(id)spriteWithSpriteFrame:(id)arg0 ;
+(id)spriteWithSpriteFrameName:(id)arg0 ;


@end


#endif