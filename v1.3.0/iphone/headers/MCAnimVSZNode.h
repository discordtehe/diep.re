// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMVSZNODE_H
#define MCANIMVSZNODE_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCSpriteFrame;
@class MCAnimVSZData;
@class CCTexture2D;
@protocol CCBlendProtocol;

@interface MCAnimVSZNode : CCNodeRGBA <CCBlendProtocol>

 {
    kmMat4 uvTransform;
    kmMat4 vertexTransform;
    BOOL definedVertexTransform;
    int _numRepeatTimes;
    int _stoppingAtFrame;
    CCSpriteFrame *_spriteFrame;
    int _frameCount;
    float _frameDt;
    SEL _vszAnimationEndedSelector;
    BOOL opacityModifyRGB_;
    _ccColorThreeB _modifiedColor;
    CGRect mBox;
    CGRect mFirstFrameBox;
    BOOL mDirtyBBox;
    int mPlayDirection;
    BOOL mInvertDirection;
    _ccV3F_C4B_T2F_Quad _quad;
}


@property (readonly, nonatomic) CGRect boundingBox;
@property (readonly, nonatomic) CGRect firstFrameBoundingBox;
@property (readonly, nonatomic) MCAnimVSZData *currentVSZAnimation; // ivar: _currentVSZAnimation
@property (nonatomic) BOOL isRunningVsz; // ivar: _isRunningVsz
@property (retain, nonatomic) CCTexture2D *texture; // ivar: _texture
@property (nonatomic) id *delegate; // ivar: _delegate
@property (nonatomic) float speed; // ivar: _speed
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: blendFunc_
@property (nonatomic) BOOL additiveTint; // ivar: mAdditiveTint
@property (nonatomic) BOOL fullTint; // ivar: mfullTint
@property (readonly, nonatomic) unsigned int currentFrame;
@property (readonly, nonatomic) BOOL isReversed;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setAnimationEndedDelegate:(id)arg0 selector:(SEL)arg1 ;
-(id)init;
-(struct CGPoint )center;
-(void)setVertexTransform:(struct CGAffineTransform )arg0 ;
-(void)setUVTransform:(struct CGAffineTransform )arg0 ;
-(void)setNewAnimationData:(id)arg0 ;
-(void)setNewAnimationData:(id)arg0 ignoreTexture:(BOOL)arg1 ;
-(void)setNewTextureFromSpriteFrame:(id)arg0 ;
-(void)setSpriteFrameOffset;
-(void)setNewActualTexture:(id)arg0 ;
-(void)setNewTexture:(id)arg0 ;
-(id)initWithAnimationData:(id)arg0 ;
-(id)initWithAnimationData:(id)arg0 ignoreTexture:(BOOL)arg1 ;
-(void)onEnter;
-(void)onExit;
-(void)dealloc;
-(void)playNewAnimationData:(id)arg0 ;
-(void)play:(int)arg0 ;
-(void)play:(int)arg0 stoppingAtFrame:(int)arg1 ;
-(void)play;
-(void)playLooped;
-(void)playLoopedPing;
-(void)playLoopedPing:(int)arg0 ;
-(void)setReversedStoppingAtFrame:(int)arg0 ;
-(void)setReversedStoppingAtFrame:(int)arg0 fromBegining:(BOOL)arg1 ;
-(void)playNewAnimationDataReversed:(id)arg0 ;
-(void)playReversed:(int)arg0 ;
-(void)playReversed:(int)arg0 stoppingAtFrame:(int)arg1 ;
-(void)playReversed;
-(void)playReversedFromBegining:(BOOL)arg0 ;
-(void)playReversedLooped;
-(void)stop;
-(void)reset;
-(BOOL)setFrame:(unsigned int)arg0 ;
-(BOOL)setFrameAtProgress:(float)arg0 ;
-(unsigned int)framesCount;
-(BOOL)isLooped;
-(unsigned int)repeatTimesRemaining;
-(void)makeDrawCallR:(unsigned int)arg0 ;
-(void)draw;
-(void)animationEnded;
-(void)update:(CGFloat)arg0 ;
-(void)updateColor;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)setOpacityModifyRGB:(BOOL)arg0 ;
-(BOOL)doesOpacityModifyRGB;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)calculateFirstFrameBoundingBox;
-(void)calculateOwnBoundingBox;
-(void)calculateBoundingBox;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)detachChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)insertChild:(id)arg0 z:(int)arg1 ;
-(void)forceBBoxRecalculation;
-(id)defaultTexturePath;
+(id)vszAnimationNodeWithAnimationName:(id)arg0 ;
+(id)vszAnimationNodeWithAnimationName:(id)arg0 ignoreTexture:(BOOL)arg1 ;
+(id)vszAnimationNodeWithAnimation:(id)arg0 ;
+(id)vszAnimationNodeWithAnimation:(id)arg0 ignoreTexture:(BOOL)arg1 ;


@end


#endif